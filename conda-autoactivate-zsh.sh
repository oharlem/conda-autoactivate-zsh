if [[ -n "$CONDA_SHLVL" ]]; then
    export CONDACONFIGDIR=""
    function cd {
        builtin cd "$@"
        if [[ -f $PWD/environment.yml ]]; then
            conda_env_name_line=$(head -n 1 environment.yml)
            conda_env_name=${conda_env_name_line#*: }
            conda_env_name=${(%)conda_env_name}
            export CONDACONFIGDIR=$PWD
            conda activate ${conda_env_name}
        elif [[ "$CONDACONFIGDIR" ]]; then
            if [[ $PWD != *"$CONDACONFIGDIR"* ]]; then
                export CONDACONFIGDIR=""
                conda deactivate
            fi
        fi 
    }
fi
