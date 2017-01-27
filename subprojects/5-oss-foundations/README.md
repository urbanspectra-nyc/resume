Name: Open Source Software Skills: Foundations Training
- Lessons
- Diagrams
- Exercises
- Projects
---
Name: OSS Foundations Lesson Syllabi
- bash-basics
- diagram-basics
- workflow-basics
---
Name: bash-grammar
- syntax
- prompt
- command
- options
- arguments
- parameters
- statements: $ verb noun
- data:disk:file as process:memory:arrayOfLines
- statement decomposition
- scripts
- identifiers: self-describing names
- namespaces
- character sets
- collations
- primitive native data types
    - numbers
    - characters
    - temporal
- tiers of modern application dev+runtime stacks
- client-server
- anti-patterns
    - dangling references
        - paths (URI's)
        - URL's
        - soft links
        - aliases
- patterns
    - singleton
    - decorator
    - data tests
        - dataNameKosher
        - dataAccess
        - dataExists
        - dataBytes
        - dataIsType # dirs,files,constants,vars,arrays,functions,aliases
        - dataMatchBool
        - dataMatchNum
        - dataMatchChar
    - process tests
        - processNameKosher
        - processInputs
        - processExecConfigs
        - processOutputsExpected
        - processOutputsActual
        - processTestResults
    - manual cli workflows
        - bash statement generators
        - bash statement validators
        - bash statement executors
        - automated job management
        - job tracking & reporting
- encapsulation
    - substitution
    - scripts
    - packages
    - includes
    - aliases
    - functions
    - heredoc
    - html includes
    - innerHTML
- polymorphism
- inheritance
- factory
- reads
- writes
- generic service diagram
- specific service diagram: http
- specific service diagram: rdbms
---
Name: bash-basics
- constants
- variables
- logical testing: || &&
- exit codes
- arrays
  - positional
  - associative
- function signatures
- function debugging
- logging
---
Name: bash-internals
- $ man bash # chet ramey
- fork(), spawn(), exec() => shell => subshell
- building bash
- other shells
- $ man test
- $ man eval
- $ man expr
- bash builtins
- $ man sysctl
- $ man shutil
- C function
- gcc
- ssh
- tty
- screen
- jobs
- cssh
- tmux
- filesystems
- file types
    - $ man type
    - yaml
    - shyaml
    - pdfminer
