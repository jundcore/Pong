library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity score is
	Port( pointLeft : in bit;
			pointRight : in bit;
			X : in integer range 0 to 640;
			Y : in integer range 0 to 480;
			rgb_in : in STD_LOGIC_VECTOR (2 downto 0);
			rgb_out: out STD_LOGIC_VECTOR (2 downto 0);
			clk25 : in bit;
			reset : in bit;
			game_over : out std_logic);
end score;

architecture Behavioral of score is
	signal a1,a2,a3,a4,a5,a6,a7,a8,a9,a0 : STD_LOGIC_VECTOR(1 to 5);
	signal b1,b2,b3,b4,b5,b6,b7,b8,b9,b0 : STD_LOGIC_VECTOR(1 to 5);
	signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c0 : STD_LOGIC_VECTOR(1 to 5);
	signal d1,d2,d3,d4,d5,d6,d7,d8,d9,d0 : STD_LOGIC_VECTOR(1 to 5);
	signal e1,e2,e3,e4,e5,e6,e7,e8,e9,e0 : STD_LOGIC_VECTOR(1 to 5);
	signal left_player,right_player : integer range 0 to 9 := 0;
	signal chosen_number_part : STD_LOGIC_VECTOR(1 to 5);
begin
		a1 <= "00011";a2 <= "01110";a3 <= "01110";a4 <= "11000";a5 <= "11111";
		b1 <= "01111";b2 <= "11011";b3 <= "00011";b4 <= "11011";b5 <= "11000";
		c1 <= "00011";c2 <= "00110";c3 <= "01110";c4 <= "11111";c5 <= "11110";
		d1 <= "00011";d2 <= "01100";d3 <= "00011";d4 <= "00011";d5 <= "00011";
		e1 <= "00011";e2 <= "11111";e3 <= "01110";e4 <= "00011";e5 <= "11110";
		
		a6 <= "00110";a7 <= "11111";a8 <= "01110";a9 <= "01110";a0 <= "01110";
		b6 <= "01100";b7 <= "00011";b8 <= "11011";b9 <= "11011";b0 <= "11011";
		c6 <= "11110";c7 <= "00011";c8 <= "01110";c9 <= "01111";c0 <= "11011";
		d6 <= "11011";d7 <= "00110";d8 <= "11011";d9 <= "00110";d0 <= "11011";
		e6 <= "01110";e7 <= "01100";e8 <= "01110";e9 <= "01100";e0 <= "01110";
		
		process (clk25, X, Y, left_player, right_player, rgb_in)
		begin 
			if clk25'event and clk25 = '1' then
				if reset = '1' then
					left_player <= 0;
					right_player <= 0;
				end if;
				if pointLeft = '1' then
					left_player <= left_player + 1;
					if left_player > 8 then
						left_player <= 9;
					end if;
				end if;
				if pointRight = '1' then
					right_player <= right_player + 1;
					if right_player > 8 then
						right_player <= 9;
					end if;
				end if;
			end if;
			
			if (X > 38) and (X < 58) and (Y > 18) and (Y < 38) then --Player 1 Score box
				case left_player is
				when 0 => case Y is
								when 23 => chosen_number_part <= a0;
								when 24 => chosen_number_part <= a0;
								when 25 => chosen_number_part <= b0;
								when 26 => chosen_number_part <= b0;
								when 27 => chosen_number_part <= c0;
								when 28 => chosen_number_part <= c0;
								when 29 => chosen_number_part <= d0;
								when 30 => chosen_number_part <= d0;
								when 31 => chosen_number_part <= e0;
								when 32 => chosen_number_part <= e0;
								when others => chosen_number_part <= "00000";
							end case;
				when 1 => case Y is
								when 23 => chosen_number_part <= a1;
								when 24 => chosen_number_part <= a1;
								when 25 => chosen_number_part <= b1;
								when 26 => chosen_number_part <= b1;
								when 27 => chosen_number_part <= c1;
								when 28 => chosen_number_part <= c1;
								when 29 => chosen_number_part <= d1;
								when 30 => chosen_number_part <= d1;
								when 31 => chosen_number_part <= e1;
								when 32 => chosen_number_part <= e1;
								when others => chosen_number_part <= "00000";
							end case;
				when 2 => case Y is
								when 23 => chosen_number_part <= a2;
								when 24 => chosen_number_part <= a2;
								when 25 => chosen_number_part <= b2;
								when 26 => chosen_number_part <= b2;
								when 27 => chosen_number_part <= c2;
								when 28 => chosen_number_part <= c2;
								when 29 => chosen_number_part <= d2;
								when 30 => chosen_number_part <= d2;
								when 31 => chosen_number_part <= e2;
								when 32 => chosen_number_part <= e2;
								when others => chosen_number_part <= "00000";
							end case;
				when 3 => case Y is
								when 23 => chosen_number_part <= a3;
								when 24 => chosen_number_part <= a3;
								when 25 => chosen_number_part <= b3;
								when 26 => chosen_number_part <= b3;
								when 27 => chosen_number_part <= c3;
								when 28 => chosen_number_part <= c3;
								when 29 => chosen_number_part <= d3;
								when 30 => chosen_number_part <= d3;
								when 31 => chosen_number_part <= e3;
								when 32 => chosen_number_part <= e3;
								when others => chosen_number_part <= "00000";
							end case;
				when 4 => case Y is
								when 23 => chosen_number_part <= a4;
								when 24 => chosen_number_part <= a4;
								when 25 => chosen_number_part <= b4;
								when 26 => chosen_number_part <= b4;
								when 27 => chosen_number_part <= c4;
								when 28 => chosen_number_part <= c4;
								when 29 => chosen_number_part <= d4;
								when 30 => chosen_number_part <= d4;
								when 31 => chosen_number_part <= e4;
								when 32 => chosen_number_part <= e4;
								when others => chosen_number_part <= "00000";
							end case;
				when 5 => case Y is
								when 23 => chosen_number_part <= a5;
								when 24 => chosen_number_part <= a5;
								when 25 => chosen_number_part <= b5;
								when 26 => chosen_number_part <= b5;
								when 27 => chosen_number_part <= c5;
								when 28 => chosen_number_part <= c5;
								when 29 => chosen_number_part <= d5;
								when 30 => chosen_number_part <= d5;
								when 31 => chosen_number_part <= e5;
								when 32 => chosen_number_part <= e5;
								when others => chosen_number_part <= "00000";
							end case;
				when 6 => case Y is
								when 23 => chosen_number_part <= a6;
								when 24 => chosen_number_part <= a6;
								when 25 => chosen_number_part <= b6;
								when 26 => chosen_number_part <= b6;
								when 27 => chosen_number_part <= c6;
								when 28 => chosen_number_part <= c6;
								when 29 => chosen_number_part <= d6;
								when 30 => chosen_number_part <= d6;
								when 31 => chosen_number_part <= e6;
								when 32 => chosen_number_part <= e6;
								when others => chosen_number_part <= "00000";
							end case;
				when 7 => case Y is
								when 23 => chosen_number_part <= a7;
								when 24 => chosen_number_part <= a7;
								when 25 => chosen_number_part <= b7;
								when 26 => chosen_number_part <= b7;
								when 27 => chosen_number_part <= c7;
								when 28 => chosen_number_part <= c7;
								when 29 => chosen_number_part <= d7;
								when 30 => chosen_number_part <= d7;
								when 31 => chosen_number_part <= e7;
								when 32 => chosen_number_part <= e7;
								when others => chosen_number_part <= "00000";
							end case;
				when 8 => case Y is
								when 23 => chosen_number_part <= a8;
								when 24 => chosen_number_part <= a8;
								when 25 => chosen_number_part <= b8;
								when 26 => chosen_number_part <= b8;
								when 27 => chosen_number_part <= c8;
								when 28 => chosen_number_part <= c8;
								when 29 => chosen_number_part <= d8;
								when 30 => chosen_number_part <= d8;
								when 31 => chosen_number_part <= e8;
								when 32 => chosen_number_part <= e8;
								when others => chosen_number_part <= "00000";
							end case;
				when 9 => case Y is
								when 23 => chosen_number_part <= a9;
								when 24 => chosen_number_part <= a9;
								when 25 => chosen_number_part <= b9;
								when 26 => chosen_number_part <= b9;
								when 27 => chosen_number_part <= c9;
								when 28 => chosen_number_part <= c9;
								when 29 => chosen_number_part <= d9;
								when 30 => chosen_number_part <= d9;
								when 31 => chosen_number_part <= e9;
								when 32 => chosen_number_part <= e9;
								when others => chosen_number_part <= "00000";
							end case;
				when others => chosen_number_part <= "00000";
				end case;
				
				case X is
					when 43 => rgb_out <= chosen_number_part(1) & chosen_number_part(1) & chosen_number_part(1);
					when 44 => rgb_out <= chosen_number_part(1) & chosen_number_part(1) & chosen_number_part(1);
					when 45 => rgb_out <= chosen_number_part(2) & chosen_number_part(2) & chosen_number_part(2);
					when 46 => rgb_out <= chosen_number_part(2) & chosen_number_part(2) & chosen_number_part(2);
					when 47 => rgb_out <= chosen_number_part(3) & chosen_number_part(3) & chosen_number_part(3);
					when 48 => rgb_out <= chosen_number_part(3) & chosen_number_part(3) & chosen_number_part(3);
					when 49 => rgb_out <= chosen_number_part(4) & chosen_number_part(4) & chosen_number_part(4);
					when 50 => rgb_out <= chosen_number_part(4) & chosen_number_part(4) & chosen_number_part(4);
					when 51 => rgb_out <= chosen_number_part(5) & chosen_number_part(5) & chosen_number_part(5);
					when 52 => rgb_out <= chosen_number_part(5) & chosen_number_part(5) & chosen_number_part(5);
					when others => rgb_out <= "000";
				end case;
			elsif (X > 592) and (X < 612) and (Y > 18) and (Y < 38) then --Player 2 Score box
				case right_player is
				when 0 => case Y is
								when 23 => chosen_number_part <= a0;
								when 24 => chosen_number_part <= a0;
								when 25 => chosen_number_part <= b0;
								when 26 => chosen_number_part <= b0;
								when 27 => chosen_number_part <= c0;
								when 28 => chosen_number_part <= c0;
								when 29 => chosen_number_part <= d0;
								when 30 => chosen_number_part <= d0;
								when 31 => chosen_number_part <= e0;
								when 32 => chosen_number_part <= e0;
								when others => chosen_number_part <= "00000";
							end case;
				when 1 => case Y is
								when 23 => chosen_number_part <= a1;
								when 24 => chosen_number_part <= a1;
								when 25 => chosen_number_part <= b1;
								when 26 => chosen_number_part <= b1;
								when 27 => chosen_number_part <= c1;
								when 28 => chosen_number_part <= c1;
								when 29 => chosen_number_part <= d1;
								when 30 => chosen_number_part <= d1;
								when 31 => chosen_number_part <= e1;
								when 32 => chosen_number_part <= e1;
								when others => chosen_number_part <= "00000";
							end case;
				when 2 => case Y is
								when 23 => chosen_number_part <= a2;
								when 24 => chosen_number_part <= a2;
								when 25 => chosen_number_part <= b2;
								when 26 => chosen_number_part <= b2;
								when 27 => chosen_number_part <= c2;
								when 28 => chosen_number_part <= c2;
								when 29 => chosen_number_part <= d2;
								when 30 => chosen_number_part <= d2;
								when 31 => chosen_number_part <= e2;
								when 32 => chosen_number_part <= e2;
								when others => chosen_number_part <= "00000";
							end case;
				when 3 => case Y is
								when 23 => chosen_number_part <= a3;
								when 24 => chosen_number_part <= a3;
								when 25 => chosen_number_part <= b3;
								when 26 => chosen_number_part <= b3;
								when 27 => chosen_number_part <= c3;
								when 28 => chosen_number_part <= c3;
								when 29 => chosen_number_part <= d3;
								when 30 => chosen_number_part <= d3;
								when 31 => chosen_number_part <= e3;
								when 32 => chosen_number_part <= e3;
								when others => chosen_number_part <= "00000";
							end case;
				when 4 => case Y is
								when 23 => chosen_number_part <= a4;
								when 24 => chosen_number_part <= a4;
								when 25 => chosen_number_part <= b4;
								when 26 => chosen_number_part <= b4;
								when 27 => chosen_number_part <= c4;
								when 28 => chosen_number_part <= c4;
								when 29 => chosen_number_part <= d4;
								when 30 => chosen_number_part <= d4;
								when 31 => chosen_number_part <= e4;
								when 32 => chosen_number_part <= e4;
								when others => chosen_number_part <= "00000";
							end case;
				when 5 => case Y is
								when 23 => chosen_number_part <= a5;
								when 24 => chosen_number_part <= a5;
								when 25 => chosen_number_part <= b5;
								when 26 => chosen_number_part <= b5;
								when 27 => chosen_number_part <= c5;
								when 28 => chosen_number_part <= c5;
								when 29 => chosen_number_part <= d5;
								when 30 => chosen_number_part <= d5;
								when 31 => chosen_number_part <= e5;
								when 32 => chosen_number_part <= e5;
								when others => chosen_number_part <= "00000";
							end case;
				when 6 => case Y is
								when 23 => chosen_number_part <= a6;
								when 24 => chosen_number_part <= a6;
								when 25 => chosen_number_part <= b6;
								when 26 => chosen_number_part <= b6;
								when 27 => chosen_number_part <= c6;
								when 28 => chosen_number_part <= c6;
								when 29 => chosen_number_part <= d6;
								when 30 => chosen_number_part <= d6;
								when 31 => chosen_number_part <= e6;
								when 32 => chosen_number_part <= e6;
								when others => chosen_number_part <= "00000";
							end case;
				when 7 => case Y is
								when 23 => chosen_number_part <= a7;
								when 24 => chosen_number_part <= a7;
								when 25 => chosen_number_part <= b7;
								when 26 => chosen_number_part <= b7;
								when 27 => chosen_number_part <= c7;
								when 28 => chosen_number_part <= c7;
								when 29 => chosen_number_part <= d7;
								when 30 => chosen_number_part <= d7;
								when 31 => chosen_number_part <= e7;
								when 32 => chosen_number_part <= e7;
								when others => chosen_number_part <= "00000";
							end case;
				when 8 => case Y is
								when 23 => chosen_number_part <= a8;
								when 24 => chosen_number_part <= a8;
								when 25 => chosen_number_part <= b8;
								when 26 => chosen_number_part <= b8;
								when 27 => chosen_number_part <= c8;
								when 28 => chosen_number_part <= c8;
								when 29 => chosen_number_part <= d8;
								when 30 => chosen_number_part <= d8;
								when 31 => chosen_number_part <= e8;
								when 32 => chosen_number_part <= e8;
								when others => chosen_number_part <= "00000";
							end case;
				when 9 => case Y is
								when 23 => chosen_number_part <= a9;
								when 24 => chosen_number_part <= a9;
								when 25 => chosen_number_part <= b9;
								when 26 => chosen_number_part <= b9;
								when 27 => chosen_number_part <= c9;
								when 28 => chosen_number_part <= c9;
								when 29 => chosen_number_part <= d9;
								when 30 => chosen_number_part <= d9;
								when 31 => chosen_number_part <= e9;
								when 32 => chosen_number_part <= e9;
								when others => chosen_number_part <= "00000";
							end case;
				when others => chosen_number_part <= "00000";
				end case;
				
				case X is
					when 597 => rgb_out <= chosen_number_part(1) & chosen_number_part(1) & chosen_number_part(1);
					when 598 => rgb_out <= chosen_number_part(1) & chosen_number_part(1) & chosen_number_part(1);
					when 599 => rgb_out <= chosen_number_part(2) & chosen_number_part(2) & chosen_number_part(2);
					when 600 => rgb_out <= chosen_number_part(2) & chosen_number_part(2) & chosen_number_part(2);
					when 601 => rgb_out <= chosen_number_part(3) & chosen_number_part(3) & chosen_number_part(3);
					when 602 => rgb_out <= chosen_number_part(3) & chosen_number_part(3) & chosen_number_part(3);
					when 603 => rgb_out <= chosen_number_part(4) & chosen_number_part(4) & chosen_number_part(4);
					when 604 => rgb_out <= chosen_number_part(4) & chosen_number_part(4) & chosen_number_part(4);
					when 605 => rgb_out <= chosen_number_part(5) & chosen_number_part(5) & chosen_number_part(5);
					when 606 => rgb_out <= chosen_number_part(5) & chosen_number_part(5) & chosen_number_part(5);
					when others => rgb_out <= "000";
				end case;
			else
				rgb_out <= rgb_in;
			end if;
		end process;
		
		gameover : process (left_player, right_player)
		begin
			if left_player=9 or right_player = 9 then
				game_over <= '1';
			else game_over <= '0';
			end if;		
		end process gameover;

end Behavioral;

