\ProvidesClass{projectstatement}[2023/09/30 v1.0 Project Statement Class for Applications]
\LoadClass[11pt]{article} % Base class

\ProvidesClass{projectstatement}[2023/09/30 v1.0 Project Statement Class for Applications]
\LoadClass[11pt]{article} % Base class

% Margins
\RequirePackage[margin=0.5in]{geometry}

% Font and spacing
\RequirePackage{helvet} % For Arial or similar sans-serif font
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{setspace}
\setstretch{1.25} % Adjust spacing to meet the requirement of no more than six lines of text per vertical inch

% Custom settings to potentially adjust characters per line (not directly controllable in LaTeX)

\newcommand{\projectTitle}[1]{%
    \section*{#1}%
}
