library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity t_1sec is
    port (
        clk : in std_logic;
        reset : in std_logic;
        clk_1sec : out std_logic
    );
end t_1sec;

architecture Behavioral of t_1sec is
    constant f : natural := 50_000_000;    
    signal count : unsigned(31 downto 0);
    signal S1 : std_logic;
	 
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                count <= (others => '0');
                S1 <= '0';
            else
                if count = (f - 1) then

                    count <= (others => '0');
                    S1 <= '1';
                else
                    count <= count + 1;
                    S1 <= '0';
                end if;
            end if;
        end if;
    end process;

    clk_1sec <= S1;
	 
end architecture Behavioral;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity t_5sec is
    port (
        clk : in std_logic;
        reset : in std_logic;
        clk_5sec : out std_logic
    );
end t_5sec;

architecture Behavioral of t_5sec is
    constant CLOCK_FREQ : natural := 50_000_000; 
    constant TIME_T : natural := 5;         
    
    signal count : unsigned(31 downto 0);
    signal S1 : std_logic;
	 
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                count <= (others => '0');
                S1 <= '0';
            else
                if count = (CLOCK_FREQ * TIME_T) - 1 then
                    count <= (others => '0');
                    S1 <= '1';
                else
                    count <= count + 1;
                    S1 <= '0';
                end if;
            end if;
        end if;
    end process;

    clk_5sec <= S1;
	 
end architecture Behavioral;
