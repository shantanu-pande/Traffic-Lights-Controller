LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_textio.all;
USE std.textio.all;

ENTITY Testbench IS
END Testbench;

architecture test of Testbench is
	-- Dont Change the name of the signal provided here.
    signal Clk : std_logic := '0';
    signal Reset: std_logic;
    signal lights   : std_logic_vector(7 downto 0);
	 signal t5s: std_logic;
	 signal t1s: std_logic;
	-------------------------------------------------------
	
	-- Instatiante your own component that you have designed for the traffic controller
	-- Entity name can be different for your case.
	-- Input names can be different also but there will 2 inputs ( clock signal and reset signal)
	-- There will be 8 outputs ( 2 signals for each traffic light )
	component TRAFFIC_CONTROLLER is
		port (Clk: in std_logic;
        Reset: in std_logic;
        lights: out std_logic_vector(7 downto 0);
		  t_5secs: out std_logic;
		  t_1secs: out std_logic);
	end component;
	
    begin
		
		-- Port map your own component accordingly. 
		-- Just change the name of "Traffic_Controller" to your own entity name.
		-- Dont make any changes in the signals inside the port map i.e. Clk, Reset and lights names.
        dut : TRAFFIC_CONTROLLER port map (Clk, Reset, lights, t5s, t1s);
		
		-- Dont make any changes below this
        Reset <= '1', '0' after 20	 ns;
		
        process 
            begin
				
                wait for 10 ns;
					 Clk <= '1';
           
                wait for 10 ns;
                   Clk <= '0';  
        end process;

end test;