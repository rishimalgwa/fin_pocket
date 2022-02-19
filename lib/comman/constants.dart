const String rupee = '₹';

//---------assets-----------
const String assetSvg = 'assets/svg';
const String graphUpPath = assetSvg + '/up_graph.svg';
const String graphDownPath = assetSvg + '/down_graph.svg';

// ignore: non_constant_identifier_names
Map BSE_100_CODE_MAP = {
  'RELIANCE INDUSTRIES LTD.': 500325,
  'TATA CONSULTANCY SERVICES LTD.': 532540,
  'HDFC Bank Ltd': 500180,
  'INFOSYS LTD.': 500209,
  'ICICI BANK LTD.': 532174,
  'HINDUSTAN UNILEVER LTD.': 500696,
  'STATE BANK OF INDIA': 500112,
  'HOUSING DEVELOPMENT FINANCE CORP.LTD.': 500010,
  'Bajaj Finance Limited': 500034,
  'BHARTI AIRTEL LTD.': 532454,
  'KOTAK MAHINDRA BANK LTD.': 500247,
  'WIPRO LTD.': 507685,
  'ASIAN PAINTS LTD.': 500820,
  'HCL TECHNOLOGIES LTD.': 532281,
  'Adani Green Energy Ltd': 541450,
  'ITC LTD.': 500875,
  'LARSEN & TOUBRO LTD.': 500510,
  'Avenue Supermarts Ltd': 540376,
  'MARUTI SUZUKI INDIA LTD.': 532500,
  'BAJAJ FINSERV LTD.': 532978,
  'AXIS BANK LTD.': 532215,
  'Adani Transmission Ltd': 539254,
  'Oil and Natural Gas Corporation Ltd': 500312,
  'Titan Company Limited': 500114,
  'ULTRATECH CEMENT LTD.': 532538,
  'Adani Total Gas Ltd': 542066,
  'SUN PHARMACEUTICAL INDUSTRIES LTD.': 524715,
  'ADANI ENTERPRISES LTD.': 512599,
  'NESTLE INDIA LTD.': 500790,
  'TATA MOTORS LTD.': 500570,
  'JSW STEEL LTD.': 500228,
  'POWER GRID CORPORATION OF INDIA LTD.': 532898,
  'ADANI PORTS AND SPECIAL ECONOMIC ZONE LTD.': 532921,
  'TECH MAHINDRA LTD.': 532755,
  'NTPC LTD.': 532555,
  'HINDUSTAN ZINC LTD.': 500188,
  'TATA STEEL LTD.': 500470,
  'HDFC Life Insurance Company Ltd': 540777,
  'PIDILITE INDUSTRIES LTD.': 500331,
  'SBI Life Insurance Company Ltd': 540719,
  'Vedanta Limited': 500295,
  'INDIAN OIL CORPORATION LTD.': 530965,
  'GRASIM INDUSTRIES LTD.': 500300,
  'MAHINDRA & MAHINDRA LTD.': 500520,
  'HINDALCO INDUSTRIES LTD.': 500440,
  'Larsen & Toubro Infotech Ltd': 540005,
  'DIVI\'S LABORATORIES LTD.': 532488,
  'BAJAJ AUTO LTD.': 532977,
  'COAL INDIA LTD.': 533278,
  'DLF LTD.': 532868,
  'DABUR INDIA LTD.': 500096,
  'GODREJ CONSUMER PRODUCTS LTD.': 532424,
  'SHREE CEMENT LTD.': 500387,
  'BHARAT PETROLEUM CORPORATION LTD.': 500547,
  'BRITANNIA INDUSTRIES LTD.': 500825,
  'SBI Cards and Payment Services Ltd': 543066,
  'SIEMENS LTD.': 500550,
  'ICICI Prudential Life Insurance Company Ltd': 540133,
  'TATA POWER CO.LTD.': 500400,
  'FSN E-Commerce Ventures Ltd': 543384,
  'CIPLA LTD.': 500087,
  'HAVELLS INDIA LTD.': 517354,
  'AMBUJA CEMENTS LTD.': 500425,
  'EICHER MOTORS LTD.': 505200,
  'DR.REDDY\'S LABORATORIES LTD.': 500124,
  'InterGlobe Aviation Ltd': 539448,
  'SRF LTD.': 503806,
  'Zomato Ltd': 543320,
  'BERGER PAINTS INDIA LTD.': 509480,
  'Indian Railway Catering and Tourism Corporation Ltd': 542830,
  'Indus Towers Ltd': 534816,
  'INDUSIND BANK LTD.': 532187,
  'ICICI Lombard General Insurance Company Ltd': 540716,
  'Tata Consumer Products Ltd': 500800,
  'MINDTREE LTD.': 532819,
  'APOLLO HOSPITALS ENTERPRISE LTD.': 508869,
  'GAIL (INDIA) LTD.': 532155,
  'INFO EDGE (INDIA) LTD.': 532777,
  'UNITED SPIRITS LTD.': 532432,
  'Macrotech Developers Ltd': 543287,
  'MARICO LTD.': 531642,
  'One 97 Communications Ltd': 543396,
  'UPL Limited': 512070,
  'MUTHOOT FINANCE LTD.': 533398,
  'MPHASIS LTD.': 526299,
  'BAJAJ HOLDINGS & INVESTMENT LTD.': 500490,
  'PIRAMAL ENTERPRISES LTD.': 500302,
  'MOTHERSON SUMI SYSTEMS LTD.': 517334,
  'Gland Pharma Ltd': 543245,
  'BANK OF BARODA': 532134,
  'HERO MOTOCORP LTD.': 500182,
  'IDBI BANK LTD.': 500116,
  'Cholamandalam Investment and Finance Company Ltd': 511243,
  'BHARAT ELECTRONICS LTD.': 500049,
  'Bandhan Bank Ltd': 541153,
  'JSW Energy Ltd': 533148,
  'L&T Technology Services Ltd': 540115,
  'ABB India Limited': 500002,
  'BOSCH LTD.': 500530,
  'Hindustan Aeronautics Ltd': 541154,
};
List gg = [
  '''Bitcoin (BTC) ''',
  '''Wrapped Bitcoin (WBTC) ''',
  '''Bitcoin BEP2
(BTCB) ''',
  '''yearn.finance
(YFI) ''',
  '''Ethereum
(ETH) ''',
  '''Maker
(MKR) ''',
  '''Binance Coin
(BNB) ''',
  '''Bitcoin Cash
(BCH) ''',
  '''Kusama
(KSM) ''',
  '''Monero
(XMR) ''',
  '''Aave
(AAVE) ''',
  '''Elrond
(EGLD) ''',
  '''Quant
(QNT) ''',
  '''Compound
(COMP) ''',
  '''Litecoin
(LTC) ''',
  '''Zcash
(ZEC) ''',
  '''Solana
(SOL) ''',
  '''Dash
(DASH) ''',
  '''Bitcoin SV
(BSV) ''',
  '''Avalanche
(AVAX) ''',
  '''Decred
(DCR) ''',
  '''Axie Infinity
(AXS) ''',
  '''Terra
(LUNA) ''',
  '''FTX Token
(FTT) ''',
  '''Arweave
(AR) ''',
  '''Ethereum Classic
(ETC) ''',
  '''Cosmos
(ATOM) ''',
  '''Helium
(HNT) ''',
  '''Convex Finance
(CVX) ''',
  '''Filecoin
(FIL) ''',
  '''Internet Computer
(ICP) ''',
  '''OKB
(OKB) ''',
  '''Neo
(NEO) ''',
  '''Polkadot
(DOT) ''',
  '''KuCoin Token
(KCS) ''',
  '''Chainlink
(LINK) ''',
  '''NEAR Protocol
(NEAR) ''',
  '''Uniswap
(UNI) ''',
  '''Waves
(WAVES) ''',
  '''Huobi Token
(HT) ''',
  '''Kadena
(KDA) ''',
  '''PancakeSwap
(CAKE) ''',
  '''Flow
(FLOW) ''',
  '''Secret
(SCRT) ''',
  '''OMG Network
(OMG) ''',
  '''UNUS SED LEO
(LEO) ''',
  '''THORChain
(RUNE) ''',
  '''The Sandbox
(SAND) ''',
  '''Tezos
(XTZ) ''',
  '''Curve DAO Token
(CRV) ''',
  '''Render Token
(RNDR) ''',
  '''Celo
(CELO) ''',
  '''Theta Network
(THETA) ''',
  '''Decentraland
(MANA) ''',
  '''Celsius
(CEL) ''',
  '''Mina
(MINA) ''',
  '''EOS
(EOS) ''',
  '''Fantom
(FTM) ''',
  '''Nexo
(NEXO) ''',
  '''Enjin Coin
(ENJ) ''',
  '''Polygon
(MATIC) ''',
  '''1inch Network
(1INCH) ''',
  '''Stacks
(STX) ''',
  '''Klaytn
(KLAY) ''',
  '''Cardano
(ADA) ''',
  '''BORA
(BORA) ''',
  '''Loopring
(LRC) ''',
  '''Algorand
(ALGO) ''',
  '''Tether
(USDT) ''',
  '''TrueUSD
(TUSD) ''',
  '''TerraUSD
(UST) ''',
  '''Binance USD
(BUSD) ''',
  '''USD Coin
(USDC) ''',
  '''Pax Dollar
(USDP) ''',
  '''Dai
(DAI) ''',
  '''IOTA
(MIOTA) ''',
  '''Basic Attention Token
(BAT) ''',
  '''Ripple
(XRP) ''',
  '''Crypto.com Coin
(CRO) ''',
  '''The Graph
(GRT) ''',
  '''Oasis Network
(ROSE) ''',
  '''Gala
(GALA) ''',
  '''Hedera
(HBAR) ''',
  '''Stellar
(XLM) ''',
  '''Chiliz
(CHZ) ''',
  '''Harmony
(ONE) ''',
  '''Theta Fuel
(TFUEL) ''',
  '''Symbol
(XYM) ''',
  '''Dogecoin
(DOGE) ''',
  '''NEM
(XEM) ''',
  '''IoTeX
(IOTX) ''',
  '''Ravencoin
(RVN) ''',
  '''TRON
(TRX) ''',
  '''VeChain
(VET) ''',
  '''XDC Network
(XDC) ''',
  '''Amp
(AMP) ''',
  '''Holo
(HOT) ''',
  '''eCash
(XEC) ''',
  '''BitTorrent (New)
(BTT) ''',
  '''Shiba Inu
(SHIB) ''',
];
