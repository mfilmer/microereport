\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{microereport}[2014/08/21]

%%%%% Handle Options %%%%%
% Font Size
\DeclareOption{10pt}{
	\PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{11pt}{
	\PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{12pt}{
	\PassOptionsToClass{\CurrentOption}{report}
}

% Paper Size
\DeclareOption{a4paper}{
	\PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{letterpaper}{
	\PassOptionsToClass{\CurrentOption}{report}
}

% Equation Alignment
\DeclareOption{fleqn}{
	\PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{leqno}{
	\PassOptionsToClass{\CurrentOption}{report}
}

% Title page options
\DeclareOption{titlepage}{
	\PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{notitlepage}{
	\PassOptionsToClass{\CurrentOption}{report}
}

% Chapter odd or any page start
\DeclareOption{openright}{
	\PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{openany}{
	\PassOptionsToClass{\CurrentOption}{report}
}

% Draft mode
\DeclareOption{draft}{
	\PassOptionsToClass{\CurrentOption}{report}
}

% Fallback
\DeclareOption*{
	\ClassWarning{microereport}{Unknown option '\CurrentOption'}
}

% Default options
\ExecuteOptions{11pt}

% Process options
\ProcessOptions\relax

%%%%% Load Base Class %%%%%
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%
%%%%% Packages %%%%%
%%%%%%%%%%%%%%%%%%%%
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
\RequirePackage[onehalfspacing]{setspace}
\RequirePackage{fancyhdr}

\RequirePackage[font=small, labelfont={bf,small}]{caption}
\RequirePackage[hidelinks,hyperfootnotes=false]{hyperref}

% Set up headers
\fancypagestyle{plain}{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\@classname}
\fancyhead[R]{\@pagemark{} \thepage}
\fancyfoot[C]{\@institute}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Custom Commands %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Names of Things
\newcommand{\@classname}{}
\newcommand{\class}[1]{\renewcommand{\@classname}{#1}}
\newcommand{\@pagemark}{}
\newcommand{\pagemark}[1]{\renewcommand{\@pagemark}{#1}}
\newcommand{\@institute}{Rochester Institute of Technology}
\newcommand{\institute}[1]{\renewcommand{\@institute}{#1}}