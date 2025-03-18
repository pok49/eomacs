;;; quail/e8.el -- Quail package for inputting Esperanto -*- coding: utf-8 -*-

;; Copyright (C) 1999, 2025 by Sergio Pokrovskij
;; Many TeX definitions are stolen from unicode-input.el by Florian Weimer

;; Keywords: multilingual, input method, Esperanto, TeX

;; This file is not a part of GNU Emacs.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Code:

(require 'quail)

(quail-define-package
 "e8" "utf-8" "ŭ8" t
 "A direct method to input Esperanto letters and other characters
to UTF-8 encoding using TeX-ish names.

Semicolon (;) is used as a modifyer.  In order to input
\t“eĥoŝanĝo ĉiuĵaŭde” type
\t“e]oqanyo xiu[awde”; in order to input either of qwyx[]{} precede
it with semicolon.

Other characters:
    effect   | prefix | examples
 ------------+--------+----------
    acute    |   ;'   | ;'a -> á   '' -> ?´
    grave    |   ;`   | ;`a -> à
  circumflex |   ;^   | ;^a -> â
  diaeresis  |   ;\"  | ;\"a -> ä  ;\"{} -> ¨
   cedilla   |   ;c   | ;cc -> ç   ;c{} -> ¸
  dot above  |   ;.   | ;.g -> ġ   ;.z -> ż   ;.I -> İ
" nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 ("x"  ?ĉ) ("X"  ?Ĉ) (";x" ?x) (";X" ?X)
 ("]"  ?ĥ) ("}"  ?Ĥ) (";]" 93) (";}" ?})           
 ("y"  ?ĝ) ("Y"  ?Ĝ) (";y" ?y) (";Y" ?Y)
 ("["  ?ĵ) ("{"  ?Ĵ) (";[" 91) (";{" ?{)
 ("q"  ?ŝ) ("Q"  ?Ŝ) (";q" ?q) (";Q" ?Q)
 ("w"  ?ŭ) ("W"  ?Ŭ) (";w" ?w) (";W" ?W)

;; Apostrofoj:
 (";`" ?ʼ)	; letter apostrophe (U+02BC), or
 (";," ?’)	; single comma quotation mark (U+2019)

; Punctuation:
;; Quotation marks:
 (";<<"  ?«) (";>>"  ?») 		; «foo» or »bar«
 (";.<"  ?‹) (";.>"  ?›)		; ‹foo› or ›bar‹
 (";\"<" ?“) (";\">" ?”) (";\"," ?„)	; “foo” or „bar“
 (";'<"  ?‘) (";'>"  ?’) (";',"  ?‚)	; ‘foo’ or ‚bar‘

 (";_"   ? ) ; NBSP (U+00A0)
 (";-- " ?­) ; SHY (U+00AD)
 (";---" ?—) ; em dash
 (";--." ?—) ; en dash
; minuso ‒ ??--------------(FIG, MATH)
 (";.."  ?…)

 (";!!" ?¡) (";??" ?¿) ; inverted ! and ?
 (";SO" ?§) (";PP"  ?¶)

 (";oo" ?°)
 (";%o" ?‰)  ; per mille
 (";.-"  ?·) ; cdot
 (";.="  ?•) ; bullet
 (";!^"  ?¦) ; broken bar

 (";Oc"  ?©)  ; copy
 (";Or"  ?®)  ; Registered
 (";TM"  ?™)  ; Trade Mark

 ;; Currency signs
 (";B|" ?₿)
 (";c|" ?¢)
 (";L-" ?£) ; sterling
 (";L=" ?₤) ; lira sign
 (";C=" ?€) (";E=" ?€)
 (";P-" ?₽) ; ruble
 (";XO" ?¤)
 (";Y=" ?¥)

; Extended Latin 
;; Some ligatures
 (";AA" ?Å) (";aa" ?å)
 (";AE" ?Æ) (";ae" ?æ)
 (";DH" ?Ð) (";dh" ?ð)
 (";DJ" ?Đ) (";dj" ?đ)
 (";=H" ?Ħ) (";=h" ?ħ)
 (";IJ" ?Ĳ) (";ij" ?ĳ) ; Dutch ij
 (";NG" ?Ŋ) (";ng" ?ŋ)
 (";OE" ?Œ) (";oe" ?œ)
 (";fs" ?ſ) ; long s
 (";ss" ?ß) (";SS" ?ẞ)
 (";TH" ?Þ) (";th" ?þ)

 (";/O" ?Ø) (";/o" ?ø)
 (";/L" ?Ł) (";/l" ?ł)
 (";Lp" ?Ŀ) (";lp" ?ŀ) ; Catalan l dot, as in paraŀlel

 (";.C" ?Ċ) (";.c" ?ċ)
 (";.E" ?Ė) (";.e" ?ė)
 (";.G" ?Ġ) (";.g" ?ġ)
 (";.I" ?İ) (";i" ?ı) ; also \imath
 (";.Z" ?Ż) (";.z" ?ż)

 (";'A" ?Á) (";'a" ?á)
 (";'C" ?Ć) (";'c" ?ć)
 (";'E" ?É) (";'e" ?é)
 (";'I" ?Í) (";'i" ?í)
 (";'N" ?Ń) (";'n" ?ń)
 (";'O" ?Ó) (";'o" ?ó)
 (";'R" ?Ŕ) (";'r" ?ŕ)
 (";'S" ?Ś) (";'s" ?ś)
 (";'U" ?Ú) (";'u" ?ú)
 (";'Z" ?Ź) (";'z" ?ź)

 (";\"A" ?Ä) (";\"a" ?ä)
 (";\"E" ?Ë) (";\"e" ?ë)
 (";\"I" ?Ï) (";\"i" ?ï)
 (";\"O" ?Ö) (";\"o" ?ö)
 (";\"U" ?Ü) (";\"u" ?ü)


 (";`A" ?À) (";`a" ?à)
 (";`E" ?È) (";`e" ?è)
 (";`I" ?Ì) (";`i" ?ì)
 (";`O" ?Ò) (";`o" ?ò)
 (";`U" ?Ù) (";`u" ?ù)

 (";^A" ?Â) (";^a" ?â)
 (";^C" ?Ĉ) (";^c" ?ĉ)
 (";^E" ?Ê) (";^e" ?ê)
 (";^G" ?Ĝ) (";^g" ?ĝ)
 (";^H" ?Ĥ) (";^h" ?ĥ)
 (";^I" ?Î) (";^i" ?î)
 (";^J" ?Ĵ) (";^j" ?ĵ)
 (";^O" ?Ô) (";^o" ?ô)
 (";^S" ?Ŝ) (";^s" ?ŝ)
 (";^U" ?Û) (";^u" ?û)

 (";cC" ?Ç) (";cc" ?ç)
 (";cS" ?Ş) (";cs" ?ş)

 (";=A" ?Ā) (";=a" ?ā)
 (";=E" ?Ē) (";=e" ?ē)
 (";=I" ?Ī) (";=i" ?ī)
 (";=U" ?Ū) (";=u" ?ū)

 (";uA" ?Ă) (";ua" ?ă)
 (";uG" ?Ğ) (";ug" ?ğ)
 (";uI" ?Ĭ) (";ui" ?ĭ)
 (";uO" ?Ŏ) (";uo" ?ŏ)
 (";uU" ?Ŭ) (";uu" ?ŭ)

 (";vC" ?Č) (";vc" ?č)
 (";vD" ?Ď) (";vd" ?ď)
 (";vL" ?Ľ) (";vl" ?ľ)
 (";vN" ?Ň) (";vn" ?ň)
 (";vR" ?Ř) (";vr" ?ř)
 (";vS" ?Š) (";vs" ?š)
 (";vZ" ?Ž) (";vz" ?ž)

 (";kA" ?Ą) (";ka" ?ą)
 (";kE" ?Ę) (";ke" ?ę)
 (";kI" ?Į) (";ki" ?į)
 (";kU" ?Ų) (";ku" ?ų)

 (";rU" ?Ů) (";ru" ?ů) ; \r[ing] like en EuroTeX

 (";~N" ?Ñ) (";~n" ?ñ)
 (";~O" ?Õ) (";~o" ?õ)

;; SAMPA:
 (";\"." ?ˈ) ; primary stress
 (";%."  ?ˌ) ; secondary stress
 ; æ ø œ ð ŋ ... are “Ligatures” (which see)
 (";1" ?ɨ)  ; RU ы
 (";@" ?ə)  ; schwa
 (";3" ?ɜ)  ; EN bird
 (";E." ?ɛ) ; EN bed, FR même
 (";I." ?ɪ)
 (";J." ?ɲ) ; ES año, FR oignon
 (";L." ?ʎ)
 (";O." ?ɔ) ; EN law, caught
 (";Q." ?ɒ) ; BrE not, cough
 (";S." ?ʃ)
 (";T." ?θ) ; la greka ";theta"
 (";U." ?ʊ) ; EN put
 (";V." ?ʌ) ; EN run, enough
 (";Z." ?ʒ)

; Lowercase Greek letters
 (";alpha" ?α)
 (";beta" ?β)
 (";gamma" ?γ)
 (";delta" ?δ)
 (";epsilon" ?ε)
 (";zeta" ?ζ)
 (";eta" ?η)
 (";theta" ?θ) ; ";T." en SAMPA
 (";vartheta" ?ϑ)
 (";iota" ?ι)
 (";kappa" ?κ)
 (";lambda" ?λ)
 (";mu" ?μ)
 (";nu" ?ν)
 (";ks" ?ξ) ; pok: la TeX'a \xi tro ofte maloportunas (aξs <= axis)
 (";pi" ?π)
 (";varpi" ?ϖ)
 (";rho" ?ρ)
 (";varrho" ?ϱ)
 (";sigma" ?σ)
 (";varsigma" ?ς)
 (";tau" ?τ)
 (";upsilon" ?υ)
 (";phi" ?ϕ)
 (";varphi" ?φ)
 (";chi" ?χ)
 (";psi" ?ψ)
 (";omega" ?ω)

; Uppercase Greek letters
 (";Gamma" ?Γ)
 (";Delta" ?Δ)
 (";Theta" ?Θ)
 (";Lambda" ?Λ)
 (";Ks" ?Ξ) ; pok; vd ;ksi
 (";Pi" ?Π)
 (";Sigma" ?Σ)
 (";Upsilon" ?Υ)
 (";Phi" ?Φ)
 (";Psi" ?Ψ)
 (";Omega" ?Ω)

; Miscellaneous symbols
 (";aleph" ?ℵ)
 (";hbar" ?ℏ)
 (";ell" ?ℓ)
 (";wp" ?℘)
 (";Re" ?ℜ)
 (";Im" ?ℑ)
 (";lnot" ?¬)
 (";partial" ?∂)
 (";88" ?∞)
 (";prime" ?′)
 (";emptyset" ?∅)
 (";nabla" ?∇)
 (";surd" ?√)
 (";top" ?⊤)
 (";bot" ?⊥)
 (";|" ?∥)
 (";angle" ?∠)
 (";triangle" ?△)
; (";;" ?\;)
 (";forall" ?∀)
 (";exists" ?∃)
 (";flat" ?♭)
 (";natural" ?♮)
 (";sharp" ?♯)
 (";clubsuit" ?♣)
 (";diamondsuit" ?♢)
 (";heartsuit" ?♡)
 (";spadesuit" ?♠)
 (";mho" ?℧)

; MATH
;; “Large” operators
 (";sum" ?∑)
 (";prod" ?∏)
 (";coprod" ?∐)
 (";int" ?∫)
 (";oint" ?∮)
 (";bigcap" ?⋂)
 (";bigcup" ?⋃)
 (";bigvee" ?⋁)
 (";bigwedge" ?⋀)

 ;; Binary operations
 (";+-" ?±)
 (";-+" ?∓)
 (";setminus" ?∖)
 (";xx" ?×) 
 (";ast" ?∗)
 (";star" ?⋆)
 (";diamond" ?⋄)
 (";circ" ?∘)
 (";div" ?÷)
 (";cap" ?∩)
 (";cup" ?∪)
 (";uplus" ?⊎)
 (";sqcap" ?⊓)
 (";sqcup" ?⊔)
 (";triangleleft" ?◁)
 (";triangleright" ?▷)
 (";wr" ?≀)
 (";bigcirc" ?◯)
 (";bigtriangleup" ?△)
 (";bigtriangledown" ?▽)
 (";land" ?∧)
 (";lor" ?∨)
 (";oplus" ?⊕)
 (";ominus" ?⊖)
 (";otimes" ?⊗)
 (";oslash" ?⊘)
 (";odot" ?⊙)
 (";dagger" ?†)
 (";ddagger" ?‡)
 (";amalg" ?∐)

 ;; Relations

 (";/=" ?≠)
 (";<=" ?≤)
 (";>=" ?≥)
 (";=_" ?≡)
 (";~~" ?≈)
 
 (";prec" ?≺)
 (";preceq" ?≼)
 (";ll" ?≪)
 (";subset" ?⊂)
 (";subseteq" ?⊆)
 (";sqsubseteq" ?⊑)
 (";in" ?∈)
 (";vdash" ?⊢)
 (";smile" ?⌣)
 (";frown" ?⌢)
 (";succ" ?≻)
 (";succeq" ?≽)
 (";gg" ?≫)
 (";supset" ?⊃)
 (";supseteq" ?⊇)
 (";sqsupseteq" ?⊒)
 (";ni" ?∋)
 (";dashv" ?⊣)
 (";mid" ?∣)
 (";parallel" ?∥)
 (";sim" ?∼)
 (";simeq" ?≃)
 (";asymp" ?≍)
 (";cong" ?≅)
 (";bowtie" ?⋈)
 (";propto" ?∝)
 (";models" ?⊨)
 (";doteq" ?≐)
 (";perp" ?⊥)

 ;; Negated relations

 (";not<" ?≮)
 (";not;leq" ?≰)
 (";not;prec" ?⊀)
 (";not;preceq" ?⋠)
 (";not;subset" ?⊄)
 (";not;subseteq" ?⊈)
 (";not;sqsubseteq" ?⋢)
 (";not>" ?≯)
 (";not;geq" ?≱)
 (";not;succ" ?⊁)
 (";not;succeq" ?⋡)
 (";not;supset" ?⊅)
 (";not;supseteq" ?⊉)
 (";not;sqsupseteq" ?⋣)
 (";not;equiv" ?≢)
 (";not;sim" ?≁)
 (";not;simeq" ?≄)
 (";not;approx" ?≉)
 (";not;cong" ?≇)
 (";not;asymp" ?≭)

 ;; Arrows

 (";<-" ?←)
 (";=<" ?⇐) ; cf ≤ !!
 (";->" ?→)
 (";=>" ?⇒)
 (";<->" ?↔)
 (";|^" ?↑) (";|v" ?↓)
 (";=^" ?⇑) (";=v" ?⇓)

 (";Leftrightarrow" ?⇔)
 (";mapsto" ?↦)
 (";hookleftarrow" ?↩)
 (";leftharpoonup" ?↼)
 (";leftharpoondown" ?↽)
 (";rightleftharpoons" ?⇌)
 (";hookrightarrow" ?↪)
 (";rightharpoonup" ?⇀)
 (";rightharpoondown" ?⇁)
 (";searrow" ?↘)
 (";swarrow" ?↙)
 (";nearrow" ?↗)
 (";nwarrow" ?↖)
 (";updownarrow" ?↕)
 (";Updownarrow" ?⇕)
 (";nearrow" ?↗)

 ;; Openings       ;; Closings    
                                  
 (";lfloor" ?⌊)   (";rfloor" ?⌋)
 (";langle" ?〈)   (";rangle" ?〉)
 (";lceil" ?⌈)    (";rceil" ?⌉) 

 ;; Non-math symbols
 (";dag" ?†) (";ddag" ?‡)

 ;; Typographic symbols and ligatures

 (";lq" ?‘) (";rq" ?’) ; pok
 (";-" ?‐)     ; 2010 (HYPHEN)
 (";minus" ?−) ; 2212 (MINUS MATH)
 (";!" ?¡) (";?" ?¿) ; as in EuroTeX
; (";<" ?«) (";>" ?»)
 (";%" ?‱) ; pok
 (";0" ?°) ; pok, unlike TeX's \textdegree
 (";25" ?¼); 0.25, \textonequarter
 (";5" ?½) ; 0.5, \textonehalf
 (";75" ?¾); 0.75, \textthreequarters

 ;; Combining characters (to be postpositioned):
 (";'}" ?́)
 (";`}" ?̀)
 (";^}" ?̂)
(";\"}" ?̈)
 (";~}" ?̃)
 (";=}" ?̄)
 (";.}" ?̇)
 (";u}" ?̆)
 (";v}" ?̌)
 (";H}" ?̋)
 (";t}" ?͡)
 (";c}" ?̧)
 (";k}" ?̨)
 (";d}" ?̣)
 (";b}" ?̱)

 ;; Subscripts

 ("_0" ?₀)
 ("_1" ?₁)
 ("_2" ?₂)
 ("_3" ?₃)
 ("_4" ?₄)
 ("_5" ?₅)
 ("_6" ?₆)
 ("_7" ?₇)
 ("_8" ?₈)
 ("_9" ?₉)
 ("_+" ?₊)
 ("_-" ?₋)
 ("_=" ?₌)
 ("_(" ?₍)
 ("_)" ?₎)


 ;; Superscripts

 ("^0" ?⁰)
 ("^1" ?¹)
 ("^2" ?²)
 ("^3" ?³)
 ("^4" ?⁴)
 ("^5" ?⁵)
 ("^6" ?⁶)
 ("^7" ?⁷)
 ("^8" ?⁸)
 ("^9" ?⁹)
 ("^+" ?⁺)
 ("^-" ?⁻)
 ("^=" ?⁼)
 ("^(" ?⁽)
 ("^)" ?⁾)
 ("^a" ?ª) ; pok
 ("^n" ?ⁿ)
 ("^o" ?º) ; pok


  ;; \mathbb
 
  (";!C" ?ℂ)
  (";!H" ?ℍ)
  (";!N" ?ℕ)
  (";!Z" ?ℤ)
  (";!P" ?ℙ)
  (";!Q" ?ℚ)
  (";!R" ?ℝ)
)
