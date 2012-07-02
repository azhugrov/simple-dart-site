#library("hypcomm:dataupload");
#import("../packages/mongo-dart/lib/mongo.dart");
#source("../models/project.dart");

void main() {
  print("start uploading.");
  Db mongoDb = new Db("hypcomm-data");
  mongoDb.open().transform((isOpened) {
    print("open a database connection");
    DbCollection projects = mongoDb.collection("projects"); 
    projects.insert({
      "id": 1,
      "name": "Бизнес-центр, пр. Дзержинского",
      "type": ProjectType.BUSINESS_CENTER,
      "description": """
                      <p> Бизнес-центр по проспекту Дзержинского (2007), г. Минск </p>

                      <p> Архитектор: Хромов В.Н. </p>
          
                      <p> Общая площадь - 51700 м <sup>2</sup>, <br/>
                          в том числе</p>
          
                      <ul class="structureList">
                          <li> офисы - 41500 м<sup>2</sup></li>
                          <li> ресторан - 750 м<sup>2</sup></li>
                          <li> общественные помещения - 2000 м<sup>2</sup></li>
                          <li> подземная автостоянка на 160 м/м- 4800 м<sup>2</sup></li>
                      </ul>
          
                      <p> Две 24-х этажные башни-близнецы объединенные в единый 2-х уровневый комплекс общественным стилобатом и
                          переходом на уровне 19 этажей. </p>
          
                      <p> Кроме административных помещений, в здании, для обеспечения сотрудников и посетителей, планируется
                          расположить: в цокольном этаже - подземный гараж; на других этажах – кафе, служебные и технические
                          помещения.</p>
          
                      <p> Проектом предусматривается выполнение благоустройства и озеленения с посадкой газонов, кустарников и
                          цветников, установить малые архитектурные формы. </p>
          
                      <a href="/img/project01/project31.jpg" target="_blank"> <img src="/img/project01/project31.gif" alt="view7"/> </a>
                      <a href="/img/project01/project41.jpg" target="_blank"> <img class="rightPics" src="/img/project01/project41.gif" alt="view8"/> </a> <br/>
                      <a href="/img/project01/project32.jpg" target="_blank"> <img src="/img/project01/project32.gif" alt="view9"/> </a>
                      <a href="/img/project01/project42.jpg" target="_blank"> <img class="rightPics"src="/img/project01/project42.gif" alt="view10"/> </a> <br/>                     
                     """,
      "imgs": ["/img/project01/project11",
               "/img/project01/project21",
               "/img/project01/project12",
               "/img/project01/project22",
               "/img/project01/project13",
               "/img/project01/project23",
               "/img/project01/project"]      
    });
    projects.insert({
      "id": 2,
      "name": "Бизнес-центр, ул. Немига, (I очередь)",
      "type": ProjectType.BUSINESS_CENTER,
      "description": """
                      <p> Административное здание с помещениями общественного назначения по ул.Шафаранянской, г. Минск (2005),
                          1-ая очередь</p>
          
                      <p> Архитектор: Хромов В.Н. </p>
          
                      <p> Общая площадь - 11000 м <sup>2</sup></p>
          
                      <p>Проект многофункционального комплекса предназначенного для размещения офисов компаний - арендаторов,
                          администрации комплекса, руководства управляющей компании.</p>
          
                      <p>Архитектурно-стилистическое решение центра предполагает спокойное несимметричное решение стилистики
                          фасадов, соответственно контексту окружающей застройки.
                          Комбинирование разноэтажных корпусов (4-7 этажей) центра призвано усиливать зрительное доминирование
                          здания на участке. </p>
          
          
                      <a href="/img/project14/project31.jpg" target="_blank"> <img src="/img/project14/project31.gif" alt="view5"/> </a>
                      <a href="/img/project14/project41.jpg" target="_blank"> <img class="rightPics" src="/img/project14/project41.gif" alt="view6"/> </a> <br/>
                      <a href="/img/project14/project32.jpg" target="_blank"> <img src="/img/project14/project32.gif" alt="view5"/> </a>
                      <a href="/img/project14/project42.jpg" target="_blank"> <img class="rightPics" src="/img/project14/project42.gif" alt="view6"/> </a> <br/>
                    """,
        "imgs": ["/img/project14/project11",
                 "/img/project14/project21",
                 "/img/project14/project12",
                 "/img/project14/project22",
                 "/img/project14/project13"]
    });
    projects.insert({
      "id": 3,
      "name": "Бизнес-центр, ул. Немига, (II очередь)",
      "type": ProjectType.BUSINESS_CENTER,
      "description": """
                      <p> Административное здание с помещениями общественного назначения по ул.Шафаранянской, г. Минск (2005),
                          1-ая очередь</p>
          
                      <p> Архитектор: Хромов В.Н. </p>
          
                      <p> Общая площадь - 11000 м <sup>2</sup></p>
          
                      <p>Проект многофункционального комплекса предназначенного для размещения офисов компаний - арендаторов,
                          администрации комплекса, руководства управляющей компании.</p>
          
                      <p>Архитектурно-стилистическое решение центра предполагает спокойное несимметричное решение стилистики
                          фасадов, соответственно контексту окружающей застройки.
                          Комбинирование разноэтажных корпусов (4-7 этажей) центра призвано усиливать зрительное доминирование
                          здания на участке. </p>
          
          
                      <a href="/img/project03/project1.jpg" target="_blank"> <img src="/img/project03/project1.gif" alt="view9"/> </a>
                      <a href="/img/project03/project2.jpg" target="_blank"> <img src="/img/project03/project2.gif" alt="view10"/> </a>
                      <a href="/img/project03/project3.jpg" target="_blank"> <img src="/img/project03/project3.gif" alt="view11"/> </a> 
                     """,
      "imgs": ["/img/project03/project11",
               "/img/project03/project21",
               "/img/project03/project12",
               "/img/project03/project22",
               "/img/project03/project13",
               "/img/project03/project23",
               "/img/project03/project14",
               "/img/project03/project24"]      
    });
    projects.insert({
      "id": 4,
      "name": "Бизнес-центр \"Порт\", (I очередь)",
      "type": ProjectType.BUSINESS_CENTER,
      "description": """
                      <p> Административное здание с помещениями общественного назначения по ул.Шафаранянской, г. Минск
                          (2005-2008),
                          2-ая очередь </p>
          
                      <p> Архитектор: Хромов В.Н. </p>
          
                      <p> Варианты 1,2 - общая площадь - 95000 м <sup>2</sup> <br/>
                          Варианты 3 - общая площадь - 35800 м <sup>2</sup></p>
          
                      <p> Многофункциональный деловой центр предлагается выполнить разновысоким, из двух объёмов (корпусов),
                          сблокированных между собой.</p>
          
                      <p> Проектирование многоэтажных зданий с подвалом и техническим верхним этажом, предназначено для размещения
                          помещений общественных организаций. </p>
          
                      <p> Согласно техническому заданию, проектом предусматривается возможность автономной работы функциональных
                          частей комплекса: помещения общественных организаций и предприятие бытового обслуживания имеют
                          дифференцированные входные вестибюли, технологические помещения, планировочно обособлены. </p>
          
                      <p> Проектом благоустройства предусматриваются озеленение участка, расстановка малых архитектурных форм
                          (скамеек для отдыха, урн, светильников и т.п.) </p>
          
          
                      <a href="/img/project04/project11.jpg" target="_blank"> <img src="/img/project04/project11.gif" alt="view9"/> </a>
                      <a href="/img/project04/project21.jpg" target="_blank"> <img class="rightPics" src="/img/project04/project21.gif" alt="view10"/> </a><br/>
                      <a href="/img/project04/project12.jpg" target="_blank"> <img src="/img/project04/project12.gif" alt="view11"/> </a> 
                      <a href="/img/project04/project22.jpg" target="_blank"> <img class="rightPics" src="/img/project04/project22.gif" alt="view12"/> </a>
                     """,
      "imgs": ["/img/project04/project31",
               "/img/project04/project41",
               "/img/project04/project32",
               "/img/project04/project42",
               "/img/project04/project34",
               "/img/project04/project43",
               "/img/project04/project34",
               "/img/project04/project44"]
    });
    projects.insert({
      "id": 5,
      "name": "Бизнес-центр \"Порт\", (II очередь)",
      "type": ProjectType.BUSINESS_CENTER,
      "description": """
                        <p> Жилой дом по Горному переулку, г.Минск (2009) </p>

                        <p> Архитектор: Хромов В.Н. </p>
            
                        <p> Общая площадь - 9600 м <sup>2</sup></p>
            
                        <ul class="structureList">
                            <li> количество квартир - 110</li>
                            <li> количество этажей - 22</li>
            
                        </ul>
            
                        <p>Комплексный проект реконструкции территории в границах ул. Краснозвёздной-Смолячкова-Бересцянской с
                            параллельным проектированием 1-ой очереди – многоквартирного жилого дома не повышенной комфортности со
                            сносом общежития по пер. Горному, 8 и усадебного жилого дома по пер. Горному 10.</p>
            
                        <p>На территории, в пределах отведённого земельного участка, проектом предусмотрено: устройство открытой
                            стоянки, выполнение благоустройства и озеленения с посадкой газонов, кустарников и цветников, установка
                            малых архитектурных форм </p>
            
                        <a href="/img/project05/project1.jpg" target="_blank"> <img src="/img/project05/project1.gif" alt="view1"/> </a>
                        <a href="/img/project05/project2.jpg" target="_blank"> <img class="rightPics" src="/img/project05/project2.gif" alt="view2"/> </a>
                                 
                     """,
       "imgs": ["/img/project05/project3", 
                "/img/project05/project4"]
    });
    projects.insert({
      "id": 6,
      "name": "Бизнес-центр \"Итера\"",
      "type": ProjectType.BUSINESS_CENTER,
      "description": """
                      <p> Многоэтажный жилой дом не повышенной комфортности с подземной гараж-стоянкой по Топографическому
                          переулку, г.Минск (2009) </p>
          
                      <p> Архитекторы: Хромов В.Н., Немкова Н. </p>
          
                      <p> Общая площадь - 8600 м <sup>2</sup></p>
          
                      <ul class="structureList">
                          <li> количество квартир - 96</li>
                          <li> количество этажей - 24</li>
                      </ul>
          
                      <p>По проекту заложено строительство многоэтажного жилого дома, не относящегося к категории повышенной
                          комфортности, с подземной гараж-стоянкой со сносом одноэтажного жилого дома" по улице Топографической,
                          13.</p>
          
                      <p>Запроектированы парковки личного и гостевого автотранспорта в соответствии с действующими нормативами.
                          Максимально сохранены существующие зеленые насаждения. </p>
          
                      <a href="/img/project06/project31.jpg" target="_blank"> <img src="/img/project06/project31.gif" alt="view1"/> </a>
                      <a href="/img/project06/project41.jpg" target="_blank"> <img class="rightPics" src="/img/project06/project41.gif" alt="view2"/></a><br/>
                     """,
      "imgs": ["/img/project06/project11",
               "/img/project06/project21",
               "/img/project06/project32"]
    });
    print("finished inserting project data...");
  }).then((dummy) {
    print("closing a database..");
    mongoDb.close();    
  });
}