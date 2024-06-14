library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TRAFFIC_CONTROLLER is 
	port (Clk: in std_logic;
        Reset: in std_logic;
        lights: out std_logic_vector(7 downto 0);
		  t_5secs: out std_logic;
		  t_1secs: out std_logic);
end TRAFFIC_CONTROLLER;

architecture behavioural of TRAFFIC_CONTROLLER is
    component t_5sec is
        port (clk    : in std_logic;
				reset  : in std_logic;
            clk_5sec : out std_logic);
    end component;
    component t_1sec is
        port (
            clk    : in std_logic;
            reset  : in std_logic;
            clk_1sec : out std_logic);
    end component;

    signal clk_5sec, clk_1sec : std_logic;
    type state is (RST, S0, S1, S2, S3, S4, S5, S6, S7);
    signal current_state, next_state : state := RST;
begin
    TIME1: t_1sec port map(clk => Clk, reset => Reset, clk_1sec => clk_1sec);
    TIME2: t_5sec port map(clk => Clk, reset => Reset, clk_5sec => clk_5sec);
	 
		t_1secs <= clk_1sec;
		t_5secs <= clk_5sec;
	
    clock_update: process (Clk)
    begin
        if rising_edge(Clk) then
            if (Reset = '1') then current_state <= RST;
            else current_state <= next_state;
            end if;
        end if;
    end process;

    state_links: process (clk_5sec, clk_1sec, current_state)
    begin
        case current_state is
            when RST => next_state <= S0;

            when S0 =>
                if (clk_5sec = '1') then next_state <= S1;
                else next_state <= S0;
                end if;

            when S1 =>
                if (clk_1sec = '1') then next_state <= S2;
                else next_state <= S1;
                end if;

            when S2 =>
                if (clk_5sec = '1') then next_state <= S3;
                else next_state <= S2;
                end if;

            when S3 =>
                if (clk_1sec = '1') then next_state <= S4;
                else next_state <= S3;
                end if;

            when S4 =>
                if (clk_5sec = '1') then next_state <= S5;
                else next_state <= S4;
                end if;

            when S5 =>
                if (clk_1sec = '1') then next_state <= S6;
                else next_state <= S5;
                end if;

            when S6 =>
                if (clk_5sec = '1') then next_state <= S7;
                else next_state <= S6;
                end if;

            when S7 =>
                if (clk_1sec = '1') then next_state <= S0;
                else next_state <= S7;
                end if;
					 
            when others => null;
				
        end case;
    end process;

    state_update: process (current_state)
    begin
			--			100 = R = 00
			--			010 = Y = 01
			--			001 = G = 10
        if (current_state = RST) then lights <= "01010101";					
        elsif (current_state = S0) then lights <= "10000000";
        elsif (current_state = S1) then lights <= "01010000";
        elsif (current_state = S2) then lights <= "00100000";
        elsif (current_state = S3) then lights <= "00010100";
        elsif (current_state = S4) then lights <= "00001000";
        elsif (current_state = S5) then lights <= "00000101";
        elsif (current_state = S6) then lights <= "00000010";
        else lights <= "01000001";
        end if;
    end process;
end behavioural;
