# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

parniks = [
  {
    name: 'Теплица Омега',
    system_name: 'omega',
    brand_type: 'volya_1',
    price: '22900',
    image: 'volya/omega.jpg',
    image_2: 'volya/omega_big.jpg',
    small_desc: '',
    desc: '',
    width: '2 м',
    height: '2.1 м',
    length: '2, 4, 6, 8 м'
  },

  {
    name: 'Теплица Дельта',
    system_name: 'delta',
    brand_type: 'volya_1',
    price: '18850',
    image: 'volya/delta.jpg',
    image_2: 'volya/delta_big.jpg',
    small_desc: '',
    desc: '<p>Теплица «Дельта» от компании «Воля» сделана в форме домика из оцинкованной трубы 20х20, которая не гниёт и не поддаётся коррозии. За счет двускатной крыши в теплице домиком из поликарбоната больше полезного объема, ведь все растения растут вверх вдоль боковой стенки. Угол наклона крыши теплицы «Дельта» обеспечивает максимальное количество света, так необходимого растениям на всех этапах созревания.</p>
            <p>Домик с двускатной крышей - это одна из самых популярных и распространенных форм теплицы. Многие садоводы хотят купить теплицу домиком. Останавливает их то, что, к сожалению, на двухскатной крыше скапливается больше снега, чем на теплицах стрелочной или арочной формы. Чтобы решить эту проблему, в теплице домиком из поликарбоната «Дельта» сделана съемная крыша. Панели поликарбоната с двух сторон по всей длине крыши вставлены в пазы. Потянув за ручку, вы можете частично или полностью вытащить один или несколько листов поликарбоната из пазов.</p>
            <p>Летом телицу «Дельта» легко проветрить за счет съемной крыши, которую можно использовать в качестве дополнительного или основного проветривания. Оставляя теплицу на зиму, обязательно полностью снимите панели поликарбоната – это избавит теплицу от снеговых нагрузок. Зимой снег будет попадать внутрь теплицы на всю поверхность почвы. Это сбережет землю от промерзания, обеспечит равномерное увлажнение и поддержит естественное плодородие почвы.</p>
            <p>Дверь теплицы «Дельта» делится на верхнюю и нижнюю часть, обе можно использовать в качестве дополнительного проветривания. В комплекте к теплице «Дельта» есть уплотнительный профиль. Высота теплицы в коньке – 2,2метра, ширина 2,5 метра, базовая длина – 2,2 метра.</p>',
    width: '2.5 м',
    height: '2.2 м',
    length: '2.2, 4.3, 6.4 м'
  },

  {
    name: 'Теплица Презент',
    system_name: 'present',
    brand_type: 'volya_1',
    price: '26885',
    image: 'volya/present.jpg',
    image_2: 'volya/present_big.jpg',
    small_desc: '',
    desc: '<p>Каркас теплицы из оцинкованной трубы 33х33мм. Сдвижные панели с обеих сторон по всей длине крыши вставлены в пазы. Вы можете частично или полностью сдвигать вниз панели поликарбоната по всей длине теплицы. Летом сдвижную крышу можно использовать для проветривания. На зиму панели полностью сдвигаются вниз. Это избавит каркас от снеговых нагрузок, и даст почве естественные условия для восстановления плодородия: в течение зимы снег защитит землю от промерзания, а весной талая вода обеспечит почву микроэлементами и равномерным увлажнением.</p>
          <p>Чтобы достичь максимальной освещенности в теплице из профильной трубы, сократить трудоёмкость сборки, дуги из квадратной трубы расположены на расстоянии метра друг от друга.
          <p>В каждом торце теплицы из труб «Презент» есть дверь с удобной ручкой и защелкой. Дверь открывается полностью на 180 градусов и надежно фиксируется в этом положении крючком. Дверные петли разборные, и вы можете повесить дверь на любую сторону теплицы.</p>',
    width: '3 м',
    height: '2.2 м',
    length: '2.2, 4.3, 6.4 м'
  },

  {
    name: 'Теплица Дачная-Стрелка 3',
    system_name: 'strelka3',
    brand_type: 'volya_2',
    price: '16400',
    image: 'volya/strelka3.jpg',
    image_2: 'volya/strelka3_big.jpg',
    small_desc: '',
    desc: '<p>Каркас теплицы «Дачная-Стрелка-3м» изготовлен из мощного оцинкованного профиля, который обеспечивает максимальную надежность и долговечность конструкции. Теплица «Дачная-Стрелка-3м» - прекрасный выбор, если вы хотите создать оптимальные условия для выращивания садово-огородных культур на дачных и приусадебных участках. Высота теплицы – 2,4м, ширина – 3м. Длина теплицы может быть любой, кратной 2 м. Полезная площадь теплицы зависит от выбранных размеров каркаса. Теплица комплектуется всем необходимым для крепления покрытия, а подробная инструкция поможет вам при самостоятельной сборке теплицы. Фундамент не требуется. По желанию покупателя каркас комплектуется сотовым поликарбонатом и боковыми форточками. Стандартный вариант теплицы «Дачная-Стрелка-3м» имеет с обоих торцов дверь и форточку.</p>',
    width: '3 м',
    height: '2.4 м',
    length: '2, 4, 6, 8 м'
  },

  {
    name: 'Теплица Трешка',
    system_name: 'treschka',
    brand_type: 'volya_2',
    price: '17300',
    image: 'volya/treschka.jpg',
    image_2: 'volya/treschka_big.jpg',
    small_desc: '',
    desc: '',
    width: '2 м',
    height: '2.1 м',
    length: '2, 4, 6, 8 м'
  },

  {
    name: 'Теплица Дачная-Стрелка',
    system_name: 'strelka',
    brand_type: 'volya_2',
    price: '15900',
    image: 'volya/strelka.jpg',
    image_2: 'volya/strelka_big.jpg',
    small_desc: '',
    desc: '<p>«Дачная Стрелка» была специально спроектирована для северных снежных регионов России, где за зиму выпадает большое количество осадков. Сильные снегопады порой случаются в районах с невысокими снеговыми нагрузками, и не все садоводы могут оперативно приехать на дачу и убрать с теплицы снег. Теплицу можно оставить без присмотра на всю зиму: ей не страшны самые суровые снегопады.</p>
            <p>Теплица «Дачная-Стрелка» идеально подходит для снежных зим. Каждая дуга усилена и выдерживает до 700 кг снеговой нагрузки. Предельная снеговая нагрузка на теплицу – 450 кг/м2. Каркас для теплицы изготовлен из прочного оцинкованного профиля 60х20 мм. Его высота прекрасно подходит для выращивания высокорослых культур, а ширина оптимальна для двух грядок. Готовые садовые теплицы с покрытием под сотовый поликарбонат серии «Дачная-Стрелка» можно устанавливать без фундамента – нужно всего лишь закопать специальные Т-образные окончания каркаса в грунт. По желанию покупателя в комплект теплиц входит покрытие.</p>',
    width: '2.2 м',
    height: '2.5 м',
    length: '2, 4, 6, 8 м'
  }
]

parniks.each do |parnik|
  par = Parnik.find_or_create_by(name: parnik[:name])
  par.assign_attributes(parnik)
  par.save
end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
# AdminUser.create!(email: 'maxim@rykunov.info', password: '1qa@WS3ed', password_confirmation: '1qa@WS3ed')
