grant all privileges on  *.* to 'root'@'%' identified by '0976';
delete from mysql.user where host="localhost" and user="root";
flush privileges;
select host,user,plugin,authentication_string from mysql.user;

USE `harrydb`;

drop table `professor`;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `image` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB
    default character set utf8 
	default collate utf8_general_ci;
    
drop table `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `dorm` varchar(50) DEFAULT NULL,
  `image` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB
    default character set utf8 
	default collate utf8_general_ci;

drop table `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB
    default character set utf8 
	default collate utf8_general_ci;
    
    
CREATE TABLE `stick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `materials` varchar(50) DEFAULT NULL,
  `tube` varchar(50) DEFAULT NULL,
  `length` Float(11) DEFAULT NULL, 
  `image` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB
    default character set utf8 
	default collate utf8_general_ci;
    


INSERT INTO `student` (`id`, `name`, `dorm`, `image`) VALUES
  (null, '해리 포터', '그리핀도르', 'https://ww.namu.la/s/12fa821d6d09fd5dae94bd2a8aa04a18a0c617a1c6c1cb0eb7569a07e5e0de2c98b425d6464d371459b770e7429a3c8ad4e3d2d8ec73fda1ac68ac1f70aa5ad448616b9f76ffe35daad67288ccea8f5d2c3631020b5884d5636375b589355f82b8a939c80d8096f460d586086ffcbfc2'),
  (null, '론 위즐리', '그리핀도르', 'https://w.namu.la/s/36b75f2218f00857ff900304bd8d3845c3e930452be5895b54ea3dcd9b331f9ee4b994e108c4db6d18c320e71d2480d92ee3a725a0f93eee1b64ea3567cff7a524db9473467894f2d6eb57d8d1494b708cc29791b30bdd2aaab3e039b06046e5af684ac52c60d40b09562fe4d413348d
'),
  (null, '헤르미온느 그레인저', '그리핀도르', 'https://w.namu.la/s/ea0c0b04eb136a71ea4356829c9dd629b1867956174232f8dc6c58fabb9af4dac97b7a5852b5c1c8ad882f10d1593fdf0f92714d54ea3cca6cf333d64a78fccf5a9128b799ac0e84d232cc612b9426878741d92058ba9834bfa53b95c03dc07c750d12f2513405fd526c985c18ab3a70'),
  (null, '프레드 위즐리', '그리핀도르', 'https://w.namu.la/s/9a1027ae88fe5a3bca0e8b0be965305d48db20cea374b8e4b0734a1a624ce77f0bfb1fe080618a57e6e210ea26e07a4b6fab44290a42fbf5dbf141d389b8a4e5ccd12b1e4e7ad0dc63fea6e1343a66d3c7c520a4cd2a3ac1209899b0bc4f61a2'),
  (null, '조지 위즐리', '그리핀도르', 'https://w.namu.la/s/f441fad259060818550443360a39c0141db5ce09de3b23f5ccad2b272ecbe6e30c6d7f8182175d365d4476e5187df7a88e0ad931c421a745a08ffbb2fc582793582ae0df5eda4d23b8af97eee054a881fc3fd80bbd7f8a1da1199ecfccb2de81'),
  (null, '퍼시 위즐리', '그리핀도르', 'https://ww.namu.la/s/179aa58369805e203309979dd0a10341b78f72bc42abf6c5d73399055ad52d8e496f8d17fe245b49da30fd4009d20a5b53ba506b5c8f9aa5f9673874086d001e006b956635bd24d7ebee19687fd28a7bba4f43895293ecb9d8394b7250e99941'),
  (null, '지니 위즐리', '그리핀도르', 'https://w.namu.la/s/0f16491b028efbf26469cd8ef7d75e5cfafeaacfe6ab094f5252b2aa2de4269f1e8098dd8f3d1b3cdd1da303bd2e9ba3c48a28fbccc0589598c294c2db932e4758bac12c4a9f0995af3c2f77b13161c7603912bc0f2ce79d21fbace1a4d319846f5b0d9af98325dd99ac7e1ccb9461af'),
  (null, '네빌 롱보텀', '그리핀도르', 'https://ww.namu.la/s/12f574cb86fe294f773dbb92b7959073a99a37201880e5329fd3d1e22b25abce8749f1879ad54936c800aaa228bf1e4dfb8c331f503c75ca5f8c111d5963a48eb9efff793b0416ee2559fd2593faee9357ac970f522af921e78ac03ec3d96385
'),
  (null, '셰이머스 피니건', '그리핀도르', 'https://ww.namu.la/s/aa8769a0e0a1ce392eb1c50a68dbbdc4e083f85e2fafd2bc71a2d034956bc5e219d70eb7dcd08df946d61cd26abc8a8ce404d15b6d96ff195cba4aacb40e6d60e20927e36bdd980ba916223f27bdc3de3eaa057cf5c66c11a33b92c340b37dbfdddb4edb40f5e8c1eb4777af4f688e2a'),
  (null, '딘 토머스', '그리핀도르', 'https://ww.namu.la/s/c7c1f062b4bd0a5980c48639d02bc2638264bb95b20b99c4e4d3207f302da8026f51a246f2bf708adfb927169cebabd7cd8ce5e27c7b6e4d1960fefb5812172c93a01fcf1130247a79a77a6047583772205a25751eb6f577f9ba13a1317e141d'),
  (null, '파르바티 파틸', '그리핀도르', 'https://w.namu.la/s/683545bff5ce8740935ca1fb82d302cdef93494b27ec566a8da53327cc966086fbbe4efd006e6eb4f9d1e06775eeea447550acba9f0502203064f3b18c5aca617542b62ed27f43ef64a626caecf199ae57c8a863113e2fe0d3104dc7df6a060b'),
  (null, '라벤더 브라운', '그리핀도르', 'https://ww.namu.la/s/1221cf14cadedf3f01d3031dff1bd94ca26b931c34f456436f992dddad768eff1369c1370d2a3b4110d6c130e4067acd7550ebfba7ba6ef9fe3d7c3fd91293d57444d77a1ef5902184c52101a348b7ed4f9a5b430ecb6a2e849cde2d1577340193d040dc7e8e18dd7977a701415a8639'),
  (null, '콜린 크리비', '그리핀도르', 'https://w.namu.la/s/cc247a692f7e0eaa4dc632d86ba5cfd9b9ec5b995f063dc3a2b1efd2c36023cc7c557b186a66d1ededd7e9ee23bb28b86430b75da0f0189980ae671fe8eeef7a28f4a31c8d5ae8b4fcf4fbb6e9e7852729a21b59122a23bd8954f304a4fb67d356db709daec5f9feeb07511f2796bba4'),
  (null, '리 조던', '그리핀도르', 'https://w.namu.la/s/b74949f3b684d9921aa0b5bef45caa10ead269bd4b56001aa2307b891eecd51d6d9fa8c4365f6688e346105e30783dad517a51fed82d1ca2bfabdffd2350add4e100887bcd8bf4e610417a26fce7156ef13b47e9cfedab64487da62966a245d4db98859d881c2ded63cd496915ef94f4'),
  (null, '올리버 우드', '그리핀도르', 'https://w.namu.la/s/5f4927769a25db61566a611abf637ec7ecb85ac2a16d7cabd6579c82a05bc87c7557a7aa2e8947420a1b55d4e037fb80d6ac9876ca65f289f1e0ac1a668868459b4bac16f4318d06844019fca8ae5cb13a085f494f5bc4b86ad83a89327150293a25f63d9bbf20b6c0d7a1fd44778c0d'),
  (null, '세드릭 디고리', '후플푸프', 'https://w.namu.la/s/fb887bf28626a22c45c63a2ae828f54af77f3a6b881de615892c940763d726f034682ef1b043fd427677416465e56bd536df18f6e211038dfff457775179747c20b5b71dbe463a975d8bccf3a9241a286177f85e6bbf3907f0bcfa08d83f17c2c44fbf8fd1de3490f52f025dc4ff75d1'),
  (null, '어니 맥밀런', '후플푸프', 'https://w.namu.la/s/c79dc3c464f988fdf6f38285d09926d4d61e27ec2ef9731d2016165fadad0a4fa12b19616efbf91ef84c7058843512acaff302679d8a4ca90b7565a9239917b13bdbb73ef07b6a94e619df6c3587e7bf0e27a989f0666de7fa824d91a1c3d0ba7728cd47d328ca35d0bff4c4b22f0130'),
  (null, '해너 애벗', '후플푸프', 'https://w.namu.la/s/e526318cd30230c4a9cc73ef45d28d28e1f22b9c1d12d4d366a8bd0e1a83b2030e9ad5fd0e348da18a0596f5b9c6557ec5cf6a6c3118c80bda2de567bff870f1032ed56c39b8d96d83e61cd71c1e2be54ed60033e5328b450747427ddab1620f8f1c6134f2f19eb74fe9311f15551de1'),
  (null, '수전 본즈', '후플푸프', 'https://ww.namu.la/s/714882182edb638927627c38a61fc0bd8319b380425dcecc5a735754a5823fc33087d79029c4c7d3ce9303202bff42f2adb177fe778a57aed48c27dbd4b8279ab4c9df551c31779d1bc844d02803a5db38e161fc4105737cbc947927e6b5d7382fae4e75d82fd55d9c5335de4e0bd864'),
  (null, '리앤', '후플푸프', 'https://ww.namu.la/s/73e3a5ca7c20ebcd49f3175cdb0d87b0950e5764bd6f98e962e5bee2035bc29a48fc4c375051f5239534283d753edd5eea66a9f9857a13aa948135940c98b11c17a1c122dfaf20c351c6d5867b94ce97a3d1326f15669232bbca6b958c2a400c28bad2d13969c8e87aeeb487a8a4f236'),
  (null, '루나 러브굿', '래번클로', 'https://ww.namu.la/s/faf9e4f8623566a6890507cf9139e034ff3525b42343b247fd7c6276f0b58b244b022d6d32562eb09ff1e5fe9013572a11f92e6fc9fbbee69acd4c58508c955550206e3040c017e5cb7873c11185b6f99748ffa2399c74bdd9c2c1c137832eaded6e4dc8297a14202908d1bc011de973'),
  (null, '초 챙', '래번클로', 'https://w.namu.la/s/fcb842981eeeaf13a5f3523dbfb0c249057718083abf35d5ee79c17afaffb0f28d75200e01bba2e5a8396c38b26583206431dd7ba8122e7ee9f3b35376349b52ba1b8062abb6a5f7bee1e02c031f6b1decf6ea8e64a961ed63c9a2d0f4d0aa33ae7f3ba217519a861f261a9e850a23fb'),
  (null, '파드마 파틸', '래번클로', 'https://w.namu.la/s/d0d93ac6cb3a1ff82facaef9b832906fed99b408162e15e8c319fcade7a53fa9c3b6956f0703da202b29e36dd8367c5827f50cc5835a03f74696d4d99477579c6e10f662b3652b923f2fb5b457b0636bd98f8246c09f56fec1714449941c6840'),
  (null, '로저 데이비스', '래번클로', 'https://w.namu.la/s/ef56c2da51fe3f41ae090d0121440932a1e679db8a69468d7ab048ec869c64c44b7685952df7755d1877c29a13b7179e0eb3691afe25cb14dde5d8ae8a9e1679de5356d48ba4c6d60b0d8c062c8f92bc40f36158198d3c0cc2fc44f5fb1c6c82'),
  (null, '드레이코 말포이', '슬리데린', 'https://w.namu.la/s/beaae106e9cbda1cb588a972c72c793e90c0755b9e1acf4ec5676ae9ccf4f4ba8c7928a4f745bd65e6243cfef059fdbdc24dec3a618d18fbff5754219a96965f6fb8d5b1b646b4c6ba04e9ec2050c7b2aafaf4743427ccac484561327eadda7d1232b1afc9767a31158f3b307809fb15'),
  (null, '빈센트 크래브', '슬리데린', 'https://ww.namu.la/s/35a77dc80f09fc68843863ab00babdae5279d1f8cb475b29e1dc56d1fc24e99da0ca79e2803b724a7fbb4b42f4bc56ed3a5b32bb153a726eb71628dfa0b3a9567256c3b1d0a2d3a2aae0d5480995314200c735150924b248c658dea05ce68ce753fe19d4ead95b9b5be319a51e548433'),
  (null, '그레고리 고일', '슬리데린', 'https://w.namu.la/s/cb808db9d5a957e7023d872ae089c7bd7a36f82a7726771af77c52501133ac9b23b6a4b377cf438155cbdd235f8d52ebceed79c9004e6082131bc69e1d05904b5eea16913fbd4c6e4f9bc080b85f6fab51d3b6405750117e4fb12a98a8aa3642'),
  (null, '팬지 파킨슨', '슬리데린', 'https://w.namu.la/s/521ed456f8bb5ce87e69803e5ee188fdc1e5c7e1025eecfbfc7005c7ab5d73818b9cf647f0cc6b4e7621d5894f3026ef16d76fbad688a60e67bb7b725994ef2a81e0dedd58bb981f2ea3e299ad5e9d56f18af8f26ff1bf68181df97b53f2c830'),
  (null, '블레이즈 자비니', '슬리데린', 'https://w.namu.la/s/7a0c604deb64caad0e322be84250454a7b6f7ac23b527f1d57c9623b7d31fc12041d254a838a7a2ef4ee725c4fd156c73413f6662f5d6e4c14ce7b87f455ec59875b58b22e712a6e91187cd228aea34c4b383de162ffffbf5c651c23fe99256acefecd1831f523124b9d82bc2ad8c643');
  
  INSERT INTO `professor` (`id`, `name`, `subject`, `image`) VALUES
  (null, '밧세다 배블링', '룬문자', 'https://www.hp-lexicon.org/wp-content/uploads/2015/08/bathsheda_babbling_by_la_petit_marianna-d9i8knm-200x0-c-default.png?ezimgfmt=ng:webp/ngcb22
'),
  (null, '셉티마벡터','숫자점', 'https://www.hp-lexicon.org/wp-content/uploads/2020/08/vector-portrait-jodel-200x0-c-default.png?ezimgfmt=ng:webp/ngcb22'),
  (null, '호러스 슬러그혼','마법약', 'https://w.namu.la/s/3922a5a86d7faf12d73edbd9925b91e3a528f2b799f1344fd362b14420de8d004ad6bd479be057cae9f66fc7894f30b3da16961e6829beb44b5f1558e562e37e5c0069ad8584fc80c0dd4b5ba8aaccd14c65ff3ab1711dc0b34283ac685a5943a3eded59a8f621cfb059ed931344ca34'),
  (null, '알버스 덤블도어','교장', 'https://ww.namu.la/s/b5538950e3e18825ac986949c5d59c284703313b71adb2df5b62c3601a8691c689abe8d74c14e13faeca47bd2340a66a026c038e36286c9a038781ca7d4ea70492f5825dc8bb37a5abf7a95c7d0530efe132e3a6b3f3f230fee5cd3bcb910e9a59e0ca11d9786b2b4573a5aab790e47e'),
  (null, '미네르바 맥고나걸','변환마법', 'https://w.namu.la/s/2b98d2a3620f9b6e5986da3a54ecbb8595ba878e76240c3be467ec6e02e38a1955a19c0ddf3bb5c4ef2865fde95d292505db1b39743d598c596790d9e63371f41ab7967cba86149ef13741fb94cdbbcba8ee1be20549dc10d0bb84e58c486b98af27c0ecfdf7fa6bbcad65d0db2b0cca'),
  (null, '리머스 루핀','어둠의 마법 방어법', 'https://w.namu.la/s/faab4f9fb857a7f2a66a203f874fe1b5767c35ce849de70d596c83e17ebb40ae59250235eead2822bcaf40d6abea522b3320546593cec989742b340898ba334cafb1efc969640561cd2a1e88a43a83ac08a062b379ff583f05ca325810887ab18b3d82ab0cbc486780daf925034d5701'),
  (null, '루비우스 해그리드','마법 생명체 돌보기', 'https://ww.namu.la/s/56dbb18807535c4e67a2c9c325b3217661febb206a58e88aaa54d91c5396db108826dc0241e9c1a7fce31c055bc1b3571512112fbe7986d85ecf872b17dfb973e0959d2d515e8b015346517e3f0fddf3da949fc0d826e66b47da81f6ce9ab78aeb0f232ace1dce7ffaf011d12e20a7ce'),
  (null, '필리우스 플리트윅','일반 마법', 'https://w.namu.la/s/169df6c4e93e0ea5a54031ef7f71b3a46831cdb3857176ec5bcffc001c9b7e39ef57921165e583643c71759635a02a7ea77741b39ab120e4313043040d5216b4fc8e11b3ed7d8323201ce93ee107543771ae04a5fd63613ab2985256c9767617'),
  (null, '롤랜다 후치','비행' ,'https://w.namu.la/s/aa6188463475796bd573e8a8bfa78b51d95e33a81890575da4fb38c27ff929d30696d58b9ba6fe0f64d366ee04b6860a09cf5bee7aa45ed21498ab6fa96d29b23c6add2090159407493a9416eb865530978503ff7a3ac0fa41d69a9d0cc473ca'),
  (null, '세베루스 스네이프','마법약', 'https://w.namu.la/s/2cf3577d31dc5357fd0ca6c0f6d21742521f40ff6ff72c29e89005f0395b4542fb9ac982ecb41572d6c6762bb12a35b659355cd4b0dea691d1d672c4a273c348e4458af4593e696dabe7168185a09c41c2ae6aecb2988af5eecbb827d35a4682'),
  (null, '포모나 스프라우트','마법약', 'https://w.namu.la/s/455f3e8350e410bc084f137aebbc0e7297e8d0050d6b3285a24c1aef7d770f572bccddb84011c89d5efdaeb18caf90cd207109e3ba00daef41ad933ce52ce4faca2fbcd960fc2fc2e77bdd5a46b2e496c9479822c1ba96b5af108aa1a5dcb005'),
  (null, '커스버트 빈스','마법의 역사', 'https://w.namu.la/s/2329a7fd24fecaf5255edd20080a1837d5cb92131395afc07664d164c9403d8739417cb1e80da1cbddf608765b4bbfcf160813e877030a47d03ebab3e038c734a19e0d14f8e73147026473916f53b9755bc03ba5294ec2ab23d76cdd405badceabff0abc6833e262a11119f11dad1ac9'),
  (null, '퀴리너스 퀴럴','어둠의 마법 방어법', 'https://ww.namu.la/s/796c2d4ee9ff72ba09446786d4e04fd58be9f3d49b3478f54c4589dfed7e6892cf625062626c49673d31191193a5f2424b0fcb9d1feec5d5de13be6c0f86697ce256c816404952847502e9aef559ed4c92faeedd8ac38a12c4e5fd446140e2ca'),
  (null, '길더로이 록하트','어둠의 마법 방어법', 'https://ww.namu.la/s/f311ae76d250b34b1580bc8a8b7ead3e69a3169e941cd721785fe3e235fd092dffa53eefc20376e99661a0f0aef339ea657d033f7242ae2d23ec54ed76b34dc8432356052996d459e1aeb60e0090d2740fde28430a14c662d3656804cae0de94'),
  (null, '매드아이 무디','어둠의 마법 방어법', 'https://w.namu.la/s/ead87f6878fa622214c7033f357e82b00c56ae42d6d11ab188f13b9589079bebaf6cc25f433d7f0ac771755d7d9f1b67e770da4880f910dd59bcbb4529a35d118c158c762eb88ee88add2c2b4fce381a824f407a17a34765c509cb0786857c96'),
  (null, '덜로리스 엄브리지','어둠의 마법 방어법', 'https://w.namu.la/s/54cfeb6b027a7989abffa1bdf4aeab2ad207a7cdeaff15f83c18495b3364ea5d1b3e5406ba89c24db8c0e6b94e1ae2cd082454c1b7623ec582737af763a0683dc625fd2de9b39bbf7c55a3a2fe486002a346db03d9a0991b5f1b87def3a2fba8'),
  (null, '오로라 시니스트라','천문학', 'https://ww.namu.la/s/d07007e29a7bf5baf7a983223071b7336e4bbfdff20000a4137014920313a8c1fe1713e3e0b586d7894a9eed8fe610fd45c8d90ec29f896e3ac58506e185157b7b6988f6dd0279aeadcada3438fb0093160f6a98828fe26e9ea9cfe219cee47363c3b25f29953f2f2f34d9b4ad5f4eb8'),
  (null, '시빌 트릴로니','점술', 'https://ww.namu.la/s/787226f2945066fce037bfeeb68227a490ddc23cce9b2aa6d9979363b8bbb096e36f05cf04d759239926079e6fbd06b24bddd6c1dea303934c8ab98bc64523b019d8b1ca024ee02ea0b7d0b58d4eafd6f3c123cd6354188cc27750de8bf3df4a'),
  (null, '피렌지','점술', 'https://ww.namu.la/s/12b900b9c736e05edd41cb235452a99fd66df027de8a517f938bad98873e635abcd05ee1a7509ecaa535403babac341f57743477c96a46185d5d3ac407a6d37bdef614da55bae3b21648d7822ab4cb01627ee7c63d19290f3a9c47c778c5b0b9'),
  (null, '체러티 벌베이지','머글학', 'https://www.hp-lexicon.org/wp-content/uploads/2016/05/charity_burbage_by_la_petit_marianna-daaa49i-200x0-c-default.jpg?ezimgfmt=ng:webp/ngcb22L');
  
  
  INSERT INTO `subject` (`id`, `name`, `description`) VALUES
  (null, '일반 마법', '주문에 관한 이론과 실질적인 주문 사용 연습을 배운다. 대상에 특성을 부가하는 주문을 다루는 과목이며, 대상 자체의 성질을 변화시키는 Transfiguration과 대립쌍을 이루는 필수 과목이다.'),
  (null, '비행', '야외 수업으로 이루어져 있으며, 빗자루를 타는 법을 배운다.'),
  (null, '변환 마법', '변환 마법 이론과 주문을 배운다.  5학년 때까지 공통으로 변형술을 배우고 6학년 이후 고급 과정에서 변신을 배우게 된다.'),
  (null, '마법약', '마법약 제조에 필요한 지식과 실질적인 기술을 배운다.'),
  (null, '약초학', '여러 마법 식물들에 대한 지식과 이를 다루는 법을 배운다.'),
  (null, '마법의 역사', '호그와트에서 유일하게 유령인 교수가 마법의 역사를 가르친다. '),
  (null, '어둠의 마법 방어법', '어둠의 마법에 대한 방어 기술, 위험한 마법 생물들에 대처하는 법, 그리고 실질적인 마법 격투술 등을 포함하는 과목이다.'),
  (null, '천문학', '별과 별자리, 행성과 달의 이름을 배웁니다. 그들은 하늘을 통해 별과 행성의 움직임을 연구합니다. 그들은 망원경을 사용하는 방법을 배우고, 망원경을 통해 밤하늘을 관찰하고, 레이블이 붙은 별표를 만듭니다.'),
  (null, '마법 생명체 돌보기', '이런저런 신비한 마법 생물과 이들을 다루고 돌보는 법을 배우는 과목'),
  (null, '점술', '미래의 일을 예측하는 다양한 점술을 배운다.'),
  (null, '머글학', '마법사의 입장에서 머글의 사회와 기술 등에 대해서 배우는 과목'),
  (null, '룬문자', '고대 룬 문자를 읽거나 암호화된 룬을 해석하는 법을 배운다.'),
  (null, '숫자점', '벡터 교수의 수업에서 Arithmancy 학생들은 에세이를 작성하고 숙제의 일부인 복잡한 숫자 차트를 이해할 수 있어야합니다');

  
  