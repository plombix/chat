# encoding: utf-8

require 'ffaker/name'

module FFaker
  module NameRU
    include FFaker::Name

    extend ModuleUtils
    extend self

    # Last names grammar
    LAST_NAMES = {
      male: %w(Абарун Абишев Авсюк Агаянц Адрющенков Азаркович Айзатуллов Акуненков Алабян Алвердашвили Алегин Александрович Андоловский Андрушко Анзимиров Анисимович Анпилов Аредьев Арихин Артыкнаев Артюнов Асикайнен Ахагинский Ахмедзянов Ахундзянов Ачамович Аширметов Багникян Бадашков Баздорев Базяев Балабанцев Балдихин Барчунов Бахалдин Бахонов Бачко Безин Беккерман Белоусов Бельцев Берберян Бернштейн Бессалов Биневич Бирюченко Битлер Благородов Блазнин Бойко Бордовкин Борисов Борсаков Браговский Бретнев Бричко Брыжахин Буженков Буртняк Бучников Ваиренко Васющенков Вердиянин Вирютин Воликов Волнаков Втонов Выдрич Выпирайлов Гайдашев Галабцев Ганецкий Гарбко Гарьковец Гасымов Гбидеров Гваськов Георгадзе Геркин Герливанов Гидаспов Гилюк Гладырин Глудман Глуздак Голанджан Головашеч Голынков Голяновский Гостюшин Гревизирский Грибоедов Гридасов Грустнев Губенский Гудолевич Давлетинин Денежко Джиджаев Дзеярский Долганов Долганюк Долгарев Дробуш Дружиненко Дружинкин Дымонт Дышев Евгенев Елепский Енанешников Еременко Ефимовцев Жеребченко Жутаев Забарный Загуменников Зарубенко Засенко Зашбахидзе Зворыкин Зиманенков Зубоедов Иванкович Иванковский Иванов Ивлюшин Избищев Кавин Казинец Калацкий Калуженко Камгатных Камзин Каракулян Карапай Карнацкий Карнеичев Карпышев Картманов Карцевадзе Кафтаев Кафтан Квалиашвили Квашихин Кендалиев Кирилко Климкевич Климнюк Ключенович Кобидзе Колюковский Коргутов Корленко Корлов Коробцов Коротько Корсов Кособок Коювский Крутилин Крышко Куварихин Кузьмин Купецкий Куприн Купцин Купырин Кустарников Кутиев Кухтов Кушнырь Кылосов Лабушкин Лагутаев Лагуткин Лапатиев Ларенцев Латьенов Лашевич Летшов Лечбинский Лизлов Лиштван Ловчев Ломашевич Лопонос Лотев Луговенко Ляховенко Магаметшапиев Майоров Маконько Малишевский Мамычкин Манукиан Маракшаев Марудин Марульский Маслов Матиас Матьязов Матюшкин Машурик Медведев Медвежинский Медянский Мелюшкин Мендусов Меринсон Милославов Мирошничев Мирсианов Митракович Михайлов Михитарян Михлин Мильцын Мицин Можелев Мокроус Мольвинских Монин Морадудин Моренов Мугрузин Мухаматкуров Мухляев Муюнин Наххомов Невкин Нежальский Немченинов Никоноркин Ободкин Огуркис Одокий Озепов Оковаиков Олышев Олянюк Оршаковский Остроухих Ошков Паникин Панкрушкин Паперко Пахолюк Петров Перевезев Перчуков Пидоренко Пилинский Пилищек Пипачук Пистоленко Плосконовов Подлесов Подорожний Покорчак Поладашвили Поликанин Померанцев Понченко Поскокухин Прутян Пунтиков Пусташев Пяртель Разночинцев Раслеков Рахленко Рахматуллин Ребекин Ревельский Редозубов Решетнев Римач Ройзнер Романов Рубель Руховец Сагоманян Садосюк Салошенко Сальккев Самоделко Сейсенбаев Сейтбаталов Селиончик Селуков Селюненок Семченков Серебрюхов Сидоров Скалецкий Скиженюк Скоробацкий Скрынько Слабчук Слежиков Смолянов Сморгунов Смутко Соколецкий Солонюк Старжин Страсс Стрекосов Струсов Студитских Суровкин Сченснович Сытясков Табалов Табахьян Таболов Тажвицкий Такиди Таротько Таутов Твердислов Тишайкин Ткачман Толманов Томинов Тонетов Тончиенко Топорников Торгоев Требунских Трилешинский Тряпичников Турзин Туровник Тутаров Тутейкин Тчанников Тяпко Уалентов Убкосмачев Удобников Усамединов Устилко Устькачинцев Ушахин Фалушкин Фараонов Фарбовский Фаридун Филатиков Фимошин Французов Фумич Хайтов Ханадьян Ханыгин Харехин Харламович Хволес Хитайленко Хлопонин Ходокович Хорохорин Хотунцов Цебаньков Цейнер Цепюк Чакириди Чебышов Челокян Чингузов Чипурных Чокашвили Чугров Чудных Чудоров Чумин Шабалдин Шаблин Шавердьян Шаленок Шарыпов Шеварев Шеняк Шестоперстов Шипенко Шиповсков Шкарев Шмырков Штенников Штиков Щепоков Щепотько Щептев Эдилов Элашвили Этерман Эчин Юрнев Яиченко Якишин Янович),
      female: %w(Абашникова Авекирова Агапчева Агенкова Агиева Айварова Айнутдинова Алежетдинова Алейкберова Алекперова Алимзанова Альбеева Альпатцева Андреева Аникинина Аниковская Анучкина Арисанова Арлачева Арлушкина Архангелова Астраханкина Афелова Ахилова Ачаповская Бабайцева Бабракова Байдарова Балаганина Балаганова Балдынова Баловинова Балышкина Барановская Баргугова Бардебанова Барьзева Батраева Бахшнева Бейзерова Бекмементьева Белдина Белункова Беляськова Бесова Бессчетнова Благодирова Блоха Блющицина Бобурова Богинина Болсова Бородина Босторина Брынцалова Брысковская Бубикова Бузулицкая Букаринова Булинова Бутонина Буханцова Бушевская Бушкетова Валиновская Вахрова Вахтеева Вейдова Великонская Великоруссова Венидиктова Венскова Вергилесова Верютина Ветродуева Видишева Войцеховская Волочаева Воронихина Воронянская Ворсобина Вострячкова Всеволодовская Выходова Галочкина Гарылева Гедгафова Герлова Глубокова Голованева Голодовая Голумбокова Гончаровская Гоньшева Городянская Горченкова Готавская Грабильникова Грацилева Грешищева Грешнякова Гржимальская Гузаева Гулипова Гульбинская Дашкова Деваева Декабрева Додырева Дочевская Дояматова Дубковская Думинская Дурдыева Евдашкина Евстиженкова Евтина Едомская Елецкая Елешенкова Епутаева Железная Жестякова Жилкова Забиралова Завершиева Загустина Закомоядина Закоурцева Залозная Заломаева Замарина Зановская Занцинская Занючковская Звездочкина Звержинская Зиядтдинова Зущина Иванова Ивашкива Иволга Иголкина Иднатуллина Икеряева Инелеева Иренкова Исраилова Иусова Ишинкина Кабичева Кавизина Каипова Калиновская Калинушкина Каменцева Камозина Камышкина Каннина Канькова Караульщикова Карачевская Карнилина Карпежникова Карягина Кашарова Кирилычева Кирюшенкова Клабукова Кобзина Коверенская Ковткова Когорева Козюрина Колотыркина Колушкина Комзелева Комзнкова Комитуркина Комкина Кориневская Корнюкина Корпушева Косарская Косьминина Котичева Котусева Кохтарева Кравская Кудряванова Кужненкова Куковицкая Кулакина Куличенкова Кунижева Куранчева Курепова Курлнская Курнашова Курнекова Курносенкова Курсантова Кусалова Кусачева Кутубаева Кучминская Лазова Ланятина Лашова Левенцова Лейзбовская Лепатецкая Летунова Лиходумова Локтеева Локутанская Лутавина Лушева Лынская Мазовская Малисова Малихникова Малкершина Малунеева Мамушина Манишева Манновеева Маносипова Манусова Манцырева Маразова Мардарейкина Мардулатова Маримпольская Марфутова Марьичева Матиросова Мелышкова Ментусова Мефодиева Мехидева Мизюнская Микотина Микряева Милородова Мимитаева Минхазова Мирошихина Миссуловина Михайликова Миханошина Мишалина Мораева Морозовская Моссаковская Мышова Нагановская Назмиева Невская Негодаева Нелюбова Нижегородова Ноздреватова Обминская Ольштинская Ончурова Отрочева Охматовская Павпычева Паксиватова Паленычева Паницкая Паршкина Пастушкина Перевышина Перелазная Пигулова Пилипова Пирогова Плуталовская Побаруева Побеглая Погребашкина Подсадная Поленцова Полонская Польская Помутова Помыкина Портянкина Потакина Прибытскова Прошутинская Пруцкова Птумкина Пулькова Пупырникова Пырьева Рагицкая Радомская Расшивалова Рахманькова Раченская Редюшова Ретюхина Родионочева Розинькова Ротаенова Рощупкина Руженцова Рыжеукова Рябышева Саадуева Савраскина Сайгашкина Салиханова Саманкина Самолюбова Саморохова Свитушкина Северякова Сейтбаева Семидумова Сергушева Сеуткина Сивилькаева Симнова Синаборская Скарина Скирдина Смешанова Смотраева Снегова Соткина Спирькова Спифанова Сумовская Сухаручкина Талалуева Талпыкина Таратученкова Тарачакова Тахторова Тенцова Тенькова Терентьева Техтина Тимокова Тихановская Товкуева Тогобицкая Толстикова Торгашева Торченкова Трубинкова Тугаринова Тулаева Турбатова Турлакова Туфанова Тюлева Тюликова Тютюнова Тюцкая Тюшина Ульданова Фаворская Фанасова Фаркова Фатищева Фатнева Филихина Фильштинская Фогенкова Фонанова Фругина Хабайлова Холмогорова Хамбикова Харламкина Хваловская Хлямова Хрусткова Цатурова Цивкина Цымбаева Чабаева Чебиева Чегрова Челейкина Чельднева Ченурина Черноиванова Чертова Черторыгина Четверткова Чигирижская Чичеткина Чичиркоза Чучкина Шадилова Шанина Шановая Шапатина Шаюнова Шаяхметова Шебакина Шедрина Шечковская Шикалева Шишаева Шишкова Шияновская Шпикова Шувашова Шуганикова Шумакова Шумялева Шумятьева Щепеникова Щиконикова Якиманская Яночкина)
    }

    # First names grammar
    FIRST_NAMES = {
      male: %w(Абрам Август Адольф Аким Александр Алексей Альберт Альфред Анатолий Андрей Антон Аристарх Аркадий Арнольд Арсен Артем Артемий Артур Аскольд Афанасий Ахмет Бенедикт Богдан Болеслав Борис Борислав Бронислав Вадим Валентин Валерий Василий Венедикт Вениамин Виктор Вильгельм Виталий Владимир Владислав Всеволод Вячеслав Гавриил Геннадий Генрих Георгий Герасим Герман Глеб Григорий Давыд Даниил Демид Денис Дмитрий Евгений Евдоким Егор Емельян Ермолай Ефим Жорж Захар Зиновий Ибрагим Иван Игорь Илларион Илья Иннокентий Иосиф Ираклий Карл Кирилл Константин Кузьма Лазарь Лев Леонид Леонтий Макар Максим Максимилиан Марат Марк Матвей Мирослав Михаил Модест Мурат Никита Николай Олег Осип Оскар Павел Петр Прохор Ринат Родион Ролан Роман Ростислав Рудольф Руслан Рустам Савва Святослав Севастьян Семен Сергей Спартак Станислав Степан Тарас Терентий Тимофей Тимур Федор Феликс Филипп Эдуард Эльдар Эммануил Эрик Эрнест Юлиан Юрий Яков Ян Ярослав),
      female: %w(Аврора Агнесса Агния Алевтина Александра Алёна Алина Алиса Алла Альбина Амелия Анастасия Ангелина Анжела Анна Антонина Анфиса Арина Ася Белла Берта Борислава Бронислава Валентина Валерия Ванда Варвара Василиса Венера Вера Вероника Виктория Виолетта Владислава Галина Генриетта Георгина Глафира Дана Даниэла Дарина Дарья Диана Дина Динара Доминика Ева Евгения Евдокия Екатерина Елена Елизавета Жанна Земфира Зинаида Злата Зоя Изабелла Изольда Инга Инесса Инна Ираида Ирина Ирма Ия Калерия Камилла Карина Каролина Кира Клавдия Клара Кристина Ксения Лада Лариса Леся Лидия Лилия Лина Лия Любовь Людмила Майя Маргарита Марианна Марина Мария Марта Марьяна Милена Моника Надежда Наталья Ника Нина Нонна Оксана Олеся Ольга Полина Рада Раиса Регина Рената Роза Роксана Руслана Сабина Светлана Сильва Снежана Софья Станислава Стелла Таисия Тамара Татьяна Тереза Ульяна Фаина Эдита Элла Эльвира Эльза Юлия Яна Ярослава)
    }

    # Patronymics grammar
    PATRONYMICS = {
      male: %w(Абрамович Августович Авдеевич Адамович Адольфович Адрианович Акимович Александрович Алексеевич Альбертович Альфредович Анатольевич Андреевич Антонович Ануфриевич Арамович Ариевич Аристархович Аркадиевич Арнольдович Аронович Арсенович Артемович Артемиевич Артурович Аскольдович Афанасиевич Ахметович Ашотович Бенедиктович Бернарович Богданович Болеславович Бонифациевич Борисович Бориславович Брониславович Вадимович Валентинович Валерьевич Вальтерович Васильевич Велорович Венедиктович Вениаминович Викторович Вильгельмович Виссарионович Витальевич Владимирович Владиславович Вольдемарович Всеволодович Вячеславович Гавриилович Геннадьевич Генрихович Георгиевич Геральдович Герасимович Германович Глебович Гордеевич Градимирович Григорьевич Гурьевич Давыдович Даниилович Демидович Демьянович Денисович Дмитриевич Донатович Дорофеевич Евгеньевич Евдокимович Евстафьевич Егорович Елисеевич Емельянович Ермолаевич Ерофеевич Ефимович Ефремович Захарович Зигмундович Зиновьевич Ибрагимович Иванович Игнатович Игоревич Измаилович Израилевич Илларионович Иннокентиевич Ионович Иосифович Ираклиевич Исаевич Казимирович Каренович Карлович Кириллович Клавдиевич Клементович Климович Кондратович Конкордиевич Константинович Лазариевич Львович Леванович Леонардович Леонидович Леонтьевич Леопольдович Любомирович Людвигович Макарович Максимович Максимилианович Маратович Марианович Маркович Мартинович Матвеевич Мерабович Мечеславович Миронович Мирославович Михайлович Модестович Моисеевич Муратович Назарович Натанович Наумович Никитович Никифорович Николаевич Никонович Нисонович Нифонтович Олегович Онисимович Орестович Осипович Оскарович Павлович Парамонович Петрович Платонович Прохорович Рафикович Рашидович Ринатович Ричардович Робертович Родионович Роланович Романович Ростиславович Рубенович Рудольфович Русланович Рустамович Самсонович Святославович Севастьянович Семенович Серафимович Сергеевич Соломонович Спартакович Станиславович Степанович Стоянович Тамазович Тарасович Теодорович Терентьевич Тигранович Тимофеевич Тимурович Титович Тихонович Трифонович Трофимович Устинович Федорович Феликсович Феодосьевич Филимонович Филиппович Фридрихович Харитонович Христианович Христофорович Эдуардович Эльдарович Эмилевич Эммануилович Эрикович Эрнестович Юлианович Юрьевич Якимович Янович Ярославович),
      female: %w(Абрамовна Августовна Авдеевна Адамовна Адольфовна Адриановна Акимовна Александровна Алексеевна Альбертовна Альфредовна Анатольевна Андреевна Антоновна Ануфриевна Арамовна Ариевна Аристарховна Аркадиевна Арнольдовна Ароновна Арсеновна Артемовна Артемьевна Артуровна Аскольдовна Афанасьевна Ахметовна Ашотовна Бенедиктовна Бернаровна Богдановна Болеславовна Бонифациевна Борисовна Бориславовна Брониславовна Вадимовна Валентиновна Валерьевна Вальтеровна Васильевна Велоровна Венедиктовна Вениаминовна Викторовна Вильгельмовна Виссарионовна Витальевна Владимировна Владиславовна Вольдемаровна Всеволодовна Вячеславовна Гаврииловна Геннадьевна Генриховна Георгиевна Геральдовна Герасимовна Германовна Глебовна Гордеевна Градимировна Григорьевна Гурьевна Давыдовна Данииловна Демидовна Демьяновна Денисовна Дмитриевна Донатовна Дорофеевна Евгеньевна Евдокимовна Евстафьевна Егоровна Елисеевна Емельяновна Ермолаевна Ерофеевна Ефимовна Ефремовна Захаровна Зигмундовна Зиновьевна Ибрагимовна Ивановна Игнатовна Игоревна Измаиловна Израилевна Илларионовна Иннокентиевна Ионовна Иосифовна Ираклиевна Исаевна Казимировна Кареновна Карловна Кирилловна Клавдиевна Клементовна Климовна Кондратьевна Конкордиевна Константиновна Лазарьевна Львовна Левановна Леонардовна Леонидовна Леонтьевна Леопольдовна Любомировна Людвиговна Макаровна Максимовна Максимилиановна Маратовна Мариановна Марковна Мартиновна Матвеевна Мерабовна Мечеславовна Мироновна Мирославовна Михайловна Модестовна Моисеевна Муратовна Назаровна Натановна Наумовна Никитовна Никифоровна Николаевна Никоновна Нисоновна Нифонтовна Олеговна Онисимовна Орестовна Осиповна Оскаровна Павловна Парамоновна Петровна Платоновна Прохоровна Рафиковна Рашидовна Ринатовна Ричардовна Робертовна Родионовна Ролановна Романовна Ростиславовна Рубеновна Рудольфовна Руслановна Рустамовна Самсоновна Святославовна Севастьяновна Семеновна Серафимовна Сергеевна Соломоновна Спартаковна Станиславовна Степановна Стояновна Тамазовна Тарасовна Теодоровна Терентьевна Тиграновна Тимофеевна Тимуровна Титовна Тихоновна Трифоновна Трофимовна Устиновна Федоровна Феликсовна Феодосьевна Филимоновна Филипповна Фридриховна Харитоновна Христиановна Христофоровна Эдуардовна Эльдаровна Эмилевна Эммануиловна Эриковна Эрнестовна Юлиановна Юрьевна Якимовна Яновна Ярославовна)
    }
    GENDERS = [:male, :female, :random] # :nodoc:

    # All names generated inside the block will have the same sex.
    # Can be called with explicit sex which will affect
    # all calls inside thee block:
    #
    #   FFaker::NameRU.with_same_sex(:male) do
    #     person.last_name  = FFaker::NameRU.last_name
    #     person.first_name = FFaker::NameRU.first_name
    #     person.patronymic = FFaker::NameRU.patronymic
    #   end
    #
    #   person.last_name    # => "Иванов"
    #   person.first_name   # => "Александр"
    #   person.patronymic   # => "Петрович"
    def with_same_sex(sex = :random)
      @fixed_sex = sex == :random ? GENDERS[rand(2)] : sex
      yield
    ensure
      @fixed_sex = nil
    end

    # Generates random full name which can contain patronymic
    # Can be called with explicit sex (:male, :female), like:
    #
    #   FFaker::NameRU.name(:male)
    #
    # for_sex defaults to :random.
    def name(for_sex = :random)
      with_same_sex(for_sex) do
        case rand(2)
        when 0 then "#{last_name} #{first_name} #{patronymic}"
        else        "#{first_name} #{last_name}"
        end
      end
    end

    # Generates random last name
    # for_sex can be :male, :female. Defaults to :random
    def last_name(for_sex = :random)
      LAST_NAMES[select_sex(for_sex)].sample
    end

    # Generates random first name
    # for_sex can be :male, :female. Defaults to :random
    def first_name(for_sex = :random)
      FIRST_NAMES[select_sex(for_sex)].sample
    end

    # Generates random patronymic
    # for_sex can be :male, :female. Defaults to :random
    def patronymic(for_sex = :random)
      PATRONYMICS[select_sex(for_sex)].sample
    end


    private

    def select_sex(sex) # :nodoc:
      given_sex = @fixed_sex ? @fixed_sex : sex
      raise ArgumentError, "Unknown sex #{given_sex}" unless GENDERS.include?(given_sex)
      given_sex == :random ? GENDERS[rand(2)] : given_sex
    end
  end
end
