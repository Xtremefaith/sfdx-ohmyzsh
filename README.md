# Salesforce DX Org Config OhMyZSh Prompt

Using Wade Wegner's guide <a href="http://www.wadewegner.com/2017/04/show-the-salesforce-dx-org-config-in-your-bash-profile/">here</a>, I went ahead and created a quick script to put my current scratch org in my <a href="http://ohmyz.sh/">OhMyZsh</a> command prompt. Here is a preview of what's to come:

<img width="570" alt="screenshot 2017-12-20 20 38 48" src="https://user-images.githubusercontent.com/1228550/34242001-72af63b6-e5d6-11e7-90d7-9080054f91b4.png">

I'm using <a href="https://github.com/bhilburn/powerlevel9k">'powerlevel9k/powerlevel9k'</a> theme because it's awesome and easy to setup. Not to mention it comes with a convenient ability to add custom command prompt segments.

## Installation
Simple clone or download the `sfdx.zsh` file and put it in your `.oh-my-zsh/lib/` directory. Simple right?!

**Note:**
Most likely your `.zshrc` already has includes your `.oh-my-zsh` config but if not just verify it's in there. Should look something like this:

`export ZSH=/Users/nworth/.oh-my-zsh`

That file should run a script to include all `.zsh` files in the `/lib/` folder 

## Setup
Next we just need to setup or config to use the script within the library. In the `.zshrc` we need to add our new custom command prompt segment to the prompt elements. To do this we will add `custom_sfdx` to the POWERLEVEL9K_LEFT_PROMPT_ELEMENTS (or right if you prefer)

`POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs docker_machine custom_sfdx)`

Then we will define what `custom_sfdx` does below with the following.

```
# Custom Salesforce DX
POWERLEVEL9K_CUSTOM_SFDX="get_sfdx_defaultusername"
POWERLEVEL9K_CUSTOM_SFDX_BACKGROUND='red'
POWERLEVEL9K_CUSTOM_SFDX_FOREGROUND='black'
```

## Conclusion
That's it! You should be good to go. Of course you can make adjustments, pick a different color or a different placement, see the <a href="https://github.com/bhilburn/powerlevel9k">'powerlevel9k/powerlevel9k'</a> documentation for directions there. Also, I know very little about <a href="https://stedolan.github.io/jq/">JQ</a> or custom shell scripts, so my implementation here is pretty basic but it does what I needed, so feel free to expand it till your heart's content. And if you think your changes are valuble to everyone else send me a PR and I'll merge it in.

Thanks! and Good Luck!
