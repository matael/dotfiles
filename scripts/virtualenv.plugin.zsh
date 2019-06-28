export VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_prompt_info {
    if [ "$VIRTUAL_ENV" ]; then
        echo "$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_VIRTUALENV_PROMPT_PREFIX$ZSH_THEME_VIRTUALENV_NAME_COLOR$(virtualenv_get_env_name)$ZSH_PROMPT_BASE_COLOR$ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX$ZSH_PROMPT_BASE_COLOR"
    fi
}

function virtualenv_get_env_name {
    echo ${VIRTUAL_ENV##*/}
}