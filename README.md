# ResumeScanner
An iOS app that utilizes computer vision and machine learning to parse information from resumes so recruiters can have an easier time organizing career fair candidates.

### Description
This application is intended to be used by recruiters @ career fairs to scan resumes in place of collecting a stack of papers by the end of the day. The purpose is two-fold:

1) To allow for easier organization of resumes into an exportable format (csv) to import into their ATS
2) To parse resumes into sortable information (School, major, class year, gpa, etc). A picture of the resume will be store in the database in case of bad parsing

### Authentication
As of right now, this application uses firebase to authenticate users after they create an account.

#Additional Features
1) Locate keywords in resume across multiple sections
2) Weighted matching of job description with keyowrds
3) ML to match resumes keywords with job descriptions

#Backend
To use this application to parse uploaded resumes and curate new jobs for users based off of their resumes
