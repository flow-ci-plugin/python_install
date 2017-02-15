# ************************************************************
#
# This step will install your project dependencies
#
#   Variables used:
#
#   Outputs:
#
# ************************************************************

cd $FLOW_CURRENT_PROJECT_PATH

if [[ ! -f ./requirements.txt ]]; then
  echo -e "${ANSI_RED}No such file ./requirements.txt!${ANSI_RESET}"
  flow_terminate 2
fi

flow_cmd "pip install -r requirements.txt" --echo --retry --assert
