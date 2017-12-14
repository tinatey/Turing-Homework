import GUI

View.Set ("graphics:800;400,nobuttonbar")

var quitButton: int
var jobDescription, jobTitles, jobDuties, employersPage: int
var wagesPage, marketOutlook: int
var educationrequirements, home: int

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

jobDescription:= GUI.CreateButton(10, 220, 0, "Typical Job Descriptions", description)
home:= GUI.CreateButtonFull(10, 250, GUI.GetWidth(jobDescription), "NOC 2175: Web Designer", homepage, 140, '^H', true)
jobTitles:= GUI.CreateButton(10, 190, 0, "Typical Job Titles", titles)
jobDuties:= GUI.CreateButton(10, 160, 0, "Typical Job Duties", duties)
employersPage:= GUI.CreateButton(10, 130, 0, "Types Of Employers", employerspage) %include Examples Of Employers
wagesPage:= GUI.CreateButton(10, 100, 0, "Typical Offered Wages", wages) %include median wage
marketOutlook:= GUI.CreateButton(10, 70, 0, "Market Outlook", marketoutlook)
educationrequirements:= GUI.CreateButton(10, 40, 0, "Job Requirements", requirements) %include Market Education
quitButton:= GUI.CreateButton(10, 10, 0, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
