import GUI

View.Set ("graphics:800;900,nobuttonbar")

var quitButton: int
var jobDescription, jobTitles, jobDuties, employersPage: int
var wagesPage, marketOutlook: int
var educationrequirements, home: int

%var picID : int
%picID := Pic.FileNew ("horse.jpg")
%Pic.Draw (picID, 10, 10, picCopy)
%Pic.Free (picID)

procedure homepage
end homepage

procedure description
end description

procedure titles
end titles

procedure duties
end duties

procedure employerspage
end employerspage

procedure wages
end wages

procedure marketoutlook
end marketoutlook

procedure requirements
end requirements


%1st row
home:= GUI.CreateButton(10, 50, 0, "NOC 2175: Web Designer", homepage)
jobDescription:= GUI.CreateButton(GUI.GetX(home)+GUI.GetWidth(home)+20, GUI.GetY(home), 0, "Typical Job Descriptions", description)
jobTitles:= GUI.CreateButton(GUI.GetX(jobDescription)+GUI.GetWidth(jobDescription)+20, GUI.GetY(jobDescription), 0, "Typical Job Titles", titles)
jobDuties:= GUI.CreateButton(GUI.GetX(jobTitles)+GUI.GetWidth(jobTitles)+20, GUI.GetY(jobTitles), 0, "Typical Job Duties", duties)

%2nd row
employersPage:= GUI.CreateButton(10, GUI.GetY(home)-40, 0, "Types Of Employers", employerspage) %include Examples Of Employers
wagesPage:= GUI.CreateButton(GUI.GetX(employersPage)+GUI.GetWidth(employersPage)+20, GUI.GetY(employersPage), 0, "Typical Offered Wages", wages) %include median wage
marketOutlook:= GUI.CreateButton(GUI.GetX(wagesPage)+GUI.GetWidth(wagesPage)+20, GUI.GetY(wagesPage), 0, "Market Outlook", marketoutlook)
educationrequirements:= GUI.CreateButton(GUI.GetX(marketOutlook)+GUI.GetWidth(marketOutlook)+20, GUI.GetY(marketOutlook), 0, "Job Requirements", requirements) %include Market Education
quitButton:= GUI.CreateButton(GUI.GetX(educationrequirements)+GUI.GetWidth(educationrequirements)+20, GUI.GetY(educationrequirements), 0, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
