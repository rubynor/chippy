module Chippy
  # Messages is a helper class that provides arrays of byte sequences
  # representing the various messages used during the handshake process with a Chippy device.
  class Messages
    class << self
      def operational_mode_non_transaction
        [0x01, 0x01, 0x00]
      end

      def get_dsrc_configuration
        [0x0e, 0x00]
      end

      def set_beacon_time
        -> { [0x0a, 0x04, *(Time.now.to_i.to_s(16).scan(/../).map { |x| x.to_i(16) })] }
      end

      def get_operational_mode
        [0x02, 0x00]
      end

      def operational_mode_transaction
        [0x01, 0x01, 0x01]
      end

      def set_extended
        [0x3c, 0x01, 0x01]
      end

      def get_status
        [0x03, 0x00]
      end

      def define_applications
        context_marks = [[0xa4, 0, 2, 0, 5, 1], [0xa4, 0, 2, 0, 0x21, 1]]
        context_marks.map do |context_mark|
          [0x2c, # MsgID
            42, # MsgLength (number of bytes below)
            0, 6, # Sub message ID
            6, # ContextMarkLength
            *context_mark,
            0, 0, 0, 0, 0, 0, 0, 0, # ApplicationPassword, NewApplicationPassword
            2, # TransactionProfile
            0, # Key Location
            0, # Security
            0, 0, # MasterAccessCredentialsKeyNo
            0, # SystemElementSecurity
            0, 0, # Master System Element KeyNo
            0, # MasterAuthentication KeyReference_1
            0, # MasterAuthenticationLevel_1
            0, 0, # MasterAuthenticationKey_1
            0, # MasterAuthentication KeyReference_2
            0, # MasterAuthenticationLevel_2
            0, 0, # MasterAuthenticationKey_2
            0, # Options
            1, # AutomaticRead
            1, # No of Attributes
            0x20, # AttributeID 1
            0, # Authentication
            0, # AuthenticationCheck
            0, # AutomaticWrite
            0, # CloseTransaction
            0] # NoOfAttributes
        end
      end

      def reset_beacon
        [0x28, 0x40, *format_string(ENV.fetch("CHIPPY_TRX_USER")), *format_string(ENV.fetch("CHIPPY_TRX_PASSWORD"))]
      end

      private

      def format_string(str)
        # Truncate the string to 31 characters
        str = str[0...31]

        # Encode it as ASCII and convert to bytes
        bytes = str.bytes

        # Pad it to 32 characters with null characters (ASCII zero)
        bytes.fill(0, bytes.length...32)

        bytes
      end
    end
  end
end
