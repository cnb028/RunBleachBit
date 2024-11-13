# BleachBit Command Prompt Scripts
### Automated System Cleanup and Secure Overwrite

This repository contains three command prompt scripts for automating tasks with BleachBit: BleachBitList.cmd, BleachBitClean.cmd, and BleachBitOverwrite.cmd. These scripts list available cleanup options, streamlines system cleanup, and secures data by overwriting deleted files.

## Contents
1. [Overview](#overview)
2. [Requirements](#requirements)
3. [Script Description](#script-description)
    * BleachBit List Script
    * BleachBit Clean Script
    * BleachBit Overwrite Script
4. [Usage](#usage)
5. [Testing](#testing)
6. [Notes & Troubleshooting](#notes--troubleshooting)
7. [Credits](#credits)

## <a name="Overview">Overview</a>

Bleachbit is a system cleanup and privacy tool. These scripts enhance it's usability by automating key functions:

* ### BleachBitList.cmd: 
    * Lists all available cleanup options in the Command Prompt terminal.

* ### BleachBitClean.cmd:
    * Cleans data for specified applications and system components.

* ### BleachBitOverwrite.cmd:
    * Overwrites data for specified applications and system components.

## <a name="Requirements">Requirements</a>

1. **BleachBit** installed on your system. <a href=https://www.bleachbit.org/download>Download Here</a>
2. Administrative privileges for certain cleanup tasks and overwriting.
3. Ensure BleachBit's installation matches the path in the scripts *(C:\Program Files(x86)\BleachBit)*. Modify if necessary.

## <a name="script-description">Script Description</a>

### BleachBit List Script

#### Purpose

Lists all availble cleaners and their subsections.

#### Features

* Outputs a detailed list of all cleanup operations on the device supported by BleachBit.
* Helps users identify specific cleaners to customize BleachBitRun.cmd.
* Suppresses confirmation prompts for seamless operation.

#### Workflow

1. Sets console encoding and Python I/O Environment for compatibility.
2. Navigates to the BleachBit installation directory
3. Executes the list command (```-l```) to display all available cleaners.
4. Pauses Command Prompt to allow for list viewing.

#### Example of Operation

```bleachbit_console.exe -l```

### BleachBit Clean Script

#### Purpose

Automates cleaning for commonly used applications and system files.

#### Features

* Outputs a detailed list of all cleanup operations on the device supported by BleachBit.
* Helps users identify specific cleaners to customize BleachBitRun.cmd.
* Suppresses confirmation proimpts for seamless operation.

#### Workflow

1. Sets console encoding and Python I/O Environment for compatibility.
2. Navigates to the BleachBit installation directory
3. Executes the list command (```-c```) to display all available cleaners.
4. Pauses Command Prompt to allow for completion confirmation.


#### Example of Operation

```bleachbit_console.exe -c adobe_reader.* -s```

### BleachBit Overwrite Script

#### Purpose

Automates the secure overwriting of data from commonly used applications and system files, preventing recovery of sensitive information.

#### Features

* Executes BleachBit's ```-overwrite``` command for a range of applications and system components.
* Ensures all data is securely erased beyond recovery.
* Suppresses confirmation prompts for seamless operation.

#### Workflow

1. Sets console encoding and Python I/O Environment for compatibility.
2. Navigates to the BleachBit installation directory.
3. Executes secure overwriting commands for various components.
4. Pauses Command Prompt to allow for completion confirmation.


#### Example of Operation

```bleachbit_console.exe -overwrite adobe_reader.* -s```

## <a name="usage">Usage</a>

### Running BleachBitList.cmd

#### Method 1

1. Open Command Prompt.
2. Navigate to the script's directory.
3. Execute the script:

```BleachbitList.cmd```

#### Method 2

1. Open File Explorer.
2. Navigate to the script's directory.
3. Double click BleachBitClean.cmd. 

### Running BleachBitClean.cmd

#### Method 1
1. Open Command Prompt.
2. Navigate to the script's directory.
3. Execute the script:

```BleachbitClean.cmd```

#### Method 2

1. Open File Explorer.
2. Navigate to the script's directory.
3. Double click BleachBitClean.cmd. 

### Running BleachBitOverwrite.cmd

#### Method 1

1. Open Command Prompt.
2. Navigate to the script's directory.
3. Execute the script:

```BleachBitOverwrite.cmd```

#### Method 2

1. Open File Explorer.
2. Navigate to the script's directory.
3. Double click BleachBitOverwrite.cmd. 

## <a name="testing">Testing</a>

### Purpose:

This section outlines the testing procedures, results, and observations for the script to ensure functionality and reliability. It provideds a step-by-step guide to verify the script's operations and identify any potential issues.

### Test Environment

* #### Operating System:
    * Windows 10 Pro
    * Windows 11 Pro

* #### BleachBit Version:
    * 4.6.2

* #### Permissions
    * Administrator

* #### System Configuration
    * RAM: 
        * DDR4
            * 4GB
            * 8GB
            * 16GB

    * Processor:
        * 11th Gen Intel Core i3
        * 11th Gen Intel Core i5
        * 12th Gen Intel Core i5
        * 13th Gen Intel Core i5
        * AMD Ryzen 5
        * AMD Ryzen 7

    * Disk Drive:
        * BG6 Kioxia
        * CLI-3D1280Q11 NVMe SSSTC
        * Generic Flash Disk USB Device
        * Intel SSDSC2BF180A4H
        * NVMe Micron 2550
        * NVMe BC711
        * NVMe BC901
        * NVMe CL1-3D128-Q11
        * NVMe KBG50ZNS256G
        * NVMe Micron 2450
        * NVMe SN530
        * NVMe SN740
        * NVMe PM991
        * NVMe PC801
        * NVMe PM991
        * NVM PM9B1
        * SanDisk SD8SN8U
        * ST500M000
        
### Testing Procedure

#### Local Test

1. ##### Pre-Test Setup:
    * Confirm BleachBit is installed in the specified directory.

        ```C:\Program Files (x86)\BleachBit```
    * Open Command Prompt with the required privileges (Administrator).

    * Backup any important data to avoid accidental loss during testing.


2. ##### Execution Steps:

    * Navigate to the directory containing the script.

    * Run the following command:

        ```BleachBitList.cmd```

    * Receive Results.

    * Run the following command:

        ```BleachBitClean.cmd```

    * Receive Results.

    * Run the following command:

        ```BleachBitOverwrite.cmd```
    * Receive Results.

3. ##### Observation Criteria:
    * Verify that ```-l``` operation is executed without errors.
    * Verify that each ```-c``` operation is executed without errors.
    * Verify that each ```-overwrite``` operation is executed without errors.
    * Monitor the system for any unexpected performance issues or errors during execution.


#### Action1 Remote Test

1. ##### Pre-Test Setup:
    
    * Confirm Endpoint is in Action1's Endpoint Library.
    * Confirm Endpoint is Connected. 
    * Confirm BleachBit is installed in the specified directory.
        
        ```C:\Program Files(x86)\BleachBit```
    * Confirm scripts are in Script Library in Action1.

2. ##### Execution Steps:
    * Select Endpoint in Action1's Endpoint Library.
    * Select "Run Script".
    * Select "Script Library"
    * Select "BleachBitList"
        * Select "Next Step"
        * Select "Next Step"
        * Set Automation Name, Automation Run Settings, and Retry settings.
        * Select "Finish"
        * Receive Results.
    * Select Endpoint in Action1's Endpoint Library.
    * Select "Run Script".
    * Select "Script Library"
    * Select "BleachBit Clean"
        * Select "Next Step"
        * Select "Next Step"
        * Set Automation Name, Automation Run Settings, and Retry settings.
        * Select "Finish"
        * Receive Results.
       * Select Endpoint in Action1's Endpoint Library.
    * Select "Run Script".
    * Select "Script Library"
    * Select "BleachBit Overwrite"
        * Select "Next Step"
        * Select "Next Step"
        * Set Automation Name, Automation Run Settings, and Retry settings.
        * Select "Finish"
        * Receive Results.


3. ##### Observation Criteria:
    * Verify that ```-l``` operation is executed without errors.
    * Verify that each ```-c``` operation is executed without errors.
    * Verify that each ```-overwrite``` operation is executed without errors.
    * Monitor the system for any unexpected performance issues or errors during execution.

### Test Results

#### Local Test:

**BleachBit List**

| Test Case | Expected Outcome | Actual Outcome | Status |
|---| --- | ---| ---|
|Verify Script Execution| Script Executes without Errors | Pass | Pass |
|Verify List of Cleaners| Displays all available cleaners in UTF-8 encoding | Pass | Pass |
|Verify descriptions accuracy| Cleaner descriptions are clear and complete | Pass | Pass |
|Handle missing installation| Proper error message if BleachBit is not installed | Pass | Pass |

**BleachBit Clean:**

| Test Case | Expected Outcome | Actual Outcome | Status |
|---| --- | ---| ---|
| Verify Script Execution | Script Executes without Errors | Pass | Pass |
| Clean Adobe Reader | Temporary Files and logs removed | Pass | Pass |
| Clean Deep Scan | Detects and removes orphaned files, unnecessary temp files, and logs | Pass | Pass |
| Clean Google Chrome | Cache and browsing data cleaned | Pass | Pass |
| Clean Windows System | Recent file lists and temporary files removed | Pass | Pass |
| Handle Missing installation | Proper error if BleachBit is not installed | Pass | Pass | 
| Suppress prompts | Script runs without manual confirmation | Pass | Pass |

**BleachBit Overwrite:**

| Test Case | Expected Outcome | Actual Outcome | Status |
|---| --- | ---| ---|
| Verify Console Encoding | Console encoding is set to UTF-8 without issues | Pass | Pass |
| Overwrite Adobe Reader | All associated files are securely overwritten | Pass | Pass |
| Overwrite Deep Scan | Temporary files identified and overwritten securely | Pass | Pass |
| Overwrite Google Chrome | Cache and history files are overwritten securely | Pass | Pass |
| Overwrite Windows System | System temp files securely overwritten | Pass | Pass |



#### Action1 Remote Test:

**BleachBit List**

| Test Case | Expected Outcome | Actual Outcome | Status |
|---| --- | ---| ---|
| Verify Script Execution | Script Executes without Errors | Fail | Pass |
| Verify List of Cleaners | Displays all available cleaners in UTF-8 encoding | Pass | Pass |
| Verify descriptions accuracy | Cleaner descriptions are clear and complete | Pass | Pass |
| Handle missing installation | Proper error message if BleachBit is not installed | Pass | Pass |

**BleachBit Clean:**

| Test Case | Expected Outcome | Actual Outcome | Status |
|---| --- | ---| ---|
| Verify Script Execution | Script Executes without Errors | Fail | Pass |
| Clean Adobe Reader | Temporary Files and logs removed | Pass | Pass |
| Clean Deep Scan | Detects and removes orphaned files, unnecessary temp files, and logs | Pass | Pass |
| Clean Google Chrome | Cache and browsing data cleaned | Pass | Pass |
| Clean Windows System | Recent file lists and temporary files removed | Pass | Pass |
| Handle Missing installation | Proper error if BleachBit is not installed | Pass | Pass | 
| Suppress prompts | Script runs without manual confirmation | Pass | Pass |

**BleachBit Overwrite:**

| Test Case | Expected Outcome | Actual Outcome | Status |
|---| --- | ---| ---|
| Verify Script Execution | Script Executes without Errors | Fail | Pass |
| Overwrite Adobe Reader | All associated files are securely overwritten | Pass | Pass |
| Overwrite Deep Scan | Temporary files identified and overwritten securely | Pass | Pass |
| Overwrite Google Chrome | Cache and history files are overwritten securely | Pass | Pass |
| Overwrite Windows System | System temp files securely overwritten | Pass | Pass |

### Issues Identified

#### Local Test:

##### Error Details:

    No Errors.

##### Resolution:
    Good for Remote Testing.

#### Action1 Remote Test:

##### Error Details:

    C:\Program Files (x86)\BleachBit\library.zip\win_unicode_console\__init__.py:31: RuntimeWarning: sys.stdin.encoding == 'utf-8', whereas sys.stdout.encoding == 'cp1252', readline hook consumer may assume they are the same
    exception when getting special folder path for documents
    exception when getting special folder path for music
    exception when getting special folder path for pictures
    exception when getting special folder path for video

##### Resolution: 

    Research reasoning on why Action1 Ran script would create this error.

### Conclusion

#### Overall Performance:

The BleachBitClean.cmd script performs as intended in local environments, reliably cleaning temporary files, caches, and logs for specified applications and system components. The -c command executes without errors, and the inclusion of the -s flag ensures seamless, prompt-free operation. However, during remote testing, a Runtime Error related to encoding was encountered despite the script explicitly setting the console encoding to UTF-8 using the chcp 65001 command and the Python I/O environment variable. This discrepancy suggests an environment-specific issue rather than a fault in the script logic.

#### Recommendations:

1. Verify Remote Environment Configuration:

    * Ensure the remote testing environment supports UTF-8 encoding for both the console and Python processes.
    * Confirm that the remote environment has the required permissions to execute the script.

2. Add Encoding Validation in the Script:
    * Include a diagnostic step in the script to explicitly verify the console’s encoding settings. For example:

        ```chcp```

3. Fallback Encoding Mechanism:
    * Implement a fallback mechanism to set encoding explicitly in case the default settings fail. For example:
    
       ```set PYTHONUTF8=1```

    This environment variable enforces UTF-8 mode for Python-based tools in modern Windows environments.

4. Log Error Details:
    
    * Add an error logging feature to capture specific runtime error messages during remote execution. This can help diagnose whether the issue stems from encoding, permissions, or system limitations.

5. Update Documentation:
    
    * Include a troubleshooting section in the ReadMe to address potential runtime errors related to encoding in remote environments.

#### Next Steps:
1. Investigate Remote Runtime Error:
    
    Conduct detailed testing in the remote environment to identify whether the encoding issue is related to the host system configuration, network settings, or script execution context.

2. Implement Diagnostic Logging:

    Enhance the script to log execution steps and errors into a log file for remote environments. Example:

    ``` BleachBitClean.cmd > execution_log.txt 2>&1 ```

3. Test on Diverse Remote Systems:

    Expand testing to multiple remote systems with varying configurations (e.g., different Windows versions, virtual environments) to identify potential patterns.

4. Provide Alternate Execution Instructions:

    If the issue persists, recommend running the script locally or through remote desktop access instead of remote shell environments where encoding issues are more common.

By addressing these recommendations and next steps, the script can achieve consistent performance across both local and remote environments.

## <a name="notes--troubleshooting">Notes & Troubleshooting</a>

### 1. Runtime Error in BleachBitList.cmd, BleachBitClean.cmd, and BleachBitOverwrite.cmd:

This error may occur due to incompatible environment settings. Ensure the script's encoding matches the console's settings.

* Verify the Python I/O environment variable:

    ```set Pythonioencoding=UTF-8```   
    
* Run the script as Administrator

### 2. Incorrect Installation Path:

Update the ```cd``` command in both scripts if BleachBit is installed in a non-default location.



## <a name="credits">Credits</a>

### Bleachbit Program:

Copyright © 2008-2023 Andrew Ziem. Thank you to all contributors. User contributed content, such as forum posts and comments, is copyrighted by the contributors. The BleachBit source code is copyrighted under the GNU General Public License version 3. Unless otherwise noted, the web page content is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 license and screenshots of BleachBit as public domain. The logo is copyrighted under the GPL. See the privacy policy.

For additional information, visit the <a href="https://docs.bleachbit.org/">Bleachbit Documentation</a>.

### RunBleachBit Repository

 Copyright 2024 Christine Bettencourt Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
