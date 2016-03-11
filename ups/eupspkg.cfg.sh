TAP_PACKAGE=1

# Parallel builds break SuiteSparse
NJOBS=1

config()
{
    # use the correct config file when building on OSX
    if [[ "$(uname)" == "Darwin" ]]; then
        mv SuiteSparse_config/SuiteSparse_config_Mac.mk SuiteSparse_config/SuiteSparse_config.mk
    fi
}
