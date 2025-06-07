-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 14 Wrz 2021, 20:43
-- Wersja serwera: 5.7.31
-- Wersja PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pytania`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `e12`
--

DROP TABLE IF EXISTS `e12`;
CREATE TABLE IF NOT EXISTS `e12` (
  `nrPyt` int(11) NOT NULL AUTO_INCREMENT,
  `pyt` text,
  `odpA` text,
  `odpB` text,
  `odpC` text,
  `odpD` text,
  `obraz` text,
  `poprawna` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nrPyt`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `e12`
--

INSERT INTO `e12` (`nrPyt`, `pyt`, `odpA`, `odpB`, `odpC`, `odpD`, `obraz`, `poprawna`) VALUES
(1, 'Na rysunku procesor oznaczony jest numerem:', '2', '3', '5', '8', 'e12/1.png', 'A'),
(2, 'Na rysunku karta rozszerzeń oznaczona jest numerem:', '1', '4', '6', '7', 'e12/2.png', 'B'),
(3, 'Rysunek przedstawia pamięć: ', 'SIMM', 'DDR DIMM', 'SDRAM DIMM', 'Compact Flash', 'e12/3.png', 'C'),
(4, 'W przedstawionej na schemacie płycie głównej zasilanie należy podłaczyć do złącza oznaczonego numerem: ', '3', '5', '6', '7', 'e12/4.png', 'C'),
(5, 'Wprzedstawionej na schemacie płycie głównej złącze PCI oznaczone jest numerem: ', '1', '2', '3', '4', 'e12/5.png', 'D'),
(6, 'Złącze AGP służy do podłączenia: ', 'szybkich pamięci dyskowych', 'urządzeń wejścia/wyjścia', 'kart graficznych', 'modemu', NULL, 'C'),
(7, 'Do którego wyprowadzenia należy podłączyć głośniki aktywne w karcie dźwiękowej, której schemat funkcjonalny przedstawia rysunek?', 'Mic in', 'Line in', 'Line out', 'Speaker out', 'e12/7.png', 'C'),
(8, 'Który z elementów pokaznych na schemacie karty dźwięowej na ryunku służy do cyfrowego przetwarzania sygnałów?', 'Przetwornik A/D', 'Procesor DSP', 'Syntezator', 'Mikser', 'e12/8.png', 'B'),
(9, 'Warunkiem niezbędnym przy archiwizacji danych jest: ', 'kompresja danych', 'kopiowanie danych', 'kompresja i kopiowanie danych', 'kompresja i kopiowanie danych z jednoczesnym ich szyfrowaniem', NULL, 'B'),
(10, 'Ile komórek pamięci można zaadresować bezpośrednio w 64-bitowym procesorze, który ma 32-bitową szynę adresową?', '2 do potęgi 32', '2 do potęgi 64', '32 do potęgi 2', '64 do potęgi 2', NULL, 'A'),
(11, 'Co oznacza zwrot \'wykonanie backupu systemu\'?', 'Zamknięcie systemu', 'Ponowne uruchomienie systemu', 'Wykonanie aktualizacji systemu', 'Wykonanie kopii zapasowej systemu', NULL, 'D'),
(12, 'Klaster komputerowy to: ', 'Komputer z macierzą dyskową', 'Komputer z wieloma procesorami', 'Grupa komputerów pracujących współbieżnie tak, jakby był to jeden komputer', 'Komputer zapasowy, na którym co pewien czas wykonywana jest kopia systemu głównego', NULL, 'C'),
(13, 'Pamięć oznaczona symbolem PC3200 nie może współpracować z magistralą:', '300 MHz', '333 MHz', '400 MHz', '533 MHz', '', 'D'),
(14, 'Co oznacza jednostka dpi podawana w parametrach katalogowych skanerów i drukarek?', 'punkty na cal', 'gęstość optyczną', 'punkty na milimetr', 'punkty na centymetr', '', 'A'),
(15, 'Jaka jest maksymalna prędkość odczytu płyt CD-R w napędzie oznaczonym x48?', '480 kB/s', '4800 kB/s', '7200 kB/s', '10000 kB/s', '', 'C'),
(16, 'Funkcje różnych kategorii (daty i czasu, finansowe, tekstowe, matematyczne, statystyczne) są elementem składowym:', 'edytora tekstu', 'przeglądarki internetowej', 'arkusza kalkulacyjnego', 'programów do tworzenia prezentacji multimedialnych', '', 'C'),
(17, 'Analizując rysunek zauważamy, że limit zadeklarowanej pamięci wynosi 620976KB. Widać jednocześnie, że zainstalowanej pamięci fizycznej w analizowanym systemie jest mniej niż pamięci zadeklarowanej. Jaki typ pamięci decyduje w tym wypadku o zwiększeniu limitu pamięci zadeklarowanej ponad wielkość zainstalowanej pamięci fizycznej?', 'pamięć cache procesora', 'pamięć pliku stron', 'pamięć RAM', 'pamięć jądra', 'e12/17.png', 'B'),
(18, 'Urządzenie komputerowe, które bezwzględnie powinno być podłączone do sieci za pośrednictwem UPS, to:', 'dysk zewnetrzny', 'drukarka atramentowa', 'serwer sieciowy', 'ploter', '', 'C'),
(19, 'Z jakiego systemu plików należy skorzystać instalując Linuxa, by mieć możliwość definiowania uprawnień do plików i folderów?', 'EXT2', 'FAT32', 'NTFS', 'ISO9660', '', 'A'),
(20, 'W celu zdalnego i przy tym bezpiecznego administrowania system Linux należy wykorzystać protokół:', 'FTP', 'Telnet', 'SMTP', 'SSH2', '', 'D'),
(21, 'Cechą charakterystyczną wirusów polimorficznych jest to, że:', 'atakują tablicę FAT', 'atakują rekord startowy dysku', 'zarażają wszystkie komputery w sieci lokalnej', 'mają cechę polegającą na modyfikowaniu swojego kodu', '', 'D'),
(22, 'Na komputerze podłączonym do Internetu, w programie antywirusowym bazę wirusów należy aktualizować co najmniej:', 'raz dziennie', 'raz w tygodniu', 'raz w miesiącu', 'raz do roku', '', 'A'),
(23, 'Jeżeli podczas podłączenia stacji dysków elastycznych 1,44MB kabel danych zostanie podłączony odwrotnie to:', 'BIOS komputera zgłosi błąd podłączenia stacji dysków', 'BIOS komputera poprawnie wykryje stację dysków', 'BIOS komputera wykryje stację dysków jaki 2,88MB', 'stacja dysków ulegnie uszkodzeniu', '', 'A'),
(24, 'Jakie elementy znajdują się na przedstawionej płycie głównej?', '2 złącza ISA, 3 złącza PCI, 4 złącza pamięci DIMM', '2 złącza ISA, 4 złącza PCI, 3 złącza pamięci DIMM', '3 złącza ISA, 4 złącza PCI, 2 złącza pamięci DIMM', '4 złącza ISA, 2 złącza PCI, 3 złącza pamięci DIMM', 'e12/24.png', 'B'),
(25, 'Na schemacie blokowym, przedstawiającym fragment systemu mikroprocesorowego, symbolem X oznaczono:', 'pamięci cache', 'kontroler DMA', 'kontroler przerwań', 'pamięć stałą ROM', 'e12/25.png', 'C'),
(26, 'Na zdjęciu przedstawiono płytę główną komputera. Strzałką oznaczono:', 'procesor z umocowanym radiatorem', 'chip wbudowanej karty graficznej', 'kontroler mostka północnego z umocowanym radiatorem', 'kontroler mostka południowego', 'e12/26.png', 'C'),
(27, 'Zdjęcie przedstawia kartę:', 'sieciową ze złączem ISA', 'dźwiękową ze złączem PCI', 'telewizyjną ze złączem ISA', 'telewizyjną ze złączem PCI', 'e12/27.png', 'D'),
(28, 'Który z interfejsów jest interfejsem równoległym?', 'LPT', 'PS/2', 'RS232', 'USB', '', 'A'),
(29, 'Na schemacie blokowym procesora blok funkcyjny nazwany SIMD to:', 'zestaw 256 bitowych rejestrów znacznie przyspieszający obliczenia na liczbach stałopozycyjnych', 'zestaw 128 bitowych rejestrów niezbędny przy wykonywaniu instrukcji SSE procesora na liczbach stalo- i zmiennoprzecinkowych ', 'jednostka zmiennoprzecinkowa procesora (koprocesor)', 'moduł procesora realizujący wyłącznie operacje graficzne', 'e12/29.png', 'B'),
(30, 'Jaką funkcję pełnią elementy Tr1 i Tr2 widoczne na schemacie przedstawiającym kartę sieciową Ethernet?', 'sygnalizują za pomocą dźwięku aktywnośc karty sieciowej', 'zapewniają szyfrowanie i deszyfrowanie danych przesłanych przez sieć', 'sygnalizują za pomocą świecenia kolorem zielonym szybkość pracy karty sieciowej', 'zapewniają izolację obwodu elektrycznego sieci LAN od obwodu elektrycznego komputera', 'e12/30.png', 'D'),
(31, 'Schemat blokowy przedstawia:', 'streamer', 'dysk twardy', 'napęd dyskietek', 'napęd DVD-ROM', 'e12/31.png', 'B'),
(32, 'Systemy operacyjne z rodziny Linux rozprowadzane są na podstawie licencji:', 'GNU', 'MOLP', 'shareware', 'komercyjnej', '', 'A'),
(33, 'Zgodnie z przedstawionym w tabeli standardem opisu pamięci PC-100 wskaż pamięć, która ma maksymalny czas dostępu 6 nanosekund i minimalne opóźnienie między sygnałami CAS i RAS wynoszące 2 cykle zegara?', 'PC100-322-60', 'PC100-323-70', 'PC100-332-70', 'PC100-333-60', 'e12/33.png', 'A'),
(34, 'Zgodnie z dokumentacją karty graficznej jej zdolność do pracy z systemem AGP 2X/4X umożliwia:', 'przesyłanie danych z maksymalną prędkością 1066MB/s', 'przesyłanie danych z maksymalna prędkością 256 MB/s', 'pracę z maksymalną częstotliwością taktowania 55MHz', 'pracę z maksymalną częstotliwością taktowania 44MHz', '', 'A'),
(35, 'Jeżeli w konfiguracji karty graficznej zostanie wybrane odświeżanie obrazu większe od zalecanego, monitor CRT spełniający normy TCO 99:', 'ulegnie uszkodzeniu', 'nie włączy się, będzie wyświetlał czarny obraz', 'nie włączy się, będzie wyświetlał jedynie część obrazu', 'przejdzie w stan uśpienia, lub pojawi się okno informacyjne z komunikatem', '', 'D'),
(36, 'Jakie systemy operacyjne infekuje wirus MS Blaster?', 'MS Windows 2000/NT/XP', 'MS Windows 9x', 'Linux', 'DOS', '', 'A'),
(37, 'W dokumentacji opisano system plików:', 'FAT32', 'NTFS', 'EXT4', 'FAT', 'e12/37.png', 'B'),
(38, 'Liczba 356 zapisana w systemie dwójkowym to:', '100001100', '110011010', '101100100', '110011000', '', 'C'),
(39, 'Pewną liczbę naturalną w systemie szesnastkowym zapisano następująco: 41. Wskaż tę liczbę zapisaną w systemie dziesiętnym.', '65', '75', '81', '91', '', 'A'),
(40, 'Na płycie głównej wykorzystującej układ Intel 865G:', 'nie można zainstalować karty graficznej', 'można zainstalować kartę graficzna ze złączem AGP', 'można zainstalować kartę graficzną ze złączem ISA', 'można zainstalować kartę graficzną ze złączem PCI-Express', '', 'B'),
(41, 'Najlepsze zabezpieczenie komputera przed wirusami stanowi zainstalowanie', 'zapory FireWall', 'hasła dla BIOS-u', 'skanera intywirusowego', 'licencjowanego systemu operacyjnego', '', 'C'),
(42, 'W celu wymiany uszkodzonego modułu pamięci RAM w pierwszej kolejności należy:', 'zdemontować uszkodzony moduł pamięci', 'otworzyć obudowę komputera', 'odłączyć zasilanie komputera', 'wyłączyć monitor ekranowy', '', 'C'),
(43, 'Specyfikacja pracy firmy wymaga posługiwania się systemami plików charakteryzujących się dużym bezpieczeństwem i możliwością szyfrowania danych. W tym celu należy zastosować system operacyjny Windows:', '2000/7/XP', 'NC', 'NTSC', 'Server', '', 'A'),
(44, 'Oprogramowanie antywirusowe może skutecznie chronić komputer. Ważne jest, aby opcję uruchamiania programu wraz z komputerem opraz opcję:', 'skanowania ostatnio używanych programów', 'monitorowania w czasie rzeczywistym (skanowanie w tle)', 'automatycznego kasowania zainfekowanych plików', 'automatycznego odłączenia od sieci w przypadku infekcji', '', 'B'),
(45, 'Szerokość magistrali pamięci DDR SDRAM wynosi', '72 bity', '64 bity', '36 bitów', '32 bity', '', 'B'),
(46, 'Przy pomocy taśmy 34-pinowej przedstawionej na rysunku podłącza się do płyty głównej komputera:', 'dyski SCSI', 'dyski ATA', 'napędy dyskietek 3,5 lub 5,25 cala', 'napędy DVD', 'e12/46.png', 'C'),
(47, 'Niektóre systemy operacyjne są wielodostępne (multiuser). Systemy takie ', 'równocześnie wykonują wiele programów', 'sterują układem (klasterem) niezależnych komputerów', 'stosowane są głównie w przemyśle i systemach sterowania', 'oprócz wielozadaniowości z wywłaszczeniem realizują funkcję przydzielania czasu użytkownikom', '', 'D'),
(48, 'Jeżeli w systemie operacyjnym komputera zainstaluje się program nazywany Trojanem, to spowoduje on:', 'wykonywanie niepożądanych działań poza kontrolą użytkownika', 'ochronę systemu operacyjnego przed działaniem wirusów', 'optymalizację działania systemu operacyjnego', 'wspomaganie działania użytkownika', '', 'A'),
(49, 'Zdjęcie przedstawia płytę główną komputera. Strzałką oznaczono:', 'gniazdo zasilania do płyty ATX', 'gniazdo zasilania do płyty AT', 'połączenie do sysku IDE', 'połączenie do dysku SCSI', 'e12/49.png', 'A'),
(50, 'Przy pomocy taśmy 60-pinowej przedstawionej na rysunku podłącz się do płyty głównej komputera:', 'tylko dyski SCSI', 'tylko dyski EIDE', 'napędy ATAPI', 'wszystkie powyższe urządzenia', 'e12/50.png', 'D');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `e13`
--

DROP TABLE IF EXISTS `e13`;
CREATE TABLE IF NOT EXISTS `e13` (
  `nrPyt` int(11) NOT NULL AUTO_INCREMENT,
  `pyt` text,
  `odpA` text,
  `odpB` text,
  `odpC` text,
  `odpD` text,
  `obraz` text,
  `poprawna` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nrPyt`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `e13`
--

INSERT INTO `e13` (`nrPyt`, `pyt`, `odpA`, `odpB`, `odpC`, `odpD`, `obraz`, `poprawna`) VALUES
(1, 'Która warstwa modelu ISO/OSI jest związana z protokołem IP?', 'Sieciowa', 'Fizyczna', 'Transportowa', 'Łączy danych', NULL, 'A'),
(2, 'Jaką ilość rzeczywistych danych można przesłać w czasie 1s przez łącze synchroniczne o przepustowości 512 kbps, bez sprzętowej i programowej kompresji?', 'około 5kB', 'około 55kB', 'około 64kB', 'ponad 500kB', NULL, 'B'),
(3, 'Wskaż urządzenie, które należy wykorzystać, aby podłączyć dwa komputery do sieci Internet z dostępem przez sieć lokalną Ethernet, w której mamy do dyspozycji tylko jeden adres IP', 'router LAN', 'spliter ADSL', 'modem ISDN', 'przełącznik LAN', NULL, 'A'),
(4, 'W celu zdalnego i przy tym bezpiecznego administrowanie systemem Linux należy wykorzystać protokół:', 'FTP', 'Telnet', 'SMTP', 'SSH2', NULL, 'D'),
(5, 'Jakie połączenie z Internetem można udostępniać sieci lokalnej?', 'Wszystkie rodzaje połączeń', 'Połaczenie o szybkości transmisji co najmniej 56 kb/s', 'Jedynie twz. szybkie połączenia, tzn. powyżej 64kb/s', 'Wszystkie połączenia oprócz połaczęń modemem analogowym', NULL, 'A'),
(6, 'Aby użytkownicy sieci lokalnej mogli przeglądać strony WWW protokołami HTTP i HTTPS, brama internetowa musi przepuszczać ruch na portach', '80 i 434', '80 i 443', '90 i 434', '90 i 443', '', 'B'),
(7, 'Podczas montażu sieci komputerowej, przy wierceniu otworów w ścianach, NIE NALEŻY używać:', 'okularów ochronnych ', 'ubrania roboczego', 'obuwia roboczego', 'rękawic ochronnych', '', 'D'),
(8, 'Wybierz medium, które w sieciach komputerowych zapewnia najszybszą transmisję danych', 'mikrofale', 'fale radiowe', 'kabel śświatłowodowy', 'czteroparowy kabel kat. 5', '', 'C'),
(9, 'Karta sieciowa standardu FastEthernet pozwala na transfer danych z maksymalną prędkością:', '100 Mb/s', '100Mbps', '10 MB/s', '10 Mbps', '', 'B'),
(10, 'W celu uzyskania w sieci lokalnej prędkości przesyłania danych 100Mbpss zastosowano karty sieciowe pracujące w standardzie FastEthernet, kabel standardu UTP w odpowiedniej kategorii oraz przełącznik (switch) pracujący w standardzie FasstEthernet. Sieć taka jest wykonana w topologii:', 'IEEE', 'BUS', 'RING', 'STAR', '', 'D'),
(11, 'Który adres protokołu IP w wersji 4 ma prawidłową strukturę?', '192.21.140.16', '192.10.255.3A', '192.309.1.255', '192.0.FF.FF', '', 'A'),
(12, 'Przydzielaniem numerów IP w sieci zajmuje się serwer:', 'DHC', 'DNS', 'WINS', 'NMP', '', 'A'),
(13, 'Aby usunąć opisaną usterkę, należy:', 'sprawdzić włączenie PROXY i ewentualnie włączyć', 'zmienić konfigurację adresów IP i/lub masek podsieci im odpowiadających w taki sposób, aby oba komputery znalazły się w tej samej podsieci', 'wyłączyć system NetBIOS NWLink we właściwościach połączeń LAN komputerów', 'wyłączyć system NetBIOS przez TCP/IP w zaawansowanych ustawieniach TCP/IP kart sieciowych', 'e13/13.png', 'B'),
(14, 'Zrzut ekranu przedstawia efekt polecenia arp -a. Jak należy zinterpretować tę informcję?', 'adres fizyczny hosta jest błędny', 'komputerowi przypisano błędny adres IP', 'brak bieżących wpisów protokołu ARP', 'host nie ma połączenia z Internetem', 'e13/14.png', 'C'),
(15, 'Usługa Windows XP Professional \"Mostek sieciowy\" pozwala na łączenie ze sobą:', 'segmentów sieci LAN', 'dwóch komputerów', 'roboczych stacji bezdyskowych', 'klienta z serwerem', '', 'A'),
(16, 'Numer IP przypisany komputerowi umożliwia odbiorcy pakietu IP rozróżnienie identyfikatorów:', 'sieci i bramy', 'sieci i hosta', 'hosta i routera', 'hosta i bramy', '', 'B'),
(17, 'Polecenie tracert to narzędzie diagnostyczne, które ustala', 'ścieżkę do lokalizacji docelowej', 'sprawność połączenia przy użyciu protokołu IPX/SPX', 'poprawność konfiguracji protokołu TCP/IP', 'możliwość diagnozowania infrastruktury systemu DNS', 'e13/17.png', 'A'),
(18, 'Włączenie usługi Udostępnienie połączenia internetowego w systemie Windows uruchamia automatyczne nadawanie adresów IP dla komputerów (hostów) z niej korzystających. W tym celu wykorzystywana jest usługa:', 'WINS', 'NFS', 'DHCP', 'DNS', '', 'C'),
(19, 'Komputery przenośne są z reguły wyposażone w bezprzewodowe sieci LAN. Ograniczenia ich użytkowania dotyczą emisji fal radiowych mogących zakłócać działanie innych, ważnych dla bezpieczeństwa, urządzeń:', 'w pociągu', 'w samolocie', 'w biurze', 'w mieszkaniu', '', 'B'),
(20, 'Aby użytkownicy sieci lokalnej mogli przeglądać strony WWW protokołami HTTP i HTTPS, brama internetowa musi przepuszczać ruch na portach', '80 i 434', '80 i 443', '90 i 434', '90 i 443', '', 'B'),
(21, 'Na zdjęciu przedstawiono', 'terminator BNC', 'zastępczy wtyk RJ-45', 'zaślepkę gniazda RJ-45', 'zaślepkę kabla światłowodowego', 'e13/21.png', 'A'),
(22, 'Zdjęcie przedstawia ', 'wtyk audio', 'wtyk światłowodu', 'przedłużacz kabla UTP', 'wtyk kabla koncentrycznego', 'e13/22.png', 'B'),
(23, 'Które z wymienionych poleceń w systemie Windows XP służy do sprawdzenia bieżącej konfiguracji IP systemu Windows?', 'tcpconfig', 'ipconfig', 'configip', 'ipedit', '', 'B'),
(24, 'Urządzenie ADSL służy do uzyskania połączenia', 'radiowego', 'satelitarnego', 'cyfrowego symetrycznego', 'cyfrowego asymetrycznego', '', 'D'),
(25, 'Jednostką opisującą szybkość transmisji danych w sieciach komputerowych jest:', 'dpi', 'ips', 'bps', 'mips', '', 'C'),
(26, 'W systemie Windows XP na komputerze klienckim, plik hosts jest plikiem tekstowym, który służy do mapowania:', 'dysków twardych', 'nazw hostów na adresy IP', 'nazw hostów na adresy MAC', 'nazw hostów przez serwery DNS', '', 'B'),
(27, 'Do połączenia kilku komputerów w sieć lokalną można użyć', 'most', 'router', 'RAMDAC', 'modem', '', 'B'),
(28, 'Serwer DNS jest serwerem ', 'usług terminalowych', 'zdalnego i szyfrowanego dostęu', 'dynamicznie przydzielającym IP', 'dzięki któremu nazwy mnemoniczne (opisowe) mogą zostać zamienione na odpowiadające im adresy IP', '', 'D'),
(29, 'Numer IP zapisuje się w postaci czterech, oddzielonych od siebie kropkami:', 'oktetów ', 'dekad', 'helów', 'bitów', '', 'A'),
(30, 'Komputer ma dostęp do Internetu poprzez sieć lokalną. Wpisując w przeglądarce internetowej adres www.wp.pl użytkownik nie ma dostępu do strony WWW, natomiast wpisanie adresu IP np. 212.77.100.101 pozwala otworzyć tę stronę. Co może być tego przyczyną? ', 'brak serwera DNS', 'brak adresu bramu', 'brak serwera WINS', 'brak serwera PROXY', '', 'A'),
(31, 'Który z wymienionych adresów IP v.4 jest adresem klasy C?', '10.0.2.0', '233.0.10.1', '191.11.0.10', '126.110.10.0', '', 'B'),
(32, 'Adres IP v.4 ma długość', '2 bajty', '16 bitów', '32 bitów', '10 bajtów', '', 'C'),
(33, 'Jakie polecenie w systemach Windows/Linux jest zwyczajowo stosowane do śledzenia trasy pakietów w sieciach IP?', 'ping', 'router', 'tracert/traceroute', 'netstat', '', 'C'),
(34, 'Jaki przewód należy zastosować do instalacji sieci w pomieszczeniach, w których występują silne pola zakłócające?', 'ekranowany', 'typu skrętka ', 'koncentryczny z transmisją szerokopasmową', 'koncentryczny z transmisją w paśmie podstawowym', '', 'A'),
(35, 'W systemie Windows moduł odpowiedzialny za internetowe usługi informacyjne to:', 'IIS', 'ISA', 'IIU', 'OSI', '', 'A'),
(36, 'Jaka jest szybkość transferu danych w sieciach FDDI *ang. Fiber Distribuded Data Interface) opartych na technologii światłowodowej?', '100 Mb/s', '1024 Mb/s', '100 MB/s', '1024 MB/s', '', 'A'),
(37, 'Który z wtyków należy zamontować na przewodzie UTP Cat 5e, by podłączyć komputer do sieci?', 'BNC', 'RJ11', 'RJ45', 'MT-RJ', '', 'C'),
(38, 'Maska podsieci /23 oznacza, że na pierwszych 23 bitach 32-cyfrowej liczby binarnej znajdują się jedynki, a na pozostałych zera. Jak będzie zapisana ta maska w systemie dziesiętnym, jeżeli każdym kolejnym 8 bitom odpowiada jedna liczba dziesiętna?', '255.255.0.0', '255.255.254.0', '255.255.255.0', '255.255.255.128', '', 'B'),
(39, 'Przedstawiono wynik uzyskany po uruchomieniu w systemie Windows polecenie IPCONFIG/ALL. Jak zostały skonfigurowane właściwości protokołu TCP/IP dla karty sieciowej?', 'karta sieciowa nie ma ustawionego adresu bramy', 'karta sieciowa uzyskała adres IP automatycznie ', 'karta sieciowa ma przydzielony statyczny adres IP', 'karta sieciowa nie ma ustawionego adresu serwera DNS', 'e13/39.png', 'B'),
(40, 'Który standard z grupy IEEE 802 jest związany z sieciami bezprzewodowymi, tzw. WIreless LAN?', 'IEEE 802.3', 'IEEE 802.5', 'IEEE 802.11', 'IEEE 802.15', '', 'C'),
(41, 'Jaki protokół służy do translacji pomiędzy publicznymi i prywatnymi adresami IP?', 'ARP', 'NAT', 'RARP', 'SNMP', '', 'B'),
(42, 'Stacja robocza ma należeć do tej samej podsieci co serwer o adresie IP 192.168.10.150 i masce 255.255.255.192. Który z adresów IP należy ustawić we właściwościach protokołu TCP/IP karty sieciowej stacji roboczej', '192.168.10.1', '192.168.11.130', '192.168.10.190', '192.168.10.220', '', 'C'),
(43, 'Urządzenie ADSL służy do uzyskania połączenia', 'radiowego', 'satelitarnego', 'cyfrowego symetrycznego', 'cyfrowego asymetrycznego', '', 'D'),
(44, 'Komputer ma dostęp do Internetu poprzez sieć lokalną. Wpisując w przeglądarce internetowej adres www.wp.pl użytkownik nie ma dostępu do strony WWW, natomiast wpisanie adresu IP np. 212.77.100.101 pozwala otworzyć tę stronę. Co może być tego przyczyną? ', 'brak serwera DNS', 'brak adresu bramu', 'brak serwera WINS', 'brak serwera PROXY', '', 'A'),
(45, 'Wybierz medium, które w sieciach komputerowych zapewnia najszybszą transmisję danych', 'mikrofale', 'fale radiowe', 'kabel śświatłowodowy', 'czteroparowy kabel kat. 5', '', 'C'),
(46, 'Jaką liczbę adresów urządzeń sieciowych zapewnia do dyspozycji stosowanie klasy adresowej C w sieciach opartych na rodzinie protokołów TCP/IP?', '100', '200', '254', '256', '', 'C'),
(47, 'Który adres protokołu IP w wersji 4 ma prawidłową strukturę?', '192.21.140.1', '192.10.255.3A', '192.309.1.255', '192.0.FF.FF', '', 'A'),
(48, 'Adres IP urządzenia umożliwiającego innym komputerom w sieci lokalnej dostęp do Internetu, to adres:', 'DNS', 'WINS', 'proxy', 'bramy (router)', '', 'D'),
(49, 'Skrót MAN oznacza sieć', 'miejską', 'lokalną', 'rozległą', 'bezprzewodową', '', 'A'),
(50, 'Architektura fizyczna sieci, zwana inaczej topologią fizyczną sieci komputerowych określa:', 'sposób połączenia ze sobą komputerów ', 'standardy komunikacyjne sieci komputerowych ', 'wzajemną komunikację komputerów pomiędzy sobą', 'przekaz informacji pomiędzy protokołami sieciowymi modelu OSI', '', 'A');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `e14`
--

DROP TABLE IF EXISTS `e14`;
CREATE TABLE IF NOT EXISTS `e14` (
  `nrPyt` int(11) NOT NULL AUTO_INCREMENT,
  `pyt` text,
  `odpA` text,
  `odpB` text,
  `odpC` text,
  `odpD` text,
  `obraz` text,
  `poprawna` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nrPyt`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `e14`
--

INSERT INTO `e14` (`nrPyt`, `pyt`, `odpA`, `odpB`, `odpC`, `odpD`, `obraz`, `poprawna`) VALUES
(1, 'Którego polecenia należy użyć, aby wyraz TEKST został wyświetlony w kolorze czarnym w oknie przeglądarki internetowej?', '\'<body color=\"black\">TEKST</font>\'', '\'<font color=\"czarny\">TEKST</font>\'', '\'<font color=\"#000000\">TEKST</font>\'', '\'<body bgcolor=\"black\">TEKST</body>\'', '', 'C'),
(2, 'W poleceniach, których celem jest odtwarzanie na stronie internetowej dźwięku jako podkładu muzycznego nie wykorzystuje się atrybutu:', 'loop=\"10\"', 'balance=\"-10\"', 'volume=\"-100\"', 'href=\"C:/100.wav\"', '', 'D'),
(3, 'Jakiego znacznika należy użyć aby przejśc do kolejnej linii tekstu, nie tworząc akapitu na stronie internetowej?', '<p>', '</b>', '<br>', '</br>', '', 'C'),
(4, 'Kaskadowe arkusze stylów tworzy się w celu:', 'ułatwienia formatowania strony', 'nadpisywania wartości znaczników już ustawionych na stronie ', 'połączenia struktury dokumentu strony z właściwą formą jego prezentacji', 'blokowania jakichkolwiek zmian w wartościach znaczników już przypisanych w pliku CSS', '', 'A'),
(5, 'W podanej regule CSS: h1 {color:blue} h1 oznacza:', 'klasę ', 'wartość ', 'selektor', 'deklarację', '', 'C'),
(6, 'Edytor spełniający założenia WYSWIG musi umożliwiać ', 'tworzenie podstawowej grafiki wektorowej', 'publikację strony na serwerze poprzez  wbudowanego klienta FTP', 'obróbkę plików dźwiękowych przed umieszczeniem ich na stronie internetowej', 'uzyskanie zbliżonego wyniku tworzonej strony do jej obrazu w przeglądarce internetowej', '', 'D'),
(7, 'Do graficznego tworzenia stron internetowych należy wykorzystać:', 'edytor CSS ', 'przeglądarkę internetową', 'program typu WYSWIG', 'program MS Office Picture Manager', '', 'C'),
(8, 'W procesie walidacji stron internetowych nie bada się', 'działania linków', 'błędów składni kodu', 'zgodności z przeglądarkami', 'źródła pochodzenia narzędzi edytorskich', '', 'D'),
(9, 'Model opisu przestrzeni barw o parametrach: odcień, nasycenie i jasność to:', 'HSV', 'RGB', 'CMY', 'CMYK', '', 'A'),
(10, 'Wskaż model barw, który stosuje się do wyświetlania kolorów na ekranie monitora komputerowego', 'HLS', 'RGB', 'CMY', 'CMYK', '', 'B'),
(11, 'Który parametr obiektu graficznego ulegnie zmianie po modyfikacji wartości kanału alfa?', 'nasycenie barw', 'przeźroczystość ', 'ostrość krawędzi', 'kolejność wyświetlania pikseli', '', 'B'),
(12, 'Jakiego formatu należy użyć do zapisu obrazu z kompresją stratną?', 'GIF', 'PNG', 'PCX', 'JPEG', '', 'D'),
(13, 'Najprostszy sposób zamiany obiektu oznaczonego cyfrą 1 na obiekt oznaczony cyfra 2 polega na:', 'animowaniu obiektu', 'zmianie warstw obiektu', 'narysowaniu docelowego obiektu', 'geometrycznym transformowaniu obiektu', 'e14/13.png', 'D'),
(14, 'Jak nazywa się proces przedstawienia, we właściwej dla danego środowiska formie informacji zawartej w dokumencie elektronicznym?', 'mapowanie', 'rasteryzacja', 'renderowanie', 'teksturowanie', '', 'C'),
(15, 'Proces filtracji sygnału wejściowego w dziedzinie czasu, obejmujący zasadę superpozycji, związany jest z filtrem:', 'liniowym', 'przyczynowym', 'niezmiennym w czasie ', 'o skończonej odpowiedzi impulsowej', '', 'A'),
(16, 'Jak nazywa się podzbiór strukturalnego języka zapytań, związany z formułowaniem zapytań do bazy danych za pomocą polecenia SELECT?', 'SQL DML (ang. Data Manipulation Language)', 'SQL DDL (ang. Data Definition Language)', 'SQL DCL (ang. Data Control Language)', 'SQL DQL (ang. Data Query Language)', '', 'D'),
(17, 'Jakie są nazwy typowych poleceń języka zapytań SQL, związane z wykonywaniem operacji na danych SQL DML (ang. umieszczanie danych w bazie, kasowanie, dokonywanie zmian w danych)?', 'SELECT, SELECT INTO', 'ALTER, CREATE, DROP', 'DENY, GRANT, REVOKE', 'DELETE, INSERT, UPDATE', '', 'D'),
(18, 'Jak posortowana będzie lista, utworzona ze wszystkich kolumna tabeli uczniowie i zawierająca uczniów ze średnią większą od 5, która zostanie zwrócona jako wynik przedstawionego zapytania?', 'rosnąca według parametru klasa', 'malejąco według parametru klasa', 'rosnąco według parametru średnia', 'malejąco według parametru średnia', 'e14/18.png', 'B'),
(19, 'Według, którego parametru oraz dla ilu tabel zostaną zwrócone wiersze na liście w wyniku przedstawionego zapytania?', 'według parametru wyrob_id wyłącznie dla trzech tabel', 'według parametru wyrob_id dla wszystkich tabel', 'według parametru nr_id wyłącznie dla trzech tabel', 'według parametru nr_id dla wszystkich tabel', 'e14/19.png', 'D'),
(20, 'Który z obiektów relacyjnej bazy danych, będący kodem języka SQL, może być wywoływany w zapytaniach modyfikujących kolumny danych widoczne jak tabela, bez względu na to czy jest tworzony programowo, czy dynamicznie?', 'reguła', 'wyzwalacz', 'procedura składowa', 'funkcja zdefiniowana', '', 'D'),
(21, 'Jak nazywa się element bazy danych, za pomocą którego można jedynie odczytać dane z bazy, prezentując je w postaci tekstu lub wykresu?', 'tabela', 'raport', 'zapytanie', 'formularz', '', 'B'),
(22, 'Jakiego typu specjalizowane oprogramowanie narzędziowe należy zainstalować, aby umożliwić wykonywanie jego użytkownikowi operacji na zgromadzonych danych?', 'klucz obcy', 'System Zarządzania Bazą Danych (SZBD)', 'obiektowy System Zarządzania Bazą Danych', 'otwarty mechanizm komunikacji bazy danych', '', 'B'),
(23, 'Co należy zastosować w organizacji danych, aby zapytania w bazie danych były wykonywane szybciej?', 'reguły', 'indeksy', 'wartości domyślne', 'klucze podstawowe', '', 'B'),
(24, 'W programie Microsoft Access formą zabezpieczeń dostępu do danych związana z tabelą i kwerendą jest', 'stosowanie makr', 'przypisanie uprawnień', 'określanie przestrzeni tabel', 'wprowadzanie limitów przestrzeni dyskowej', '', 'B'),
(25, 'Które z wymienionych osób odpowiadają za przygotowanie systemu bazy danych do pracy produkcyjnej w sposób ciągły, zarządzanie uzytkownikami i instalowanie nowych wersji systemu bazodanowego?', 'projektanci narzędzi deweloperskich', 'administratorzy systemu bazy danych', 'administratorzy serwerów i sieci komputerowych', 'projektanci i programiści Systemu Zarządzania Bazą Danych', '', 'B'),
(26, 'Z jakimi mechanizmami nadawania zabezpieczeń, dającymi możliwości wykonywania operacji na bazie danych, związane są zagadnienia zarządzania kontami, użytkownikami i uprawnieniami?', 'z regułami', 'z atrybutami', 'z przywilejami obiektowymi', 'z przywilejami systemowymi', '', 'D'),
(27, 'Metoda udostępniania bazy danych w programie Microsoft Access, dotycząca wszystkich obiektów bazy umieszczonych na dysku sieciowym i używanych jednocześnie przez różne osoby nosi nazwę\"', 'folderu sieciowego', 'serwera bazy danych', 'dzielonej bazy danych', 'witryny programu SharePoint', '', 'A'),
(28, 'Jakie należy posiadać uprawnienia, aby wykonać i odtworzyć kopię zapasową bazy danych Microsoft SQL Server 2005 Express?', 'users', 'security users', 'użytkownik lokalny', 'administrator systemu', '', 'D'),
(29, 'Typ zmiennej w języku JavaScript ', 'nie występuje ', 'jest tylko jeden', 'następuje poprzez przypisanie wartości', 'musi być zadeklarowany na początku skryptu', '', 'C'),
(30, 'Zmienne typu int odnoszą się do liczb', 'naturalnych', 'całkowitych ', 'w notacji stałoprzecinkowej', 'w notacji zmiennoprzecinkowej', '', 'B'),
(31, 'Co definiuje w języku C++ przedstawiony fragment kodu?', 'hierarchię zmiennych ', 'trzy zmienne niepowiązane ze sobą', 'typ strukturalny składający się z trzech pól', 'kontakt pomiędzy zmiennymi globalnymi i lokalnymi', 'e14/31.png', 'C'),
(32, 'Sposób programowania, w którym ciąg poleceń (sekwencji instrukcji) przekazywanych komputerowi jest postrzegany jako program, nosi nazwę programowania', 'stanowego', 'logicznego', 'funkcyjnego', 'imperatywnego', '', 'D'),
(33, 'Które wartości będą kolejno wpisane w wyniku działania przedstawionego skryptu', '2 2 1', '2 1 1 ', '1 2 1', '1 2 2', 'e14/33.png', 'A'),
(34, 'Fragment kodu prezentuje składnię języka', 'C', 'C#', 'PHP', 'JavaScript', 'e14/34.png', 'C'),
(35, 'Jaki program komputerowy przekształca kod źródłowy napisany w konkretnym języku programowania, na język komputera?', 'debugger', 'kompilator', 'edytor kodu źródłowego', 'środowisko programistyczne', '', 'B'),
(36, 'Jak nazywa się program, który wykonuje instrukcje zawarte w kodzie źródłowym tworzonego programu bez uprzedniego generowania programu wynikowego?', 'interpretwr', 'kompilator', 'konwerter kodu', 'konwerter języka', '', 'A'),
(37, 'Który język skryptowy ogólnego przeznaczenia należy wykorzystać do tworzenia aplikacji WWW, zagnieżdżanych w języku HTML i uruchamianych po stronie serwera? ', 'C#', 'Perl', 'PHP', 'JavaScript', '', 'C'),
(38, 'Jak nazywa się technika umożliwiająca otwarcie połączenia klienta z serwerem i komunikacje bez przeładowywania całej strony WWW w sposób asynchroniczny?', 'PHP', 'XML', 'AJAX', 'VBScript', '', 'C'),
(39, 'Jak nazywa się element oznaczony znakiem zapytania w strukturze platformy .NET, który umożliwia tworzenie własnych aplikacji z użyciem frameworków i zamianę kompilowanego kodu pośredniego na kod maszynowy procesora zainstalowanego w komputerze?', 'infrastruktura językowa', 'biblioteka klas bazowych ', 'wspólne środowisko programistyczne', 'wspólne środowisko uruchomieniowe', 'e14/39.png', 'D'),
(40, 'Jakiego rodzaju mechanizm kontroli bezpieczeństwa wykonywania aplikacji zawiera środowisko uruchomieniowe platformy .NET Framework?', 'mechanizm wykonywania aplikacji dla bibliotek klas', 'mechanizm wykonywania aplikacji realizowany przez frameworki aplikacji internetowych', 'mechanizm wykonywania aplikacji realizowany przez funkcję Windows API', 'mechanizm wykonywania aplikacji oparty na uprawnieniach kodu i rolach', '', 'D'),
(41, 'Co to jest DBMS?', 'strukturalny język zapytań kierowanych do bazy danych', 'System Zarządzania Bazą Danych ', 'obiektowy język programowania do generowania stron www', 'kaskadowy arkusz stylów do opisu wyglądu strony www', '', 'B'),
(42, 'Fragment kodu napisany w języku HTML zamieszczony w ramce przedstawia listę', 'wypunktowaną', 'numerowaną', 'odnośników', 'skrótów', 'e14/42.png', 'B'),
(43, 'Polecenie colspan służy do łączenia komórek tabeli w poziomie, natomiast rowspan w pionie. Którą z tabel wyświetli fragment kodu napisany w języku HTML?', 'A', 'B', 'C', 'D', 'e14/43.png', 'B'),
(44, 'W znaczniku <head> ( w części <meta ...> ) strony www NIE umieszcza się informacji dotyczącej:', 'autora', 'kodowania', 'typu dokumentu', 'automatycznego odświażania', '', 'C'),
(45, 'Wskaż stwierdzenie, które jest prawdziwe dla następującej definicji stylu ', 'jest to styl lokalny', 'zdefiniowano dwie klasy', 'akapit będzie transponowany na małe litery', 'odnośnik będzie pisanych czcionką 14 punktów', 'e14/45.png', 'B'),
(46, 'W palecie kolorów RGB kolor żółty jest połączniem dwóch kolorów: zielonego i czerwonego. Który z kodów szesnastkowych oznacza kolor żółty?', '#FF00FF', '#00FFFF', '#FFFF00', '#F0F0F0', '', 'C'),
(47, 'Który z formatów NIE pozwala na zapis plików animowanych?', 'GIF', 'ACE', 'SWF', 'SVG', '', 'B'),
(48, 'Który z formatów graficznych pozwala na zapis przejrzystego tła?', 'GIF', 'RAW', 'BMP', 'JPEG', '', 'A'),
(49, 'Proces walidacji strony internetowej to:', 'zespół działań mających na celu zwiększenie ogllądalności', 'sprawdzenie jej w celu wyeliminowania błędów', 'publikowanie w sieci', 'promocja strony', '', 'B'),
(50, 'Które oprogramowanie NIE JEST systemem zarządzania treścią (CMS)? ', 'Joomla', 'Apache', 'Mambo', 'WordPress', '', 'B');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ee08`
--

DROP TABLE IF EXISTS `ee08`;
CREATE TABLE IF NOT EXISTS `ee08` (
  `nrPyt` int(11) NOT NULL AUTO_INCREMENT,
  `pyt` text,
  `odpA` text,
  `odpB` text,
  `odpC` text,
  `odpD` text,
  `obraz` text,
  `poprawna` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nrPyt`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ee08`
--

INSERT INTO `ee08` (`nrPyt`, `pyt`, `odpA`, `odpB`, `odpC`, `odpD`, `obraz`, `poprawna`) VALUES
(1, 'Na rysunku procesor oznaczony jest numerem:', '2', '3', '5', '8', 'ee08/1.png', 'A'),
(2, 'Na rysunku karta rozszerzeń oznaczona jest numerem:', '1', '4', '6', '7', 'ee08/2.png', 'B'),
(3, 'Rysunek przedstawia pamięć: ', 'SIMM', 'DDR DIMM', 'SDRAM DIMM', 'Compact Flash', 'ee08/3.png', 'C'),
(4, 'W przedstawionej na schemacie płycie głównej zasilanie należy podłaczyć do złącza oznaczonego numerem: ', '3', '5', '6', '7', 'ee08/4.png', 'C'),
(5, 'Wprzedstawionej na schemacie płycie głównej złącze PCI oznaczone jest numerem: ', '1', '2', '3', '4', 'ee08/5.png', 'D'),
(6, 'Złącze AGP służy do podłączenia: ', 'szybkich pamięci dyskowych', 'urządzeń wejścia/wyjścia', 'kart graficznych', 'modemu', NULL, 'C'),
(7, 'Do którego wyprowadzenia należy podłączyć głośniki aktywne w karcie dźwiękowej, której schemat funkcjonalny przedstawia rysunek?', 'Mic in', 'Line in', 'Line out', 'Speaker out', 'ee08/7.png', 'C'),
(8, 'Który z elementów pokaznych na schemacie karty dźwięowej na ryunku służy do cyfrowego przetwarzania sygnałów?', 'Przetwornik A/D', 'Procesor DSP', 'Syntezator', 'Mikser', 'ee08/8.png', 'B'),
(9, 'Warunkiem niezbędnym przy archiwizacji danych jest: ', 'kompresja danych', 'kopiowanie danych', 'kompresja i kopiowanie danych', 'kompresja i kopiowanie danych z jednoczesnym ich szyfrowaniem', NULL, 'B'),
(10, 'Ile komórek pamięci można zaadresować bezpośrednio w 64-bitowym procesorze, który ma 32-bitową szynę adresową?', '2 do potęgi 32', '2 do potęgi 64', '32 do potęgi 2', '64 do potęgi 2', NULL, 'A'),
(11, 'Co oznacza zwrot \'wykonanie backupu systemu\'?', 'Zamknięcie systemu', 'Ponowne uruchomienie systemu', 'Wykonanie aktualizacji systemu', 'Wykonanie kopii zapasowej systemu', NULL, 'D'),
(12, 'Klaster komputerowy to: ', 'Komputer z macierzą dyskową', 'Komputer z wieloma procesorami', 'Grupa komputerów pracujących współbieżnie tak, jakby był to jeden komputer', 'Komputer zapasowy, na którym co pewien czas wykonywana jest kopia systemu głównego', NULL, 'C'),
(13, 'Pamięć oznaczona symbolem PC3200 nie może współpracować z magistralą:', '300 MHz', '333 MHz', '400 MHz', '533 MHz', '', 'D'),
(14, 'Co oznacza jednostka dpi podawana w parametrach katalogowych skanerów i drukarek?', 'punkty na cal', 'gęstość optyczną', 'punkty na milimetr', 'punkty na centymetr', '', 'A'),
(15, 'Jaka jest maksymalna prędkość odczytu płyt CD-R w napędzie oznaczonym x48?', '480 kB/s', '4800 kB/s', '7200 kB/s', '10000 kB/s', '', 'C'),
(16, 'Funkcje różnych kategorii (daty i czasu, finansowe, tekstowe, matematyczne, statystyczne) są elementem składowym:', 'edytora tekstu', 'przeglądarki internetowej', 'arkusza kalkulacyjnego', 'programów do tworzenia prezentacji multimedialnych', '', 'C'),
(17, 'Analizując rysunek zauważamy, że limit zadeklarowanej pamięci wynosi 620976KB. Widać jednocześnie, że zainstalowanej pamięci fizycznej w analizowanym systemie jest mniej niż pamięci zadeklarowanej. Jaki typ pamięci decyduje w tym wypadku o zwiększeniu limitu pamięci zadeklarowanej ponad wielkość zainstalowanej pamięci fizycznej?', 'pamięć cache procesora', 'pamięć pliku stron', 'pamięć RAM', 'pamięć jądra', 'ee08/17.png', 'B'),
(18, 'Urządzenie komputerowe, które bezwzględnie powinno być podłączone do sieci za pośrednictwem UPS, to:', 'dysk zewnetrzny', 'drukarka atramentowa', 'serwer sieciowy', 'ploter', '', 'C'),
(19, 'Z jakiego systemu plików należy skorzystać instalując Linuxa, by mieć możliwość definiowania uprawnień do plików i folderów?', 'EXT2', 'FAT32', 'NTFS', 'ISO9660', '', 'A'),
(20, 'W celu zdalnego i przy tym bezpiecznego administrowania system Linux należy wykorzystać protokół:', 'FTP', 'Telnet', 'SMTP', 'SSH2', '', 'D'),
(21, 'Cechą charakterystyczną wirusów polimorficznych jest to, że:', 'atakują tablicę FAT', 'atakują rekord startowy dysku', 'zarażają wszystkie komputery w sieci lokalnej', 'mają cechę polegającą na modyfikowaniu swojego kodu', '', 'D'),
(22, 'Na komputerze podłączonym do Internetu, w programie antywirusowym bazę wirusów należy aktualizować co najmniej:', 'raz dziennie', 'raz w tygodniu', 'raz w miesiącu', 'raz do roku', '', 'A'),
(23, 'Jeżeli podczas podłączenia stacji dysków elastycznych 1,44MB kabel danych zostanie podłączony odwrotnie to:', 'BIOS komputera zgłosi błąd podłączenia stacji dysków', 'BIOS komputera poprawnie wykryje stację dysków', 'BIOS komputera wykryje stację dysków jaki 2,88MB', 'stacja dysków ulegnie uszkodzeniu', '', 'A'),
(24, 'Jakie elementy znajdują się na przedstawionej płycie głównej?', '2 złącza ISA, 3 złącza PCI, 4 złącza pamięci DIMM', '2 złącza ISA, 4 złącza PCI, 3 złącza pamięci DIMM', '3 złącza ISA, 4 złącza PCI, 2 złącza pamięci DIMM', '4 złącza ISA, 2 złącza PCI, 3 złącza pamięci DIMM', 'ee08/24.png', 'B'),
(25, 'Na schemacie blokowym, przedstawiającym fragment systemu mikroprocesorowego, symbolem X oznaczono:', 'pamięci cache', 'kontroler DMA', 'kontroler przerwań', 'pamięć stałą ROM', 'ee08/25.png', 'C'),
(26, 'W systemie Windows XP na komputerze klienckim, plik hosts jest plikiem tekstowym, który służy do mapowania:', 'dysków twardych', 'nazw hostów na adresy IP', 'nazw hostów na adresy MAC', 'nazw hostów przez serwery DNS', '', 'B'),
(27, 'Do połączenia kilku komputerów w sieć lokalną można użyć', 'most', 'router', 'RAMDAC', 'modem', '', 'B'),
(28, 'Serwer DNS jest serwerem ', 'usług terminalowych', 'zdalnego i szyfrowanego dostęu', 'dynamicznie przydzielającym IP', 'dzięki któremu nazwy mnemoniczne (opisowe) mogą zostać zamienione na odpowiadające im adresy IP', '', 'D'),
(29, 'Numer IP zapisuje się w postaci czterech, oddzielonych od siebie kropkami:', 'oktetów ', 'dekad', 'helów', 'bitów', '', 'A'),
(30, 'Komputer ma dostęp do Internetu poprzez sieć lokalną. Wpisując w przeglądarce internetowej adres www.wp.pl użytkownik nie ma dostępu do strony WWW, natomiast wpisanie adresu IP np. 212.77.100.101 pozwala otworzyć tę stronę. Co może być tego przyczyną? ', 'brak serwera DNS', 'brak adresu bramu', 'brak serwera WINS', 'brak serwera PROXY', '', 'A'),
(31, 'Który z wymienionych adresów IP v.4 jest adresem klasy C?', '10.0.2.0', '233.0.10.1', '191.11.0.10', '126.110.10.0', '', 'B'),
(32, 'Adres IP v.4 ma długość', '2 bajty', '16 bitów', '32 bitów', '10 bajtów', '', 'C'),
(33, 'Jakie polecenie w systemach Windows/Linux jest zwyczajowo stosowane do śledzenia trasy pakietów w sieciach IP?', 'ping', 'router', 'tracert/traceroute', 'netstat', '', 'C'),
(34, 'Jaki przewód należy zastosować do instalacji sieci w pomieszczeniach, w których występują silne pola zakłócające?', 'ekranowany', 'typu skrętka ', 'koncentryczny z transmisją szerokopasmową', 'koncentryczny z transmisją w paśmie podstawowym', '', 'A'),
(35, 'W systemie Windows moduł odpowiedzialny za internetowe usługi informacyjne to:', 'IIS', 'ISA', 'IIU', 'OSI', '', 'A'),
(36, 'Jaka jest szybkość transferu danych w sieciach FDDI *ang. Fiber Distribuded Data Interface) opartych na technologii światłowodowej?', '100 Mb/s', '1024 Mb/s', '100 MB/s', '1024 MB/s', '', 'A'),
(37, 'Który z wtyków należy zamontować na przewodzie UTP Cat 5e, by podłączyć komputer do sieci?', 'BNC', 'RJ11', 'RJ45', 'MT-RJ', '', 'C'),
(38, 'Maska podsieci /23 oznacza, że na pierwszych 23 bitach 32-cyfrowej liczby binarnej znajdują się jedynki, a na pozostałych zera. Jak będzie zapisana ta maska w systemie dziesiętnym, jeżeli każdym kolejnym 8 bitom odpowiada jedna liczba dziesiętna?', '255.255.0.0', '255.255.254.0', '255.255.255.0', '255.255.255.128', '', 'B'),
(39, 'Przedstawiono wynik uzyskany po uruchomieniu w systemie Windows polecenie IPCONFIG/ALL. Jak zostały skonfigurowane właściwości protokołu TCP/IP dla karty sieciowej?', 'karta sieciowa nie ma ustawionego adresu bramy', 'karta sieciowa uzyskała adres IP automatycznie ', 'karta sieciowa ma przydzielony statyczny adres IP', 'karta sieciowa nie ma ustawionego adresu serwera DNS', 'ee08/39.png', 'B'),
(40, 'Który standard z grupy IEEE 802 jest związany z sieciami bezprzewodowymi, tzw. WIreless LAN?', 'IEEE 802.3', 'IEEE 802.5', 'IEEE 802.11', 'IEEE 802.15', '', 'C'),
(41, 'Jaki protokół służy do translacji pomiędzy publicznymi i prywatnymi adresami IP?', 'ARP', 'NAT', 'RARP', 'SNMP', '', 'B'),
(42, 'Stacja robocza ma należeć do tej samej podsieci co serwer o adresie IP 192.168.10.150 i masce 255.255.255.192. Który z adresów IP należy ustawić we właściwościach protokołu TCP/IP karty sieciowej stacji roboczej', '192.168.10.1', '192.168.11.130', '192.168.10.190', '192.168.10.220', '', 'C'),
(43, 'Urządzenie ADSL służy do uzyskania połączenia', 'radiowego', 'satelitarnego', 'cyfrowego symetrycznego', 'cyfrowego asymetrycznego', '', 'D'),
(44, 'Komputer ma dostęp do Internetu poprzez sieć lokalną. Wpisując w przeglądarce internetowej adres www.wp.pl użytkownik nie ma dostępu do strony WWW, natomiast wpisanie adresu IP np. 212.77.100.101 pozwala otworzyć tę stronę. Co może być tego przyczyną? ', 'brak serwera DNS', 'brak adresu bramu', 'brak serwera WINS', 'brak serwera PROXY', '', 'A'),
(45, 'Wybierz medium, które w sieciach komputerowych zapewnia najszybszą transmisję danych', 'mikrofale', 'fale radiowe', 'kabel śświatłowodowy', 'czteroparowy kabel kat. 5', '', 'C'),
(46, 'Jaką liczbę adresów urządzeń sieciowych zapewnia do dyspozycji stosowanie klasy adresowej C w sieciach opartych na rodzinie protokołów TCP/IP?', '100', '200', '254', '256', '', 'C'),
(47, 'Który adres protokołu IP w wersji 4 ma prawidłową strukturę?', '192.21.140.1', '192.10.255.3A', '192.309.1.255', '192.0.FF.FF', '', 'A'),
(48, 'Adres IP urządzenia umożliwiającego innym komputerom w sieci lokalnej dostęp do Internetu, to adres:', 'DNS', 'WINS', 'proxy', 'bramy (router)', '', 'D'),
(49, 'Skrót MAN oznacza sieć', 'miejską', 'lokalną', 'rozległą', 'bezprzewodową', '', 'A'),
(50, 'Architektura fizyczna sieci, zwana inaczej topologią fizyczną sieci komputerowych określa:', 'sposób połączenia ze sobą komputerów ', 'standardy komunikacyjne sieci komputerowych ', 'wzajemną komunikację komputerów pomiędzy sobą', 'przekaz informacji pomiędzy protokołami sieciowymi modelu OSI', '', 'A');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ee09`
--

DROP TABLE IF EXISTS `ee09`;
CREATE TABLE IF NOT EXISTS `ee09` (
  `nrPyt` int(11) NOT NULL AUTO_INCREMENT,
  `pyt` text,
  `odpA` text,
  `odpB` text,
  `odpC` text,
  `odpD` text,
  `obraz` text,
  `poprawna` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`nrPyt`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ee09`
--

INSERT INTO `ee09` (`nrPyt`, `pyt`, `odpA`, `odpB`, `odpC`, `odpD`, `obraz`, `poprawna`) VALUES
(1, 'Którego polecenia należy użyć, aby wyraz TEKST został wyświetlony w kolorze czarnym w oknie przeglądarki internetowej?', '\'<body color=\"black\">TEKST</font>\'', '\'<font color=\"czarny\">TEKST</font>\'', '\'<font color=\"#000000\">TEKST</font>\'', '\'<body bgcolor=\"black\">TEKST</body>\'', '', 'C'),
(2, 'W poleceniach, których celem jest odtwarzanie na stronie internetowej dźwięku jako podkładu muzycznego nie wykorzystuje się atrybutu:', 'loop=\"10\"', 'balance=\"-10\"', 'volume=\"-100\"', 'href=\"C:/100.wav\"', '', 'D'),
(3, 'Jakiego znacznika należy użyć aby przejśc do kolejnej linii tekstu, nie tworząc akapitu na stronie internetowej?', '<p>', '</b>', '<br>', '</br>', '', 'C'),
(4, 'Kaskadowe arkusze stylów tworzy się w celu:', 'ułatwienia formatowania strony', 'nadpisywania wartości znaczników już ustawionych na stronie ', 'połączenia struktury dokumentu strony z właściwą formą jego prezentacji', 'blokowania jakichkolwiek zmian w wartościach znaczników już przypisanych w pliku CSS', '', 'A'),
(5, 'W podanej regule CSS: h1 {color:blue} h1 oznacza:', 'klasę ', 'wartość ', 'selektor', 'deklarację', '', 'C'),
(6, 'Edytor spełniający założenia WYSWIG musi umożliwiać ', 'tworzenie podstawowej grafiki wektorowej', 'publikację strony na serwerze poprzez  wbudowanego klienta FTP', 'obróbkę plików dźwiękowych przed umieszczeniem ich na stronie internetowej', 'uzyskanie zbliżonego wyniku tworzonej strony do jej obrazu w przeglądarce internetowej', '', 'D'),
(7, 'Do graficznego tworzenia stron internetowych należy wykorzystać:', 'edytor CSS ', 'przeglądarkę internetową', 'program typu WYSWIG', 'program MS Office Picture Manager', '', 'C'),
(8, 'W procesie walidacji stron internetowych nie bada się', 'działania linków', 'błędów składni kodu', 'zgodności z przeglądarkami', 'źródła pochodzenia narzędzi edytorskich', '', 'D'),
(9, 'Model opisu przestrzeni barw o parametrach: odcień, nasycenie i jasność to:', 'HSV', 'RGB', 'CMY', 'CMYK', '', 'A'),
(10, 'Wskaż model barw, który stosuje się do wyświetlania kolorów na ekranie monitora komputerowego', 'HLS', 'RGB', 'CMY', 'CMYK', '', 'B'),
(11, 'Który parametr obiektu graficznego ulegnie zmianie po modyfikacji wartości kanału alfa?', 'nasycenie barw', 'przeźroczystość ', 'ostrość krawędzi', 'kolejność wyświetlania pikseli', '', 'B'),
(12, 'Jakiego formatu należy użyć do zapisu obrazu z kompresją stratną?', 'GIF', 'PNG', 'PCX', 'JPEG', '', 'D'),
(13, 'Najprostszy sposób zamiany obiektu oznaczonego cyfrą 1 na obiekt oznaczony cyfra 2 polega na:', 'animowaniu obiektu', 'zmianie warstw obiektu', 'narysowaniu docelowego obiektu', 'geometrycznym transformowaniu obiektu', 'ee09/13.png', 'D'),
(14, 'Jak nazywa się proces przedstawienia, we właściwej dla danego środowiska formie informacji zawartej w dokumencie elektronicznym?', 'mapowanie', 'rasteryzacja', 'renderowanie', 'teksturowanie', '', 'C'),
(15, 'Proces filtracji sygnału wejściowego w dziedzinie czasu, obejmujący zasadę superpozycji, związany jest z filtrem:', 'liniowym', 'przyczynowym', 'niezmiennym w czasie ', 'o skończonej odpowiedzi impulsowej', '', 'A'),
(16, 'Jak nazywa się podzbiór strukturalnego języka zapytań, związany z formułowaniem zapytań do bazy danych za pomocą polecenia SELECT?', 'SQL DML (ang. Data Manipulation Language)', 'SQL DDL (ang. Data Definition Language)', 'SQL DCL (ang. Data Control Language)', 'SQL DQL (ang. Data Query Language)', '', 'D'),
(17, 'Jakie są nazwy typowych poleceń języka zapytań SQL, związane z wykonywaniem operacji na danych SQL DML (ang. umieszczanie danych w bazie, kasowanie, dokonywanie zmian w danych)?', 'SELECT, SELECT INTO', 'ALTER, CREATE, DROP', 'DENY, GRANT, REVOKE', 'DELETE, INSERT, UPDATE', '', 'D'),
(18, 'Jak posortowana będzie lista, utworzona ze wszystkich kolumna tabeli uczniowie i zawierająca uczniów ze średnią większą od 5, która zostanie zwrócona jako wynik przedstawionego zapytania?', 'rosnąca według parametru klasa', 'malejąco według parametru klasa', 'rosnąco według parametru średnia', 'malejąco według parametru średnia', 'ee09/18.png', 'B'),
(19, 'Według, którego parametru oraz dla ilu tabel zostaną zwrócone wiersze na liście w wyniku przedstawionego zapytania?', 'według parametru wyrob_id wyłącznie dla trzech tabel', 'według parametru wyrob_id dla wszystkich tabel', 'według parametru nr_id wyłącznie dla trzech tabel', 'według parametru nr_id dla wszystkich tabel', 'ee09/19.png', 'D'),
(20, 'Który z obiektów relacyjnej bazy danych, będący kodem języka SQL, może być wywoływany w zapytaniach modyfikujących kolumny danych widoczne jak tabela, bez względu na to czy jest tworzony programowo, czy dynamicznie?', 'reguła', 'wyzwalacz', 'procedura składowa', 'funkcja zdefiniowana', '', 'D'),
(21, 'Jak nazywa się element bazy danych, za pomocą którego można jedynie odczytać dane z bazy, prezentując je w postaci tekstu lub wykresu?', 'tabela', 'raport', 'zapytanie', 'formularz', '', 'B'),
(22, 'Jakiego typu specjalizowane oprogramowanie narzędziowe należy zainstalować, aby umożliwić wykonywanie jego użytkownikowi operacji na zgromadzonych danych?', 'klucz obcy', 'System Zarządzania Bazą Danych (SZBD)', 'obiektowy System Zarządzania Bazą Danych', 'otwarty mechanizm komunikacji bazy danych', '', 'B'),
(23, 'Co należy zastosować w organizacji danych, aby zapytania w bazie danych były wykonywane szybciej?', 'reguły', 'indeksy', 'wartości domyślne', 'klucze podstawowe', '', 'B'),
(24, 'W programie Microsoft Access formą zabezpieczeń dostępu do danych związana z tabelą i kwerendą jest', 'stosowanie makr', 'przypisanie uprawnień', 'określanie przestrzeni tabel', 'wprowadzanie limitów przestrzeni dyskowej', '', 'B'),
(25, 'Które z wymienionych osób odpowiadają za przygotowanie systemu bazy danych do pracy produkcyjnej w sposób ciągły, zarządzanie uzytkownikami i instalowanie nowych wersji systemu bazodanowego?', 'projektanci narzędzi deweloperskich', 'administratorzy systemu bazy danych', 'administratorzy serwerów i sieci komputerowych', 'projektanci i programiści Systemu Zarządzania Bazą Danych', '', 'B'),
(26, 'Z jakimi mechanizmami nadawania zabezpieczeń, dającymi możliwości wykonywania operacji na bazie danych, związane są zagadnienia zarządzania kontami, użytkownikami i uprawnieniami?', 'z regułami', 'z atrybutami', 'z przywilejami obiektowymi', 'z przywilejami systemowymi', '', 'D'),
(27, 'Metoda udostępniania bazy danych w programie Microsoft Access, dotycząca wszystkich obiektów bazy umieszczonych na dysku sieciowym i używanych jednocześnie przez różne osoby nosi nazwę\"', 'folderu sieciowego', 'serwera bazy danych', 'dzielonej bazy danych', 'witryny programu SharePoint', '', 'A'),
(28, 'Jakie należy posiadać uprawnienia, aby wykonać i odtworzyć kopię zapasową bazy danych Microsoft SQL Server 2005 Express?', 'users', 'security users', 'użytkownik lokalny', 'administrator systemu', '', 'D'),
(29, 'Typ zmiennej w języku JavaScript ', 'nie występuje ', 'jest tylko jeden', 'następuje poprzez przypisanie wartości', 'musi być zadeklarowany na początku skryptu', '', 'C'),
(30, 'Zmienne typu int odnoszą się do liczb', 'naturalnych', 'całkowitych ', 'w notacji stałoprzecinkowej', 'w notacji zmiennoprzecinkowej', '', 'B'),
(31, 'Co definiuje w języku C++ przedstawiony fragment kodu?', 'hierarchię zmiennych ', 'trzy zmienne niepowiązane ze sobą', 'typ strukturalny składający się z trzech pól', 'kontakt pomiędzy zmiennymi globalnymi i lokalnymi', 'ee09/31.png', 'C'),
(32, 'Sposób programowania, w którym ciąg poleceń (sekwencji instrukcji) przekazywanych komputerowi jest postrzegany jako program, nosi nazwę programowania', 'stanowego', 'logicznego', 'funkcyjnego', 'imperatywnego', '', 'D'),
(33, 'Które wartości będą kolejno wpisane w wyniku działania przedstawionego skryptu', '2 2 1', '2 1 1 ', '1 2 1', '1 2 2', 'ee09/33.png', 'A'),
(34, 'Fragment kodu prezentuje składnię języka', 'C', 'C#', 'PHP', 'JavaScript', 'ee09/34.png', 'C'),
(35, 'Jaki program komputerowy przekształca kod źródłowy napisany w konkretnym języku programowania, na język komputera?', 'debugger', 'kompilator', 'edytor kodu źródłowego', 'środowisko programistyczne', '', 'B'),
(36, 'Jak nazywa się program, który wykonuje instrukcje zawarte w kodzie źródłowym tworzonego programu bez uprzedniego generowania programu wynikowego?', 'interpretwr', 'kompilator', 'konwerter kodu', 'konwerter języka', '', 'A'),
(37, 'Który język skryptowy ogólnego przeznaczenia należy wykorzystać do tworzenia aplikacji WWW, zagnieżdżanych w języku HTML i uruchamianych po stronie serwera? ', 'C#', 'Perl', 'PHP', 'JavaScript', '', 'C'),
(38, 'Jak nazywa się technika umożliwiająca otwarcie połączenia klienta z serwerem i komunikacje bez przeładowywania całej strony WWW w sposób asynchroniczny?', 'PHP', 'XML', 'AJAX', 'VBScript', '', 'C'),
(39, 'Jak nazywa się element oznaczony znakiem zapytania w strukturze platformy .NET, który umożliwia tworzenie własnych aplikacji z użyciem frameworków i zamianę kompilowanego kodu pośredniego na kod maszynowy procesora zainstalowanego w komputerze?', 'infrastruktura językowa', 'biblioteka klas bazowych ', 'wspólne środowisko programistyczne', 'wspólne środowisko uruchomieniowe', 'ee09/39.png', 'D'),
(40, 'Jakiego rodzaju mechanizm kontroli bezpieczeństwa wykonywania aplikacji zawiera środowisko uruchomieniowe platformy .NET Framework?', 'mechanizm wykonywania aplikacji dla bibliotek klas', 'mechanizm wykonywania aplikacji realizowany przez frameworki aplikacji internetowych', 'mechanizm wykonywania aplikacji realizowany przez funkcję Windows API', 'mechanizm wykonywania aplikacji oparty na uprawnieniach kodu i rolach', '', 'D'),
(41, 'Co to jest DBMS?', 'strukturalny język zapytań kierowanych do bazy danych', 'System Zarządzania Bazą Danych ', 'obiektowy język programowania do generowania stron www', 'kaskadowy arkusz stylów do opisu wyglądu strony www', '', 'B'),
(42, 'Fragment kodu napisany w języku HTML zamieszczony w ramce przedstawia listę', 'wypunktowaną', 'numerowaną', 'odnośników', 'skrótów', 'ee09/42.png', 'B'),
(43, 'Polecenie colspan służy do łączenia komórek tabeli w poziomie, natomiast rowspan w pionie. Którą z tabel wyświetli fragment kodu napisany w języku HTML?', 'A', 'B', 'C', 'D', 'ee09/43.png', 'B'),
(44, 'W znaczniku <head> ( w części <meta ...> ) strony www NIE umieszcza się informacji dotyczącej:', 'autora', 'kodowania', 'typu dokumentu', 'automatycznego odświażania', '', 'C'),
(45, 'Wskaż stwierdzenie, które jest prawdziwe dla następującej definicji stylu ', 'jest to styl lokalny', 'zdefiniowano dwie klasy', 'akapit będzie transponowany na małe litery', 'odnośnik będzie pisanych czcionką 14 punktów', 'ee09/45.png', 'B'),
(46, 'W palecie kolorów RGB kolor żółty jest połączniem dwóch kolorów: zielonego i czerwonego. Który z kodów szesnastkowych oznacza kolor żółty?', '#FF00FF', '#00FFFF', '#FFFF00', '#F0F0F0', '', 'C'),
(47, 'Który z formatów NIE pozwala na zapis plików animowanych?', 'GIF', 'ACE', 'SWF', 'SVG', '', 'B'),
(48, 'Który z formatów graficznych pozwala na zapis przejrzystego tła?', 'GIF', 'RAW', 'BMP', 'JPEG', '', 'A'),
(49, 'Proces walidacji strony internetowej to:', 'zespół działań mających na celu zwiększenie ogllądalności', 'sprawdzenie jej w celu wyeliminowania błędów', 'publikowanie w sieci', 'promocja strony', '', 'B'),
(50, 'Które oprogramowanie NIE JEST systemem zarządzania treścią (CMS)? ', 'Joomla', 'Apache', 'Mambo', 'WordPress', '', 'B');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
