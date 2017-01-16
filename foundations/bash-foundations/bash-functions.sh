#!/bin/bash

# {bash,facter,git,curl,$RDBMS} --version
# RDBMS={mysqld,mariadb,postgres,mongodb}

# What bash versions do we have installed?
bash --version
# GNU bash, version 4.4.5(1)-release (x86_64-apple-darwin15.6.0)
NATIVE_VERSION_BASH=$(bash --version)

# What bash versions do we support?
# $ cd /bin; ./bash --version
# GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin15)

# Therefore MUST set bash 3.2.x as default local binary executable:
# $ mv /usr/local/bin/bash /usr/local/bin/bash4
# $ bash4
# bash4-4.4$ exit
# exit
# $ bash --version
# -bash: /usr/local/bin/bash: No such file or directory
# $ ln -s /bin/bash /usr/local/bin/bash 
# $ bash
# bash-3.2$ exit
# $ SUPPORTED_VERSION_BASH_MIN=$(bash --version)
# $ SUPPORTED_VERSION_BASH_MAX=$(bash4 --version)

# GEN_bash: KNOWN GOOD TESTED STRING (KGTS)
KGTS_01='helloIn() { echo HelloBack;}'
FUNC_NAME='helloIn'
FUNC_OUTPUT='HelloBack'
FUNC_DEF=${FUNC_NAME}"() { echo ${FUNC_OUTPUT};}"
echo 'KGTS:    '$KGTS
echo 'FUN_CDEF: '$FUNC_DEF
echo 'Copy and paste FUNC_DEF string above to test generated function statement [definition + execution].'
echo 'helloIn # Expected Output: HelloBack'

# Other bash funky function fun to try.... $ man man
$ man2txt() { man $1 | col -b > ~/mantxt-$1.txt;}
$ man2txt bash
$ cat ~/mantxt-bash.txt | wc -l
$ LINES_OF_BASH_MAN_TXT=$( cat ~/mantxt-bash.txt | wc -l )
$ echo ${LINES_OF_BASH_MAN_TXT}
# Function Signature:
# Function Usage:
# extend using decorator to implement try-catch
# scope+echo+source+eval
# Note that bash comment and sysroot prompt ought NOT match!! :/

echo 'Next versions of this script will add:
- Using return instead of echo.
- Chaining functions.
- Function args, opts and params...
- Basic bash solutions for constants, variables and functions.
- Advanced bash string gen-match-exec-test workflow patterns.
  - whoIwas
  - canIsudo
  - whoIam
  - /etc/hosts
  - bashV
  - gitV
  - gitEtc
  - gitIndex
  - gitIndexStatus
- Bash function tests: [definition + execution]
- Bash decorators: examples
- Bash generate and test decorators: examples
'
echo 'Future versions of this script will test for string match, then attempt try-catch with string.'

# exit 1      # ERROR
exit 0        #
# exit -1     #
KGTS_02='helloIn() { return HelloBack;}'

# 0. hasFileSuffix, fileSuffixTrue, isAscii, isLatin, isUTF8, isUTF8MB4, isUTF16 ??

# hereDoc
# htmlIncludes
# innerHTML
SECONDS
TMOUT=0
CANISUDO=$( sudo bash ) # Try catch
NATIVE_ENVARS_UID1=$(env)

Match FUNC_DEF string against KGTS, first by char length, then by chars.
if test ["$FUNC_DEF" -eq "$KGTS"];
    MSG="String Match: $FUNC_DEF"
else
    MSG='NO String match'
fi
echo $MESSG
---
# shutil set bash memory limit
# watch free
# nanoseconds??
---
# genCurl
# genGit
# genMysql
# genPgsql
# genMongo
# genRedis
# genOracle
---
Name: Code Generation Workflow
- Test Bash Version: bashV
- Fix Bash Version: bashFixV
- kgts-manual-tests
- kgts-test-func-def-expected
- kgts-test-func-def-actual
- kgts-test-func-exec-expected
- kgts-test-func-exec-actual
- kgts-test-func-input-expected-out
- kgts-test-func-input-actual-out
- decompose kgts into element variables with self-describing names
- gen-statement
- match against kgts
---
- test variable@name: [declare-scope,drop-var,define-type,cast-var,set-value,get-value,unset-value]
- test alias@name: [declare-scope,drop-alias,define-type,cast-var,set-value,get-value,unset-value] ??
- test function@name: [declare-scope,drop-var,define-type,cast-var,set-value,get-value,unset-value]
- test function definition
- test function execution
- test function decorator definition DEC_NAME=${FUNC_NAME}_DECO_tryCatch
- test function decorator execution
- test file@path [exists,access,suff,lines,chars,charset,bytes,suff-valid,strux-valid]
- test repo@origin
---
# isAscii() { }
# $ isAscii(${MAN_TXT_FILE})
---
# man2yml() {}
---
$ $FUNC_NAME
-bash: return: HelloBack: numeric argument required
$ expr $FUNC_NAME
helloIn
$ man expr
$ man eval
$ man exec
--
Name: Physical Resource Supply vs Physical Resource Demands
SYSBENCH TESTS
BENCHMARK TESTS
RAM DISK TESTS
BOOT DISK TESTS
LOCAL STORAGE TESTS
NETWORK STORAGE TESTS
---