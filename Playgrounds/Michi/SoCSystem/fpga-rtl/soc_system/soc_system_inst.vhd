	component soc_system is
		port (
			carleds_external_connection_export           : out   std_logic_vector(7 downto 0);                     -- export
			carsensors_external_connection_export        : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			clk_clk                                      : in    std_logic                     := 'X';             -- clk
			hps_0_f2h_cold_reset_req_reset_n             : in    std_logic                     := 'X';             -- reset_n
			hps_0_f2h_debug_reset_req_reset_n            : in    std_logic                     := 'X';             -- reset_n
			hps_0_f2h_stm_hw_events_stm_hwevents         : in    std_logic_vector(27 downto 0) := (others => 'X'); -- stm_hwevents
			hps_0_f2h_warm_reset_req_reset_n             : in    std_logic                     := 'X';             -- reset_n
			hps_0_h2f_reset_reset_n                      : out   std_logic;                                        -- reset_n
			hps_0_hps_io_hps_io_emac1_inst_TX_CLK        : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
			hps_0_hps_io_hps_io_emac1_inst_TXD0          : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
			hps_0_hps_io_hps_io_emac1_inst_TXD1          : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
			hps_0_hps_io_hps_io_emac1_inst_TXD2          : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
			hps_0_hps_io_hps_io_emac1_inst_TXD3          : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
			hps_0_hps_io_hps_io_emac1_inst_RXD0          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
			hps_0_hps_io_hps_io_emac1_inst_MDIO          : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
			hps_0_hps_io_hps_io_emac1_inst_MDC           : out   std_logic;                                        -- hps_io_emac1_inst_MDC
			hps_0_hps_io_hps_io_emac1_inst_RX_CTL        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_0_hps_io_hps_io_emac1_inst_TX_CTL        : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
			hps_0_hps_io_hps_io_emac1_inst_RX_CLK        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_0_hps_io_hps_io_emac1_inst_RXD1          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
			hps_0_hps_io_hps_io_emac1_inst_RXD2          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
			hps_0_hps_io_hps_io_emac1_inst_RXD3          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
			hps_0_hps_io_hps_io_sdio_inst_CMD            : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_0_hps_io_hps_io_sdio_inst_D0             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_0_hps_io_hps_io_sdio_inst_D1             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_0_hps_io_hps_io_sdio_inst_CLK            : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_0_hps_io_hps_io_sdio_inst_D2             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_0_hps_io_hps_io_sdio_inst_D3             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D0             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
			hps_0_hps_io_hps_io_usb1_inst_D1             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
			hps_0_hps_io_hps_io_usb1_inst_D2             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
			hps_0_hps_io_hps_io_usb1_inst_D3             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D4             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
			hps_0_hps_io_hps_io_usb1_inst_D5             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
			hps_0_hps_io_hps_io_usb1_inst_D6             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
			hps_0_hps_io_hps_io_usb1_inst_D7             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
			hps_0_hps_io_hps_io_usb1_inst_CLK            : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
			hps_0_hps_io_hps_io_usb1_inst_STP            : out   std_logic;                                        -- hps_io_usb1_inst_STP
			hps_0_hps_io_hps_io_usb1_inst_DIR            : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
			hps_0_hps_io_hps_io_usb1_inst_NXT            : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
			hps_0_hps_io_hps_io_spim1_inst_CLK           : out   std_logic;                                        -- hps_io_spim1_inst_CLK
			hps_0_hps_io_hps_io_spim1_inst_MOSI          : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
			hps_0_hps_io_hps_io_spim1_inst_MISO          : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
			hps_0_hps_io_hps_io_spim1_inst_SS0           : out   std_logic;                                        -- hps_io_spim1_inst_SS0
			hps_0_hps_io_hps_io_uart0_inst_RX            : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_0_hps_io_hps_io_uart0_inst_TX            : out   std_logic;                                        -- hps_io_uart0_inst_TX
			hps_0_hps_io_hps_io_i2c0_inst_SDA            : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
			hps_0_hps_io_hps_io_i2c0_inst_SCL            : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
			hps_0_hps_io_hps_io_i2c1_inst_SDA            : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
			hps_0_hps_io_hps_io_i2c1_inst_SCL            : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
			hps_0_hps_io_hps_io_gpio_inst_GPIO09         : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
			hps_0_hps_io_hps_io_gpio_inst_GPIO35         : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
			hps_0_hps_io_hps_io_gpio_inst_GPIO40         : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
			hps_0_hps_io_hps_io_gpio_inst_GPIO53         : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO53
			hps_0_hps_io_hps_io_gpio_inst_GPIO54         : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
			hps_0_hps_io_hps_io_gpio_inst_GPIO61         : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO61
			memory_mem_a                                 : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                                : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                                : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                              : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                               : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                              : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                             : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                             : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                              : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                           : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                                : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                               : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                             : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                               : out   std_logic;                                        -- mem_odt
			memory_mem_dm                                : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                             : in    std_logic                     := 'X';             -- oct_rzqin
			motor_control_0_external_pwm_outuput         : out   std_logic;                                        -- pwm_outuput
			motor_control_0_external_enablesignal        : out   std_logic;                                        -- enablesignal
			motor_control_0_external_sensorsignal        : in    std_logic                     := 'X';             -- sensorsignal
			motor_control_0_external_roundsignal         : in    std_logic                     := 'X';             -- roundsignal
			pio_led_external_connection_export           : out   std_logic_vector(7 downto 0);                     -- export
			reset_reset_n                                : in    std_logic                     := 'X';             -- reset_n
			avalontoopticalsensor_sensor_ports_miso      : in    std_logic                     := 'X';             -- miso
			avalontoopticalsensor_sensor_ports_mosi      : out   std_logic;                                        -- mosi
			avalontoopticalsensor_sensor_ports_select    : out   std_logic;                                        -- select
			avalontoopticalsensor_sensor_ports_sysclk    : out   std_logic;                                        -- sysclk
			avalontoopticalsensor_sensor_ports_npd       : out   std_logic;                                        -- npd
			avalontoopticalsensor_sensor_ports_sensorrst : out   std_logic                                         -- sensorrst
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			carleds_external_connection_export           => CONNECTED_TO_carleds_external_connection_export,           --        carleds_external_connection.export
			carsensors_external_connection_export        => CONNECTED_TO_carsensors_external_connection_export,        --     carsensors_external_connection.export
			clk_clk                                      => CONNECTED_TO_clk_clk,                                      --                                clk.clk
			hps_0_f2h_cold_reset_req_reset_n             => CONNECTED_TO_hps_0_f2h_cold_reset_req_reset_n,             --           hps_0_f2h_cold_reset_req.reset_n
			hps_0_f2h_debug_reset_req_reset_n            => CONNECTED_TO_hps_0_f2h_debug_reset_req_reset_n,            --          hps_0_f2h_debug_reset_req.reset_n
			hps_0_f2h_stm_hw_events_stm_hwevents         => CONNECTED_TO_hps_0_f2h_stm_hw_events_stm_hwevents,         --            hps_0_f2h_stm_hw_events.stm_hwevents
			hps_0_f2h_warm_reset_req_reset_n             => CONNECTED_TO_hps_0_f2h_warm_reset_req_reset_n,             --           hps_0_f2h_warm_reset_req.reset_n
			hps_0_h2f_reset_reset_n                      => CONNECTED_TO_hps_0_h2f_reset_reset_n,                      --                    hps_0_h2f_reset.reset_n
			hps_0_hps_io_hps_io_emac1_inst_TX_CLK        => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TX_CLK,        --                       hps_0_hps_io.hps_io_emac1_inst_TX_CLK
			hps_0_hps_io_hps_io_emac1_inst_TXD0          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD0,          --                                   .hps_io_emac1_inst_TXD0
			hps_0_hps_io_hps_io_emac1_inst_TXD1          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD1,          --                                   .hps_io_emac1_inst_TXD1
			hps_0_hps_io_hps_io_emac1_inst_TXD2          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD2,          --                                   .hps_io_emac1_inst_TXD2
			hps_0_hps_io_hps_io_emac1_inst_TXD3          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TXD3,          --                                   .hps_io_emac1_inst_TXD3
			hps_0_hps_io_hps_io_emac1_inst_RXD0          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD0,          --                                   .hps_io_emac1_inst_RXD0
			hps_0_hps_io_hps_io_emac1_inst_MDIO          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_MDIO,          --                                   .hps_io_emac1_inst_MDIO
			hps_0_hps_io_hps_io_emac1_inst_MDC           => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_MDC,           --                                   .hps_io_emac1_inst_MDC
			hps_0_hps_io_hps_io_emac1_inst_RX_CTL        => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RX_CTL,        --                                   .hps_io_emac1_inst_RX_CTL
			hps_0_hps_io_hps_io_emac1_inst_TX_CTL        => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_TX_CTL,        --                                   .hps_io_emac1_inst_TX_CTL
			hps_0_hps_io_hps_io_emac1_inst_RX_CLK        => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RX_CLK,        --                                   .hps_io_emac1_inst_RX_CLK
			hps_0_hps_io_hps_io_emac1_inst_RXD1          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD1,          --                                   .hps_io_emac1_inst_RXD1
			hps_0_hps_io_hps_io_emac1_inst_RXD2          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD2,          --                                   .hps_io_emac1_inst_RXD2
			hps_0_hps_io_hps_io_emac1_inst_RXD3          => CONNECTED_TO_hps_0_hps_io_hps_io_emac1_inst_RXD3,          --                                   .hps_io_emac1_inst_RXD3
			hps_0_hps_io_hps_io_sdio_inst_CMD            => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_CMD,            --                                   .hps_io_sdio_inst_CMD
			hps_0_hps_io_hps_io_sdio_inst_D0             => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D0,             --                                   .hps_io_sdio_inst_D0
			hps_0_hps_io_hps_io_sdio_inst_D1             => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D1,             --                                   .hps_io_sdio_inst_D1
			hps_0_hps_io_hps_io_sdio_inst_CLK            => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_CLK,            --                                   .hps_io_sdio_inst_CLK
			hps_0_hps_io_hps_io_sdio_inst_D2             => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D2,             --                                   .hps_io_sdio_inst_D2
			hps_0_hps_io_hps_io_sdio_inst_D3             => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D3,             --                                   .hps_io_sdio_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D0             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D0,             --                                   .hps_io_usb1_inst_D0
			hps_0_hps_io_hps_io_usb1_inst_D1             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D1,             --                                   .hps_io_usb1_inst_D1
			hps_0_hps_io_hps_io_usb1_inst_D2             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D2,             --                                   .hps_io_usb1_inst_D2
			hps_0_hps_io_hps_io_usb1_inst_D3             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D3,             --                                   .hps_io_usb1_inst_D3
			hps_0_hps_io_hps_io_usb1_inst_D4             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D4,             --                                   .hps_io_usb1_inst_D4
			hps_0_hps_io_hps_io_usb1_inst_D5             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D5,             --                                   .hps_io_usb1_inst_D5
			hps_0_hps_io_hps_io_usb1_inst_D6             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D6,             --                                   .hps_io_usb1_inst_D6
			hps_0_hps_io_hps_io_usb1_inst_D7             => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_D7,             --                                   .hps_io_usb1_inst_D7
			hps_0_hps_io_hps_io_usb1_inst_CLK            => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_CLK,            --                                   .hps_io_usb1_inst_CLK
			hps_0_hps_io_hps_io_usb1_inst_STP            => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_STP,            --                                   .hps_io_usb1_inst_STP
			hps_0_hps_io_hps_io_usb1_inst_DIR            => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_DIR,            --                                   .hps_io_usb1_inst_DIR
			hps_0_hps_io_hps_io_usb1_inst_NXT            => CONNECTED_TO_hps_0_hps_io_hps_io_usb1_inst_NXT,            --                                   .hps_io_usb1_inst_NXT
			hps_0_hps_io_hps_io_spim1_inst_CLK           => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_CLK,           --                                   .hps_io_spim1_inst_CLK
			hps_0_hps_io_hps_io_spim1_inst_MOSI          => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_MOSI,          --                                   .hps_io_spim1_inst_MOSI
			hps_0_hps_io_hps_io_spim1_inst_MISO          => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_MISO,          --                                   .hps_io_spim1_inst_MISO
			hps_0_hps_io_hps_io_spim1_inst_SS0           => CONNECTED_TO_hps_0_hps_io_hps_io_spim1_inst_SS0,           --                                   .hps_io_spim1_inst_SS0
			hps_0_hps_io_hps_io_uart0_inst_RX            => CONNECTED_TO_hps_0_hps_io_hps_io_uart0_inst_RX,            --                                   .hps_io_uart0_inst_RX
			hps_0_hps_io_hps_io_uart0_inst_TX            => CONNECTED_TO_hps_0_hps_io_hps_io_uart0_inst_TX,            --                                   .hps_io_uart0_inst_TX
			hps_0_hps_io_hps_io_i2c0_inst_SDA            => CONNECTED_TO_hps_0_hps_io_hps_io_i2c0_inst_SDA,            --                                   .hps_io_i2c0_inst_SDA
			hps_0_hps_io_hps_io_i2c0_inst_SCL            => CONNECTED_TO_hps_0_hps_io_hps_io_i2c0_inst_SCL,            --                                   .hps_io_i2c0_inst_SCL
			hps_0_hps_io_hps_io_i2c1_inst_SDA            => CONNECTED_TO_hps_0_hps_io_hps_io_i2c1_inst_SDA,            --                                   .hps_io_i2c1_inst_SDA
			hps_0_hps_io_hps_io_i2c1_inst_SCL            => CONNECTED_TO_hps_0_hps_io_hps_io_i2c1_inst_SCL,            --                                   .hps_io_i2c1_inst_SCL
			hps_0_hps_io_hps_io_gpio_inst_GPIO09         => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO09,         --                                   .hps_io_gpio_inst_GPIO09
			hps_0_hps_io_hps_io_gpio_inst_GPIO35         => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO35,         --                                   .hps_io_gpio_inst_GPIO35
			hps_0_hps_io_hps_io_gpio_inst_GPIO40         => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO40,         --                                   .hps_io_gpio_inst_GPIO40
			hps_0_hps_io_hps_io_gpio_inst_GPIO53         => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO53,         --                                   .hps_io_gpio_inst_GPIO53
			hps_0_hps_io_hps_io_gpio_inst_GPIO54         => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO54,         --                                   .hps_io_gpio_inst_GPIO54
			hps_0_hps_io_hps_io_gpio_inst_GPIO61         => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO61,         --                                   .hps_io_gpio_inst_GPIO61
			memory_mem_a                                 => CONNECTED_TO_memory_mem_a,                                 --                             memory.mem_a
			memory_mem_ba                                => CONNECTED_TO_memory_mem_ba,                                --                                   .mem_ba
			memory_mem_ck                                => CONNECTED_TO_memory_mem_ck,                                --                                   .mem_ck
			memory_mem_ck_n                              => CONNECTED_TO_memory_mem_ck_n,                              --                                   .mem_ck_n
			memory_mem_cke                               => CONNECTED_TO_memory_mem_cke,                               --                                   .mem_cke
			memory_mem_cs_n                              => CONNECTED_TO_memory_mem_cs_n,                              --                                   .mem_cs_n
			memory_mem_ras_n                             => CONNECTED_TO_memory_mem_ras_n,                             --                                   .mem_ras_n
			memory_mem_cas_n                             => CONNECTED_TO_memory_mem_cas_n,                             --                                   .mem_cas_n
			memory_mem_we_n                              => CONNECTED_TO_memory_mem_we_n,                              --                                   .mem_we_n
			memory_mem_reset_n                           => CONNECTED_TO_memory_mem_reset_n,                           --                                   .mem_reset_n
			memory_mem_dq                                => CONNECTED_TO_memory_mem_dq,                                --                                   .mem_dq
			memory_mem_dqs                               => CONNECTED_TO_memory_mem_dqs,                               --                                   .mem_dqs
			memory_mem_dqs_n                             => CONNECTED_TO_memory_mem_dqs_n,                             --                                   .mem_dqs_n
			memory_mem_odt                               => CONNECTED_TO_memory_mem_odt,                               --                                   .mem_odt
			memory_mem_dm                                => CONNECTED_TO_memory_mem_dm,                                --                                   .mem_dm
			memory_oct_rzqin                             => CONNECTED_TO_memory_oct_rzqin,                             --                                   .oct_rzqin
			motor_control_0_external_pwm_outuput         => CONNECTED_TO_motor_control_0_external_pwm_outuput,         --           motor_control_0_external.pwm_outuput
			motor_control_0_external_enablesignal        => CONNECTED_TO_motor_control_0_external_enablesignal,        --                                   .enablesignal
			motor_control_0_external_sensorsignal        => CONNECTED_TO_motor_control_0_external_sensorsignal,        --                                   .sensorsignal
			motor_control_0_external_roundsignal         => CONNECTED_TO_motor_control_0_external_roundsignal,         --                                   .roundsignal
			pio_led_external_connection_export           => CONNECTED_TO_pio_led_external_connection_export,           --        pio_led_external_connection.export
			reset_reset_n                                => CONNECTED_TO_reset_reset_n,                                --                              reset.reset_n
			avalontoopticalsensor_sensor_ports_miso      => CONNECTED_TO_avalontoopticalsensor_sensor_ports_miso,      -- avalontoopticalsensor_sensor_ports.miso
			avalontoopticalsensor_sensor_ports_mosi      => CONNECTED_TO_avalontoopticalsensor_sensor_ports_mosi,      --                                   .mosi
			avalontoopticalsensor_sensor_ports_select    => CONNECTED_TO_avalontoopticalsensor_sensor_ports_select,    --                                   .select
			avalontoopticalsensor_sensor_ports_sysclk    => CONNECTED_TO_avalontoopticalsensor_sensor_ports_sysclk,    --                                   .sysclk
			avalontoopticalsensor_sensor_ports_npd       => CONNECTED_TO_avalontoopticalsensor_sensor_ports_npd,       --                                   .npd
			avalontoopticalsensor_sensor_ports_sensorrst => CONNECTED_TO_avalontoopticalsensor_sensor_ports_sensorrst  --                                   .sensorrst
		);

