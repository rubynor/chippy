module Chippy
  # MessageConstants is a utility module that provides constants related to messages,
  # such as message types and other specific values.
  module MessageConstants
    HEADER_SIZE = 4

    MESSAGE_CLASSES = {
      0 => :KEEP_ALIVE,
      1 => :DEVICE_RESPONSE,
      2 => :DEVICE_REPORT,
      3 => :DEVICE_EXTENDED_REPORT
    }

    MESSAGE_RESPONSE_STATUS = {
      0 => :OK,
      1 => :UNDEFINED_MSG_ID,
      2 => :INVALID_MSG_LENGTH,
      3 => :MESSAGE_TOO_LONG,
      4 => :INVALID_DATA,
      5 => :NOT_ALLOWED_IN_CURRENT_OPERATIONAL_MODE,
      6 => :DEVICE_NOT_CONFIGURED,
      7 => :NOT_AVAILABLE,
      8 => :INCORRECT_PASSWORD,
      9 => :OTHER_ERRORS,
      10 => :BUSY_WITH_DSRC_COMMANDS_TO_TRP,
      11 => :TRPID_NOT_AVAILABLE,
      12 => :APPLICATION_LIST_ERROR,
      13 => :CONTEXT_MARK_NOT_DEFINED,
      14 => :EFC_ATTRIBUTE_NOT_DEFINED,
      15 => :LINK_ERROR,
      16 => :INVALID_TRANSPORT_KEY,
      17 => :INVALID_COMMAND,
      18 => :INCORRECT_USER_NAME,
      19 => :TIMEOUT_ERROR,
      20 => :KEY_SET_NOT_DEFINED,
      21 => :NO_SYSTEM_ELEMENT_ACCESS_ALLOWED,
      22 => :KEY_DERIVATION_FAILED,
      23 => :KEY_LIST_ACCESS_FAILED,
      24 => :KEY_REFERENCE_ERROR,
      25 => :ATTRIBUTE_FOR_DERIVATION_IS_MISSING,
      26 => :MESSAGE_FROM_HOST_IS_TO_SHORT,
      27 => :LENGTH_OF_CONTEXT_MARK_IS_INVALID,
      28 => :SECURITY_ACCESS_MODULE
    }

    MESSAGE_REPORT_STATUS = {
      0 => :OK,
      1 => :NOT_USED,
      2 => :AUTHENTICATION_ERROR,
      3 => :TIMEOUT_ERROR,
      4 => :NOT_USED,
      5 => :LINK_ERROR,
      6 => :TIME_OUT_WHEN_IN_TRANSACTION_MODE_SINGLE_SHOT,
      7 => :REQUESTED_DOWNLINK_TOO_LONG,
      8 => :PIN_VERIFICATION_FAILED,
      9 => :UNSUPPORTED_KEY_LOCATION,
      10 => :NOT_USED,
      11 => :ACCESS_DENIED_FROM_TRP_IN_READ_COMMAND,
      12 => :ARGUMENT_ERROR_FROM_TRP_IN_READ_COMMAND,
      13 => :COMPLEXITY_LIMITATION_FROM_TRP_IN_READ_COMMAND,
      14 => :PROCESSING_FAILURE_FROM_TRP_IN_READ_COMMAND,
      16 => :CHAINING_ERROR_FROM_TRP_IN_READ_COMMAND,
      17 => :NOT_USED,
      18 => :NOT_USED,
      19 => :NOT_USED,
      20 => :NOT_USED,
      21 => :ACCESS_DENIED_FROM_TRP_IN_WRITE_COMMAND,
      22 => :ARGENT_ERROR_FROM_TRP_IN_WRITE_COMMAND,
      23 => :COMPLEXITY_LIMITATION_FROM_TRP_IN_WRITE_COMMAND,
      24 => :PROCESSING_FAILURE_FROM_TRP_IN_WRITE_COMMAND,
      26 => :CHAINING_ERROR_FROM_TRP_IN_WRITE_COMMAND,
      27 => :NOT_USED,
      28 => :NOT_USED,
      29 => :NOT_USED,
      30 => :NOT_USED,
      31 => :ACCESS_DENIED_FROM_TRP_IN_DEBIT_COMMAND,
      32 => :ARGUMENT_ERROR_FROM_TRP_IN_DEBIT_COMMAND,
      33 => :COMPLEXITY_LIMITATION_FROM_TRP_IN_DEBIT_COMMAND,
      34 => :PROCESSING_FAILURE_FROM_TRP_IN_DEBIT_COMMAND,
      36 => :CHAINING_ERROR_FROM_TRP_IN_DEBIT_COMMAND,
      37 => :NOT_USED,
      38 => :NOT_USED,
      39 => :NOT_USED,
      40 => :NOT_USED,
      41 => :ACCESS_DENIED_FROM_TRP_IN_CREDIT_COMMAND,
      42 => :ARGUMENT_ERROR_FROM_TRP_IN_CREDIT_COMMAND,
      43 => :COMPLEXITY_LIMITATION_FROM_TRP_IN_CREDIT_COMMAND,
      44 => :PROCESSING_FAILURE_FROM_TRP_IN_CREDIT_COMMAND,
      46 => :CHAINING_ERROR_FROM_TRP_IN_CREDIT_COMMAND
    }

    MESSAGE_IDS = {
      0 => :KEEP_ALIVE,
      1 => :SET_OPERATIONAL_MODE,
      2 => :GET_OPERATIONAL_MODE,
      3 => :GET_STATUS,
      5 => :CONNECT_TRANSPONDER_REPORT,
      10 => :SET_BEACON_TIME,
      11 => :GET_BEACON_TIME,
      12 => :GET_VERSION,
      13 => :SET_DSRC_CONFIGURATION,
      14 => :GET_DSRC_CONFIGURATION,
      21 => :CHANGE_BEACON_ID,
      23 => :CONNECT_TRANSPONDER_REPORT,
      40 => :RESET_BEACON,
      44 => :DEFINE_APPLICATION_EXTENDED,
      57 => :GET_APPLICATION,
      60 => :SET_CONNECT_TRANSPONDER_REPORT_TYPE
    }
  end
end
