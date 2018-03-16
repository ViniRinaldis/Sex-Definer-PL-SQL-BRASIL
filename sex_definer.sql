CREATE OR REPLACE FUNCTION sex_definer(varchar) RETURNS varchar AS $$
  DECLARE
    masc varchar = 'masculino';
    fem varchar = 'feminino';
    answer varchar;
  BEGIN
    IF $1 SIMILAR TO '(%a)' THEN
      IF $1 SIMILAR TO '(%wilba|%rba|%vica|%milca|%meida|%randa|%uda|%rrea|%afa|%ha|%cha|%oha|%apha|%natha|elia|%rdelia|%remia|%aja|%rja|%aka|%kka|ala|%gla|%tila|%vila|%cola|%orla|%nama|%yama|%inima|%jalma|%nma|%urma|%zuma|%gna|%tanna|%pna|%moa|%jara|%tara|%guara|%beira|%veira|%kira|%uira|%pra|%jura|%mura|%tura|%asa|%assa|%ussa|iata|%onata|%irata|%leta|%preta|%jota|%ista|%aua|%dua|%hua|%qua|%ava|%dva|iva|%silva|%ova|%rva|%wa|%naya|%ouza)' THEN
        answer := masc;
      ELSE
        answer := fem;
      END IF;
    ELSIF $1 SIMILAR TO '(%b)' THEN
      IF $1 SIMILAR TO '(%inadab|%a)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%c)' THEN
      IF $1 SIMILAR TO '(%lic|%tic|%a)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%d)' THEN
      IF $1 SIMILAR TO '(%lic|%tic)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%e)' THEN
      IF $1 SIMILAR TO '(%dae|%jae|%kae|%oabe|%ube|%lace|%dece|%felice|%urice|%nce|%bruce|%dade|%bede|ide|aide|%taide|%cide|%alide|%vide|%alde|%hilde|%asenilde|%nde|%ode|%leege|%ege|%oge|%rge|%uge|%phe|%bie|%elie|%llie|%nie|%je|%eke|%ike|%olke|%nke|%oke|%ske|%uke|%tale|%uale|%vale|%cle|%rdele|%gele|%tiele|%nele|%ssele|%uele|%hle|%tabile|%lile|%rile|%delle|%ole|%yle|%ame|%aeme|%deme|%ime|%lme|%rme|%sme|%ume|%yme|%phane|%nane|%ivane|%alvane|%elvane|%gilvane|%ovane|%dene|%ociene|%tiene|%gilene|%uslene|rene|%vaine|%waine|%aldine|%udine|%mine|%nine|%oine|%rtine|%vanne|%renne|%hnne|%ionne|%cone|%done|%eone|%fone|%ecione|%alcione|%edione|%hione|%jone|%rone|%tone|%rne|%une|%ioe|%noe|%epe|%ipe|%ope|%ppe|%ype|%sare|%bre|%dre|%bere|%dere|%fre|%aire|%hire|%ore|%rre|%tre|%dse|%ese|%geise|%wilse|%jose|%rse|%esse|%usse|%use|%aete|%waldete|%iodete|%sdete|%aiete|%nisete|%ezete|%nizete|%dedite|%uite|%lte|%ante|%ente|%arte|%laerte|%herte|%ierte|%reste|%aue|%gue|%oue|%aque|%eque|%aique|%inique1|%rique|%lque|%oque|%rque|%esue|%osue|%ozue|%tave|%ive|%ove|%we|%ye|ze|%aze|%eze|%uze|%o|%on)' THEN
        answer := masc;
      ELSE
        answer := fem;
      END IF;
    ELSIF $1 SIMILAR TO '(%f)' THEN
      IF $1 SIMILAR TO '(%ane|%a)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%g)' THEN
      IF $1 SIMILAR TO '(%eig|%heng|%mping|%bong|%jung|%a)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%h)' THEN
      IF $1 SIMILAR TO '(%kah|%nah|%rah|%sh|%beth|%reth|%seth|%lizeth|%rizeth|edith|udith$|ruth)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%i)' THEN
      IF $1 SIMILAR TO '(%elai|%anai|%onai|%abi|%djaci|%glaci|%maraci|iraci|%diraci|%loraci|%ildeci|neci|%aici|%arici|elci|%nci|%oci|%uci|%kadi|%leidi|%ridi|%hudi|%hirlei|%sirlei|mei|%rinei|%ahi|ji|%iki|%isuki|yuki|%gali|%rali|%ngeli|%ieli|%keli|%leli|%neli|%seli|%ueli|%veli|%zeli|%ili|%helli|%kelli|%arli|%wanderli|%hami|%iemi|%oemi|%romi|%tmi|%ssumi|%yumi|%zumi|%bani|%iani|%irani|%sani|%tani|%luani|vani|ivani|%ilvani|%yani|eni|%ceni|%geni|%leni|%ureni|oseni|%veni|%zeni|%cini|%eini|%lini|%jenni|%moni|%uni|%mari|%veri|%hri|%aori|%ayuri|%lsi|%rsi|%gessi|%roti|%sti|%retti|%uetti|%aui|%iavi|zi|%zazi|%suzi)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%j)' THEN
      answer := masc;
    ELSIF $1 SIMILAR TO '(%k)' THEN
      IF $1 SIMILAR TO '(%nak|%lk)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%l)' THEN
      IF $1 SIMILAR TO '(%mal|bel|%mabel|%rabel|%sabel|%zabel|%achel|%thel|%quel|%gail|%lenil|%mell|%ol)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%m)' THEN
      IF $1 SIMILAR TO '(%liliam|%riam|%viam|%miram|%eem|%uelem|%mem|%rem)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%n)' THEN
      IF $1 SIMILAR TO '(%lilian|%lillian|%marian|%irian|%yrian|%ivian|%elan|%rilan|%usan|%nivan|%arivan|%iryan|%uzan|%ohen|%cken|%elen|%llen|%men|%aren|%sten|%rlein|%kelin|%velin|%smin|%rin|%istin|%rstin|ann|%ynn|%haron|%kun|%sun|%yn)' THEN
        answer := fem;
      ELSE 
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%o)' THEN
      IF $1 SIMILAR TO '(%eicao|%eco|%mico|%tico|do|ho|%ocio|%ako|%eko|%keiko|%seiko|%chiko|%shiko|%akiko|%ukiko|%miko|%riko|%tiko|%oko|%ruko|%suko|%yuko|%izuko|%uelo|%stano|%maurino|%orro|%jeto|%mento|%luo)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%p)' THEN
      IF $1 SIMILAR TO '(%yip)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%r)' THEN
      IF $1 SIMILAR TO '(%lar|%lamar|%zamar|%ycimar|%idimar|%eudimar|%olimar|%lsimar|%lzimar|%erismar|%edinar|%iffer|%ifer|%ather|%sther|%esper|ester|%madair|%eclair|%olair|nair|%glacir|nadir|%ledir|vanir|evanir|cenir|%elenir|%zenir|%ionir|%fior|%eonor|%racyr)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%s)' THEN
      IF $1 SIMILAR TO '(%unidas|%katias|%rces|%cedes|%oides|%aildes|%derdes|%urdes|%leudes|%iudes|%irges|%lkes|%geles|%elenes|%gnes|ines|%aines|dines|%rines|%pes|%deres|mires|%amires|%ores|%neves|%hais|%lais|%tais|%adis|%alis|elis|%ilis|%llis|%ylis|%ldenis|%annis|%ois|%aris|cris|iris|%miris|%siris|%doris|%yris|%isis|%rtis|%zis|%heiros|%dys|%inys|%rys)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%t)' THEN
      IF $1 SIMILAR TO '(%bet|%ret|edit|%git|%est|%nett|%itt)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%u)' THEN
      IF $1 SIMILAR TO '(du|%alu|miharu|su)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%v|%w|%x)' THEN
      answer := masc;
    ELSIF $1 SIMILAR TO '(%y)' THEN
      IF $1 SIMILAR TO '(%may|%anay|%ionay|%lacy|aracy|iracy|%doracy|%vacy|%aricy|%oalcy|%ncy|%nercy|%ucy|%lady|%hedy|%hirley|%raney|%gy|%ahy|%rothy|%taly|%aely|%ucely|%gely|%kely|%nely|%sely|%uely|%vely|%zely|%aily|%rily|%elly|%marly|%mony|%tamy|%iany|%irany|%sany|%uany|%lvany|%wany|%geny|%leny|%ueny|%anny|%mary|%imery|%smery|%iry|%rory|%isy|%osy|%usy|%ty|)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSIF $1 SIMILAR TO '(%z)' THEN
      IF $1 SIMILAR TO '(inez|%rinez|%derez|%liz|%riz|%uz)' THEN
        answer := fem;
      ELSE
        answer := masc;
      END IF;
    ELSE
      answer := 'invalid';
    END IF;
    RETURN answer;
  END;
$$ LANGUAGE plpgsql;
