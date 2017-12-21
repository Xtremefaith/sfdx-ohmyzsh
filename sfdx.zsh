get_sfdx_defaultusername() {
    if [ -d ".sfdx" ]; then
        config="$(cat .sfdx/sfdx-config.json 2> /dev/null)";
        globalConfig="$(cat ~/.sfdx/sfdx-config.json)";
        aliasConfig="$(cat ~/.sfdx/alias.json)";

        defaultusername="$(echo ${config} | jq -r .defaultusername)"
        defaultusernamealias="$(echo ${aliasConfig} | jq -r '.orgs | to_entries[] | select(.value =="'$defaultusername'").key' )"
        globaldefaultusername="$(echo ${globalConfig} | jq -r .defaultusername)"

        if [ ! $defaultusernamealias = "null" ]
        then
            echoString=$echoString$defaultusernamealias"$txtylw (alias)"
        elif [ ! $defaultusername = "null" ]
        then
            echoString=$echoString$defaultusername"$txtylw (local)"
        else
            echoString=$echoString$globaldefaultusername"$txtylw (global)"
        fi
        echo $echoString"\n"
    fi
}