-- This program will calculate what grade you need on your final exam.
-- To run this function:
    -- Enter a command line
    -- Naviagate to same directory as this file
    -- ghci
    -- :load "examCalculator.hs"
    -- calcFinalGrade 91.6 89.9 20

import Text.Printf

-- This function takes a float, f, and rounds it to n digits after the decimal
roundToStr :: (PrintfArg a, Floating a) => Int -> a -> String 
roundToStr n f = if n >= 0 then printf (printf "%%0.%df" n) f else printf "%f" f

calcFinalGrade x y z = do 
    -- x = Your current grade
    -- y = Your desired Final grade
    -- z = What % your Final exam is worth
    let cur = x 
    let des = y 
    let w = z / 100
    let oppW = 1 - w 
    let top = des - (cur * oppW)
    let res = top / w 
    
    putStrLn ""
    putStrLn ( "  You will need a Final Exam grade of " ++ (roundToStr (1) res) ) 
    putStrLn ( "  if you want a Final Grade of " ++ show des)
    putStrLn ""
    
main = do
    putStrLn ""
    putStrLn "  To run the exam calculator, type:"
    putStrLn "  calcFinalGrade x y z"
    putStrLn "  where x = Your current grade"
    putStrLn "        y = Your desired final grade"
    putStrLn "        z = What % your final exam is worth"
    putStrLn ""
