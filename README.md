⚡ Quick Setup 
    
    $ git clone https://github.com/JosephZYU/bin.git && export PATH="$HOME/bin:$PATH" && setup.sh $HOME && apt.sh

___________________________________________________________________________________________________________________________________________________________________

Setup bin & dotfiles folders at $HOME:    
    
    Place this bin folder under $HOME (E.g. /home/josephyu/bin)

    ####################################################################################################
    $ git clone https://github.com/JosephZYU/bin.git \    #️⃣ Copy from GitHub
      export PATH="$HOME/bin:$PATH" \                     #️⃣ set $HOME/bin to the path for the 1st time
      setup.sh $HOME \                                    #️⃣ Execute with argument $HOME
      apt.sh                                              #️⃣ Optional - Execute apt installation
    ####################################################################################################
    
    $ (optional: sudo chmod +x $HOME/bin/script)
    $ (optional: apt list --installed python3*) (Ref: https://askubuntu.com/a/17829)
    
Configure Ubuntu to default WSL2 under Windows Terminal:

    $ wslconfig /L

    $ wslconfig /setdefault Ubuntu-20.04
    $ wslconfig /setdefault Ubuntu-${Version}
___________________________________________________________________________________________________________________________________________________________________

🧭 APT (on Ubuntu) 🆚 Homebrew (on macOS) (Ref: https://askubuntu.com/a/1158924)

      - The purpose of both tools is similar. 
      - The difference is that APT is native, required and fully integrated part of Ubuntu while Homebrew is a 3rd party addition.
      - And the most important difference from a user’s perspective is that they use different command syntax, although the tasks are quite similar.
      - If you are used to Homebrew, you can install it on your Ubuntu. 
      - However, if someone is a pure Ubuntu user, I’d absolutely encourage them to use their native tool – APT. 👍
      
🧭 apt-get install 🆚 pip install (Ref: https://askubuntu.com/a/431811)
      
      - Canonical only provides packages for selected python modules.
      - PyPI hosts a much broader range of python modules. So, there are a lot of python modules which you won't be able to install using apt-get.
      - Canonical only hosts a single version of any package (generally the latest or the one released in recent past).
      - apt-get installs python modules in system-wide location.
      - if you need to install a particular version of python-package, or the package in a virtualenv, or only hosted on PyPI; pip would help you solve that issue.
___________________________________________________________________________________________________________________________________________________________________
