Function create_git_repo($project_name){
    $py_script = ".\Project Automation\module\create_remote_repo.py"     
    $path = (Get-Item .).FullName
    if (!(Test-Path $project_name)){
        return
    }

    python.exe $py_script $project_name $path
    $ssh_url = Get-Content ".\ssh_url.txt" -First 1
    mkdir $project_name
    cd $project_name
    New-Item README.md
    git.exe init
    git.exe add .
    git.exe commit -m"Initial project commit."
    git.exe remote add origin $ssh_url
    git.exe push --set-upstream origin master
    code .
} 



Function create {
   $path = "C:\Users\<Users>\Documents"
   $project_dir = "Projects"
   Set-Location -Path $path
   if (!(Test-Path $project_dir)){
        mkdir $project_dir
        cd $project_dir
   }
   else{
    cd $project_dir
   }


   create_git_repo($args[0])
}