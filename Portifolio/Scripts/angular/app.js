'use strict';
var app = angular.module('app', ['ngSanitize', 'pascalprecht.translate']);

app.config(function ($translateProvider) {
    $translateProvider.translations('en', {
        TITLE: 'Bruno Buriolla | .NET Software Engineer',
        OCCUPATION: '.NET Software Engineer',
        LANG: 'Português',
        PROFILE: 'Profile',
        SKILLS: 'Skills',
        EDUCATION: 'Education',
        CONTACT: 'Contact',
        EXPERIENCE: 'Experience',
        RESUME: '<p>Working as a developer on the Microsoft .NET platform since 2007, I had the opportunity to work with lot of technologies and methodologies. The vast majority of projects that I participated were web applications geared mainly for internal use by companies. I started my career as a developer always working with the concepts of OOP(Object Oriented Programming), which I know quite well, as well as different patterns of Web projects and also some frameworks for the development of front-end and mobile applications.</p><p>I worked under the waterfall model of software development, within the concept of software house, following CMMI standards of process maturity for most of my career. More recently I also worked under the Scrum model for software development, which led me to study agile methodologies for software development and made me a real fan of the concepts used in these methodologies. What strikes me in these methodologies are the focus on results, quality, customer satisfaction and also the team spirit.</p><p>By working almost 9 years at software houses, I had the opportunity to work in various market segments, among them: education, market research, retail, advocacy, medical / scientific, government and finance. Always seeking to understand the specific requirements of each of these sectors and adapting expertise and technology to find out the needs in the best way for every new challenge.</p>',
        ADRESS: '<i class="fa fa-map-marker"></i>  742 Peixoto Gomide Street, São Paulo, Brazil',
        CONTACT_INFO: 'Contact Info',
        GET_IN_TOUCH: 'Get in Touch',
        NAME_LABEL: 'Name',
        EMAIL_LABEL: 'Email Address',
        MESSAGE_LABEL: 'Message',
        SUBIMIT_MESSAGE: 'Submit Message',
        INPUT_NAME: 'Your Name',
        INPUT_EMAIL: 'Your Email Adress',
        ST_IT_OCCUPATION: 'Senior .Net Software Engineer (2015-02 / Actual moment)',
        ST_IT_DESCRIPTION: 'Responsible for SOA (Service-Oriented Architecture) application maintenance whose front-end was developed in Silverlight (C #) in the MVVM pattern and the back-end technology developed using the WCF (C #) under the three layers pattern.',
        DIGISYSTEM_OCCUPATION: 'Senior .Net Software Engineer (2010-10 / 2015-02)',
        DIGISYSTEM_DESCRIPTION: 'Working as developer in several projects under the model of software house. Application development with the following technologies: C #, VB.NET, ASP.NET, .NET MVC, Web API .NET, WCF, ASP, VB6, SQL Server Database, Microsoft Integration Services, Oracle Database, Xamarim for Android, Javascript, AngularJS, JQuery and Microsoft Sharepoint.',
        HAZIT_OCCUPATION: '.Net Software Engineer (2009-09 / 2010-10)',
        HAZIT_DESCRIPTION: 'Maintenance of ASP.NET systems (C #) developed for online games segment, mainly ecommerce as well as the development of tools for use within the company.',
        POLITEC_OCCUPATION: '.Net Software Engineer (2008-10 / 2009-07)',
        POLITEC_DESCRIPTION: 'Working as developer on projects for the government sector (finance and human resources) using the ASP.NET technologies (C #), Javascript and Oracle Database.',
        EXPERIENCE_SUBTITLE: 'Learn a little more about my professional experience.',
        EDUCATION_SUBTITLE: 'Know where I graduated',
        FATEC_COURSE: 'Technologist in Data Processing - <strong>Graduated:</strong> 2008',
        FATEC_DESCRIPTION: 'I always liked technology, since I was a kid, so i decided to graduate myself in data processing on FATEC Taquaritinga mainly because it&rsquo;s a recognized technology college in São Paulo state. Differently from other colleges, the FATEC courses are focused on preparing their students for the market and not for the academic or research carrer. There I figured out how challenging can be the software development and was there that I discovered what I pretend to do till the end of my carrer.',
        UNINOVE_COURSE: 'Information Technology Management - <strong>Graduated:</strong> 2015',
        UNINOVE_DESCRIPTION: 'After working in software development during some years, I decided to change a little bit the focus of my career and know more about how the IT management works. Then I started one new graduate, the course "Information Technology Management" at Uninove. This decision really changed my understanding of software development process and helped a lot to shape my professional posture since. Now I can have a better understand about some management decisions that I always questioned before the course.'
        
    });
    $translateProvider.translations('br', {
        TITLE: 'Bruno Buriolla | Desenvolvedor .NET',
        OCCUPATION: 'Desenvolvedor .NET',
        LANG: 'English',
        PROFILE: 'Perfil',
        SKILLS: 'Conhecimentos',
        EDUCATION: 'Formação',
        CONTACT: 'Contato',
        EXPERIENCE: 'Experiência',
        RESUME: '<p>Trabalhando como desenvolvedor nas plataformas Microsoft .NET desde 2007, tive a oportunidade de trabalhar com diversas tecnologias e metodologias. A grande maioria dos projetos dos quais participei foram aplicações web, voltados principalmente para a utilização interna pelas companhias. Iniciei minha carreia como desenvolvedor trabalhando sempre com os conceitos de OOP(Oriented Object Programming), os quais domino, assim como diversos padrões de projetos Web e também alguns frameworks para desenvolvimento de front-end e aplicações mobile.</p><p>Atuei seguindo o modelo cascata de desenvolvimento de software, dentro do conceito de fabrica de software, seguindo padrões CMMI de maturidade de processos durante boa parte de minha carreira. Recentemente trabalhei também sob o modelo Scrum para desenvolvimento de software, o que me levou a estudar metodologias ágeis para desenvolvimento de software e me tornei um verdadeiro fã dos conceitos aplicados nestas metodologias. O que me chama mais atenção nestas metodologias são o foco nos resultados, na qualidade, na satisfação do cliente e também o espirito de equipe. “A falha de um é a falha de todos, e o sucesso de um é o sucesso de todos”.</p><p>Por trabalhar há quase 9 anos em fabricas de software, tive a oportunidade de trabalhar em diversos segmentos de mercado dentre eles: educacional, pesquisa, varejo, advocatício, medico/cientifico, governamental e financeiro. Sempre buscando entender os requisitos específicos de cada um destes setores e adequando conhecimentos técnicos e tecnológicos para atender da melhor maneira as necessidades a cada novo desafio.</p>',
        ADRESS: '<i class="fa fa-map-marker"></i>  Rua Peixoto Gomide - 742, São Paulo, Brazil',
        CONTACT_INFO: 'Info. Contato',
        GET_IN_TOUCH: 'Entre em Contato',
        NAME_LABEL: 'Nome',
        EMAIL_LABEL: 'Endereço de Email',
        MESSAGE_LABEL: 'Mensagem',
        SUBIMIT_MESSAGE: 'Enviar Mensagem',
        INPUT_NAME: 'Seu Nome',
        INPUT_EMAIL: 'Seu Endere&#231;o de Email',
        ST_IT_OCCUPATION: 'Desenvolvedor .NET Sênior (02/2015 - Até o momento)',
        ST_IT_DESCRIPTION: 'Responsável pela manutenção de aplicação SOA (Aplicação orientada a serviço) cujo front-end foi desenvolvido em Silverlight (C#) e o back-end desenvolvido utilizando a tecnologia WCF (C#)',
        DIGISYSTEM_OCCUPATION: 'Desenvolvedor .NET Sênior (10/2010 - 02/2015)',
        DIGISYSTEM_DESCRIPTION: 'Atuação como desenvolvedor em diversos projetos sob o modelo de fabrica de software. Desenvolvimento de aplicação com as tecnologias C#, VB.NET, ASP.NET, .NET MVC, .NET Web API, WCF, ASP, VB6, SQL Server Database, Microsoft Integration Services, Oracle Database, Xamarim for Android, Javascript, AngularJS, JQuery e Microsoft Sharepoint.',
        HAZIT_OCCUPATION: 'Desenvolvedor .NET (09/2009 - 10/2010)',
        HAZIT_DESCRIPTION: 'Manutenção de sistemas ASP.NET (C#) voltados para e-commerce do segmento de jogos, bem como o desenvolvimento de ferramentas para uso interno da compania.',
        POLITEC_OCCUPATION: 'Desenvolvedor .NET (10/2008 - 07/2009)',
        POLITEC_DESCRIPTION: 'Atuação como desenvolvedor em projetos para o setor governamental utilizando as tecnologias ASP.NET (C#), Javascript e Oracle Database.',
        EXPERIENCE_SUBTITLE: 'Conheça um pouco mais sobre minha experiência profissional.',
        EDUCATION_SUBTITLE: 'Saiba onde me formei',
        FATEC_COURSE: 'Técnologo em Processamento de Dados - <strong>Graduado em:</strong> 2008',
        FATEC_DESCRIPTION: 'Eu sempre gostei de tecnologia, desde que eu era uma criança, então eu decidi me formar em processamento de dados na FATEC Taquaritinga principalmente porque é uma faculdade de tecnologia reconhecida no Estado de São Paulo. Diferentemente de outras faculdades, cursos Fatec estão focados na preparação de seus alunos para o mercado e não para a carreira acadêmica ou de pesquisa. Lá eu descobri como um desafio pode ser o desenvolvimento de software e foi aí que eu descobri o que eu pretendo fazer até o fim da minha carreira.',
        UNINOVE_COURSE: 'Gestão em Tecnologia da Informação - <strong>Graduado em:</strong> 2015',
        UNINOVE_DESCRIPTION: 'Depois de trabalhar no desenvolvimento de software, durante alguns anos, decidi mudar um pouco o foco da minha carreira e saber mais sobre como funciona o gerenciamento de TI. Então eu comecei uma nova graduação, o curso "Gestão de Tecnologia da Informação" na Uninove. Esta decisão realmente mudou minha compreensão do processo de desenvolvimento de software e ajudou muito a moldar a minha postura profissional desde então. Agora eu posso ter uma melhor compreensão sobre algumas decisões de gestão que eu sempre questionei antes do curso.'
    });
    $translateProvider.preferredLanguage('br');
    $translateProvider.useSanitizeValueStrategy('sanitize');
});