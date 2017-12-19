import GUI

View.Set ("graphics:800;500,nobuttonbar")

const BUTTONS := 10

var heightButton : int := maxy div (BUTTONS + 1)
var widthButton : int := 200

var yButton : array 1 .. BUTTONS of int
for i : 1 .. BUTTONS
    if i = 1 then
	yButton (i) := maxy - heightButton * 2
    else
	yButton (i) := yButton (i - 1) - heightButton
    end if
end for

var quitButton : int
var jobDescription, jobTitles, jobDuties, employersPage : int
var wagesPage, marketOutlook : int
var jobRequirements, home, ref : int
var textboxLabel, textbox : int
var picID : int
var font1 : int := Font.New ("serif:13")

procedure ShowHideTextbox (visible : boolean)
    GUI.ClearText (textbox)
    GUI.SetLabel (textboxLabel, "")
    cls
    if visible then
	GUI.Show (textboxLabel)
	GUI.Show (textbox)
    else
	GUI.Hide (textboxLabel)
	GUI.Hide (textbox)
    end if
    GUI.Refresh
end ShowHideTextbox

procedure ViewFile (title : string, filename : string)
    var fileNumber : int   % The stream number of the file.
    var line : string      % Lines to be read from the file.

    ShowHideTextbox (true)
    GUI.SetLabel (textboxLabel, title)

    % Open and read file
    open : fileNumber, filename, get

    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    GUI.AddLine (textbox, line)
	end loop
	GUI.SetTopLine (textbox, 1)
	close : fileNumber
    else
	var error : string := Error.LastMsg
	GUI.AddLine (textbox, "Unable to open " + filename + ":")
	GUI.AddLine (textbox, error)
    end if
end ViewFile

procedure homepage
    ShowHideTextbox (false)
    picID := Pic.FileNew ("noc2175logo.jpg") % 400 X 350
    Pic.Draw (picID, widthButton + 20 + (maxx - (widthButton + 20)) div 2 - 200, (maxy - 20) div 2 - 175, picCopy)
    Pic.Free (picID)
end homepage

procedure description
    ViewFile ("Typical Job Description", "1_Typical_Job_Description.txt")
end description

procedure titles
    ViewFile ("Typical Job Titles", "2_Typical_Job_Titles.txt")
end titles

procedure duties
    ViewFile ("Typical Job Duties", "3_Typical_Job_Duties.txt")
end duties

procedure employerspage
    ViewFile ("Types Of Employers", "4_Types_Of_Employers.txt")
end employerspage

procedure wages
    ViewFile ("Typical Offered Wages", "5_Typical_Offered_Wages.txt")
end wages

procedure marketoutlook
    ViewFile ("Job Market Outlook", "6_Job_Market_Outlook.txt")
end marketoutlook

procedure requirements
    ViewFile ("Job Requirements", "7_Job_Requirements.txt")
end requirements

procedure references
end references

procedure theEnd
    ShowHideTextbox (false)
    picID := Pic.FileNew ("noc2175logo.jpg") % 400 X 350
    Pic.Draw (picID, maxx div 2 - 200, (maxy - 20) div 2 - 175, picCopy)
    Pic.Free (picID)
end theEnd

procedure quitnow
   
    GUI.Hide (home)
    GUI.Hide (jobDescription)
    GUI.Hide (jobTitles)
    GUI.Hide (jobDuties)
    GUI.Hide (employersPage)
    GUI.Hide (wagesPage)
    GUI.Hide (marketOutlook)
    GUI.Hide (jobRequirements)
    GUI.Hide (ref)
    GUI.Hide (quitButton)

    theEnd
    
    GUI.Quit
end quitnow

home := GUI.CreateButtonFull (10, yButton (1), widthButton, "NOC 2175: Web Designer", homepage, heightButton * 2, '^A', false)
jobDescription := GUI.CreateButtonFull (10, yButton (2), widthButton, "Typical Job Description", description, heightButton, '^B', false)
jobTitles := GUI.CreateButtonFull (10, yButton (3), widthButton, "Typical Job Titles", titles, heightButton, '^C', false)
jobDuties := GUI.CreateButtonFull (10, yButton (4), widthButton, "Typical Job Duties", duties, heightButton, '^D', false)
employersPage := GUI.CreateButtonFull (10, yButton (5), widthButton, "Types Of Employers", employerspage, heightButton, '^E', false) %includes Examples Of Employers
wagesPage := GUI.CreateButtonFull (10, yButton (6), widthButton, "Typical Offered Wages", wages, heightButton, '^F', false) %includes median wage
marketOutlook := GUI.CreateButtonFull (10, yButton (7), widthButton, "Job Market Outlook", marketoutlook, heightButton, '^G', false)
jobRequirements := GUI.CreateButtonFull (10, yButton (8), widthButton, "Job Requirements", requirements, heightButton, '^H', false) %includes Market Education
ref := GUI.CreateButtonFull (10, yButton (9), widthButton, "References", references, heightButton, '^J', false)
quitButton := GUI.CreateButtonFull (10, yButton (10), widthButton, "Quit", quitnow, heightButton, '^Q', false)


% Create the title label and a text box.
textboxLabel := GUI.CreateLabel (widthButton + 20, maxy - 10 * 3, "")
textbox := GUI.CreateTextBoxFull (widthButton + 20, 10, maxx - widthButton - 10 * 3, maxy - 50, GUI.INDENT, font1)


ShowHideTextbox (false)

homepage

loop
    exit when GUI.ProcessEvent
end loop
