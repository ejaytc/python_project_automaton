### Python Project Automation
The Python Project Automation will do the following execution.
- Create new Github repository.
- Copy the repository `ssh url.`
- Create project folder with the assign directory.
- Create `README.md` file
- Execute the following commands:  `git init`, `git add .`, `git commit`, `git remote add orirgin <ssh url>`, and `git push`
- Then Open Visual Studio Code

### References
- [Git Personal Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
- [Git Rest API](https://docs.github.com/en/rest)
- [Windows PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.2)
- [Window PowerShell Profile](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.2)


### Program Execution
#### You can execute program via
``` 
.\msps.ps1 create <project_name>
```


You can also directly execute command `create` in  window powershell by Creating wndow profile.

### Check Profile if already exist.

```
test-path $profile
```
- Return False / True

### Create Profile

```
New-Item -Path $profile -ItemType File
```

### Open Profile with ISE.
- The Windows PowerShell Integrated Scripting Environment (ISE)
```
ise $profile
```


#### By creating Windows PowerShell Profile this will allow to execute create command anywhere.

