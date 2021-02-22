⚡ 💲 git clone https://github.com/JosephZYU/bin.git && export PATH="$HOME/bin:$PATH" && setup.sh $HOME⚡
_______________________________________________________________________________________________________________________________________________________________________________

Place this bin folder under $HOME (E.g. /home/josephyu/bin)

    💲 git clone https://github.com/JosephZYU/bin.git
    💲 export PATH="$HOME/bin:$PATH"
    💲 setup.sh $HOME
    
    💲 (optional: sudo chmod +x $HOME/bin/script)
    💲 (optional: apt list --installed python3*) (Ref: https://askubuntu.com/a/17829)
    
Go to Windows Terminal:

    💲 wslconfig /L
    💲 wslconfig /setdefault Ubuntu-20.04

🧭 Homebrew (on macOS) and APT (on Ubuntu)

      The purpose of both tools is similar. 
      
      The difference is that APT1 is native, required and fully integrated part of Ubuntu while Homebrew is a 3rd party addition.
      
      And the most important difference from a user’s perspective is that they use different command syntax, although the tasks are quite similar.
      
      If you are used to Homebrew, you can install it on your Ubuntu. 
      
      However, if someone is a pure Ubuntu user, I’d absolutely encourage them to use their native tool – APT.
      
      (Ref: https://askubuntu.com/a/1158924)
      
🧭 apt-get install 🆚 pip install
      
      Canonical only provides packages for selected python modules.
      PyPI hosts a much broader range of python modules. So, there are a lot of python modules which you won't be able to install using apt-get.
      
      Canonical only hosts a single version of any package (generally the latest or the one released in recent past).
      
      apt-get installs python modules in system-wide location.
      
      if you need to install a particular version of python-package, or install the package in a virtualenv, or install a package which is only hosted on PyPI; 
      only pip would help you solve that issue.

      (Ref: https://askubuntu.com/a/431811)
