??"
?'?&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??!
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:س?*%
shared_nameembedding/embeddings
?
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*!
_output_shapes
:س?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1298*
value_dtype0	
}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_17*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:س?*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*!
_output_shapes
:س?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:س?*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*!
_output_shapes
:س?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes

:ֳ*
dtype0*??
value??B??ֳBtoBofBtheBinBforBaBonBandBwithBisBnewBtrumpBmanBatBfromByouBaboutBbyBafterBthisBbeBoutBitBupBhowBthatBasBnotByourBheBhasBwhoBareBjustBwhatBhisBallBreportBusBwillBintoBmoreBhaveBoverBwhyBoneBwomanBareaBsaysBdonaldBgetBdayBcanBitsBnoBfirstBherBtimeBlikeBtrumpsBpeopleBnowBiBanBobamaBwasBhouseBstillBoffBwhiteBlifeBmakeBifBwomenBthanBdownBbackBmyBclintonBcouldBwhenBbeforeBtheirBweBtheyBfamilyBdoByearsB	americansBwouldBworldBblackBhimBonlyBstudyBbillBsoBmostBbeingBgopBbutBwayBwatchBfindsBamericanBshouldByearBnationBcantB5BreallyBpoliceBknowBsheBtooBduringBsayBgoodBgoingBshowBschoolBdeathBstateBbigB	presidentBhomeBbestBhealthBvideoBkidsBloveBmayBhillaryBcampaignBorBagainstBpartyBmomBworkBlastBgetsBneedBparentsBgettingBrightBthingsBneverBeveryBsomeBjohnBdeadBwhereBtakeBlittleBdoesntBwhileBmakesB10BchangeB3BnextBnewsBgayBthroughBtheseBwarBstopBotherBhesBchildBseeBownBdontBcourtBaroundBstarBourBnationsBlocalBliveBrealBcallsBamericaBgoBevenBwantBgotBofficeBguyBgameBtakesBbushBthemBdogBlookBheresBfinallyBelectionBnationalBmadeBrevealsBmoneyBcollegeBanotherBagainB2BthingBjobBwantsBweekBplanBmillionBdebateBdadBbabyB	announcesBstudentsBhelpBwontBgunBthereBmeBunderBtwoBtopBsexualBsexBcongressBwithoutBenoughBbeenBmuchBhighBfoodBfacebookBclimateBnorthBmansBdealBcoupleBtellBsenateBfightBshootingBpaulBnightBhadBgodBfriendsBfriendBactuallyB7BtryingBchildrenBcareBhistoryBbadBshowsBoldBmenBanyB
governmentBfindBcityBbusinessB4BwaysBteenBpowerBmovieBmakingBlawBspeechBseasonBendBdoesBbetterB6BsupremeBsupportBmediaBentireBattackBuseBpopeBfansBeveryoneBeverBtvBstoryBselfBformerBawayBkeepBgreatBbodyBalreadyBreleasesBpartBnameB
introducesBbookBveryBthinkBpublicBprettyBpresidentialBphotosBgiveBfilmBcaseBcallBwereBunveilsBsecretBsandersBpollBcompanyByorkBgirlBlongBlineBfutureBfireBcomeBcarBtimesB	somethingBsocialBhavingBforcedBdidntBbehindBviolenceBsonBmarriageBfaceBwinBweddingBwaterBsingleBrunBrepublicansBfuckingBfoundBemailB	christmasBceoBboyB1BthinksBrightsB
republicanBmustBimBfreeBcomingB8B
scientistsBraceBlivingBbecauseBadBstatesBlookingBjamesBemployeeBworldsBtalkBroomBplansBmusicBmichaelBclaimsBvotersBusedBputBhereBgoesBdidB2016B	thousandsBstudentBrunningBmightBkilledBbetweenBwifeBvoteBteamBsameBjudgeBinsideBcontrolB	candidateBasksBadmitsB20BtwitterBsureBsummerBsecurityB	politicalBonceBmanyBideaBreportsBopenB	officialsBmiddleBmeetBgroupBgirlsBfullBeachBdaysBbanByoureBworkingBtellsBryanBprobablyBpersonBmorningBletBhumanBgeorgeB	democratsB
californiaBwomensBwarnsBhotBbernieBalwaysBwrongBuntilBtownBthoughtBtaxBphotoBperfectBjusticeBcrisisBteacherBtakingB	secretaryBrussiaBredBplaceBfatherBsuperBsomeoneBserviceBmomsBdoingB
washingtonBreadyBnothingBlistBletsBleavesBkimBhoursBgivingB
everythingB
departmentBcountryBcancerBbreakingBbelieveBartB12BshitBshesBsecondB	questionsBletterBheadBfrancisBfbiBcomesByoungBsleepBshotBpayBminutesBmeetingBmajorityBlooksBlivesBiranBiceBheartBhappyBgivesBfemaleBdiesBdateB	communityByetBtodayBtexasBprisonBmissingBmillionsBmikeBmarchBleadersBkindBfewBeatingBdreamBadministrationBwallBtipsBsouthBromneyBpastBknowsBkillBisisBcruzBbirthdayBbarBattacksBwinsBvisitBtalksBsaveBplayBorderBmotherBmonthsBleftBexcitedBdirectorBclassBwarsBtripBthreeBthoseB
restaurantBneedsBlostBlessBleaveBkoreaBinternetBhugeB
democraticB
candidatesBageBwatchingBtogetherBsystemBstartBstarsBproblemBpersonalBnuclearBmonthBisntBgiftBfanBearthB
celebratesBcatBworriedB
strugglingBstreetBscottBrecordBphoneBonlineBmarkBkidBhitBhellBfeelBfederalBcopBchrisBboxBbillionBbidenBtweetsBtrueBtravelBreasonBpostBpercentBoutsideBlessonsBimmigrationBfoxB	followingBcoverBbirthBbecomeBassaultBappleBamericasBairBwholeBwhatsBunitedBtrailerBspecialBrulesBroadBresponseBrelationshipBprotestBownerBmothersBmomentBlatestBkingB	hollywoodBhardBhairBguideBfloridaBfeelsBdinnerB	beautifulBamazonBwordsBwordBweekendBwaitingBusersBunionBturnBthirdBsetBpoorB	obamacareBmuellerBlotBissuesBhuffpostBfrontBfavoriteB	employeesBdrugBcopsBaddsB30BvictimsBtoldBtheresBtedBstraightBstephenBreadBmoveBkillingBjimmyBhopeBfunB
experienceB	educationBdrunkB	differentBdaughterBchineseBchinaBchiefBbreakBaccusedBabuseB9BwellBusingBthinkingBsongBsenatorBqueerBpenceBoffersBmurderBmilitaryBleaderBkeepsBhopingBholidayBglobalBfinalBexpertsBearlyBdavidBbuyBboysBaskB2015B11BwearingBtryBtomBtalkingBstageBsmallBrussianBrockBpointBmassiveBleastBkeyBawardsB100BweirdBvowsBtotallyBteensBsurpriseBstartingBseriesBreturnsBreasonsBputsBpressBpolicyBmassBloseBlearnedBiraqB	hurricaneBhimselfBhandsBdiscoverB
completelyBcnnBchanceBcenterBcareerBcalledBanythingBanyoneB13BworkersBwishesBweeksBsyriaBsportsBspendsBsinceBsignsBsickBroleBprogramBpowerfulBopensBonionBofficialBnamesBmovingBfuckBfeelingBfallBdecisionBbringB2017BvoterBvoiceBtaylorBsyrianBsuicideBriseBrealityBpoliticsBobamasBmuslimBmessageBleadBkillsBjoeB	interviewB	importantB
girlfriendBdanceBcongressmanBclearlyBbiggestB	apartmentBadorableBworthB
supportersBsteveBsignBschoolsB
protestersBplaneBnumberBmentalBlightBinvestigationBhitsBfearBevidenceBepisodeBbandBamBacrossBabortionB911B50BwhichBtableBsuccessBstandBrubioBrobertBriskB	religiousBreformBqueenBnflBmembersBlateBjrBideasBhealthyBharryBhandBgovernorBfiveBfergusonBfashionB	emotionalBdieBcolbertBcoffeeBcarolinaBannounceB15BwalkingBwaitBvotingBturnsBtransgenderBtellingBsadBrefugeesBprinceBpregnantBplayingBplanetBnycBmichelleB
kardashianBjeffBiowaBhumansBgivenBfootballBeyesBdreamsBdarkB	coworkersBconversationBbusBbreaksBboardB
apologizesBvacationBtheyreBstoreBstBsoonBshopBsenatorsBseanBrememberBreleaseB	perfectlyBoilBkerryBjobsBindustryBhotelBhostBhappensBgoogleBdogsBdoctorBdataB	celebrateBbringsBartistB
apparentlyBalmostBaddressByouthBwilliamsBwestBweightBunBtruthBtrainBtiredBthrowsBthanksBskinBseenBsaudiBrespondsB
reportedlyBremindsBreadingBracistBquietlyBputtingBpreventBpossibleBparisBmarketBlosesBlongerBjonesBhomelessBhateB	halloweenBgeneralBforceBfailsBexplainsB	executiveBdoneBdemandBdatingBcleanB	christianBcardBbossBbloodBamazingBallegationsBalbumBadviceBactionBactB2014BworstBwhetherB
universityBthanksgivingBsuspectBsuggestsBstuffBspendingBspendBsideBsearchBscandalBsanBsalesBquestionBpushBproblemsBprivateBplayerBpizzaBoscarsBmindBmedicalB	marijuanaBmagazineBlgbtBleavingBjebBhospitalBholdingB
historicalB
harassmentBgreenBgamesBforeignB	financialBepaBeatBdespiteB	desperateBdemandsBdeadlyBcutBchickenBchicagoBcheckBbenBavoidBaudienceBattemptByesBworkerBwomansBwhosBwebsiteBvotesBunableBthreatBthatsBstaffBspentBspeakBspaceBsayingBreviewBresearchersBreporterBplannedBpictureBpickBpeaceBpassesBniceBmuseumBmanagerBlearnBjesusBjennerBisraelB
immigrantsBhopesBhallBguysBgunsBguestBgaveBfindingBfarBenergyB	elizabethBeconomyBdoctorsB	customersBcultureBcreateBcrashBcoworkerB	committeeBbowlBbeginsBbeautyBauthoritiesBaskingBamidBairlinesByoullBwentBtransBtourBstunningBslamsBsimpleBseaBsaidBrevealBrealizesBrapeBputinBopeningBofficerBnetflixBmeanBmccainBmayorBmaleBmajorBlikelyBleadsBkellyBhourBheroBgoldenBglassBgiantBfastBfamiliesBebolaBeasyBdyingBdriverBdozensBdisneyBcoolBcolorBcoldBbuildingBbearBbattleBbathroomBbankBassuresBanimalsBairportBaheadBworseBworksBwinterBusesBtimBteachersBspringBspotBsnlBseeingBreturnB	residentsBrefugeeBrareBrallyBpromisesBperformanceBpassBolympicBohioBmeansBlovedBlossBlegalBhundredsB	hilariousBgoldBgasBflightBfiguresBfightingBentersBeastBdocumentaryBdivorceB
depressionBdefendsB
conventionB	concernedB
commercialBcloseBchurchB	characterBbudgetBarrestedBalBaidB	activistsB17B	wonderingBwishBturkeyBtriesBtowardB	threatensBtheoryBtheaterBstepsBsomehowBshouldntBsharesBrickBproudB
presidentsBoscarBontoBnearBnasaBleadingBlawyerBhearingBhalfBgrandmaBfundingBforwardBericBdoorBdeskB	dangerousBcourseBcongressionalBconfirmsBclaimBcameBborderBbeerBbagBaverageBarchivesBanniversaryBaloneBaccidentallyBwildBwarnBvsBurgesBupdateBtookBtoddlerBthronesBtestBsuitBstoriesBspeciesBscienceBsceneBrunsB
retirementBrestBreleasedBreceivesBrecallsBpuertoBpopularBpoolBperBparkBpaidBnakedBmooreBmissBmartinBmachineBlawsuitBhelpsBhelpingBharveyBfreedomBelseBdrivingBdebtBdcBdadsBcrowdBcriticsBcrimeBcommentsBcomeyBcivilBciaB	celebrityB	boyfriendBblueBbecomingBbecomesBaskedBalsoBalabamaB
absolutelyB40BwonBwinningBwalkBvaticanBupcomingBtreeBtotalBthenBterrorBswiftBsweetBsuddenlyBstupidBstandingBsoundBsonsBslowlyBsittingBseriousBrichBrepealBrefusesBraiseBprotestsBmoviesBmetBmatterBmarriedB	marketingBmarcoBlouisBlgbtqBlaunchBjustinBjournalistsBjenniferBitselfBissueBinternationalBhonorBholdBhappenedBguiltyBgroupsBfloorBfitBfiredBfestivalBfathersBfakeBfacesBeyeBextraBemptyBemailsBelderlyBdisappointedBcomputerBcommonBceremonyBboehnerBbobBbirdBattendBarentBamongBactorB	accordingBwineBuniverseBuberBturningBtruckBtrialBtradeB	surprisedBstuckBsiteBshutdownBshutBshortBseniorBsendsBsarahBsafetyBroundupBringBrideBresultsBrecipesBprotectBpointsB
passengersBpaperBownersB
nominationBmovesBmemorialBlunchBliesBlearningBladyBlaBkillerB	kavanaughB	insuranceB	instagramBinsistsBincreaseBimmediatelyBherselfBheardBhearBhappenBguestsBgroundBfourBfordBfixBfdaBfaithBfailureBfailedBeventBeffortB
discoveredBdiedBdefenseBcupBcompleteBcohenBclothesBclintonsBcatholicBbedBawesomeBafghanistanBwearBweaponsBwarningBwantedBvisitsBviralB
valentinesBtweetBtrackBteachBstruggleBstockBsoccerBsilenceBshareBsetsBserialBsendBsecretsBscreenBschumerBradioBpullBproductBprobeBprimaryBpornBpollsBplayersBothersBordersBolympicsBnumbersBnearlyBnamedBmilesBmeetsBmallBmagicalBlaborBjimBhonorsBheldBheadsBhasntBgrowingBgoneBforcesBfocusBexplainBdriveBdomesticBdncBdiseaseB	democracyBdeepBdecidesBcutsBcustomerBcreepyBcreatedBcrazyBcouplesBcontroversialBclassicBcitizensBchuckBchoiceBchildsB	childrensBchairBcauseBcashBcarpetBbunchBbeeBballBawkwardBawardBasianBarmyBannualBagoB—BwriterBwindowB	treatmentBthreatsB
themselvesB	survivorsBsubwayBstyleBstatueBstationBspeaksBsocietyBshirtBsecondsBruleBrollsBreminderB
recommendsB	realizingBprovesB	pregnancyBpopBpleaseBplanningB	parentingBolderBnoteBnobodyBnbaBmovementBmodernBmissileBministerBmexicanB	mcconnellBmattBlevelBlaunchesBkeepingBjourneyBitemsBinsteadBinjuredB
incredibleB	immigrantBhusbandBholdsBhelpedBheadquartersBgreatestBgrandmotherBfunniestBfundBfrenchBfeaturesBfallsBdisasterB	depressedBdeclaresB	daughtersB	currentlyBcreamBcontinueBchargesB
charactersBchangingBchangesBcelebritiesBcampusBcallingBbrownBbrotherB	breakfastBbrainBblastsBbeyondBbeginBagentB14BwritingBwouldntBwageBvictoryB
throughoutBterribleB
televisionBtechBtargetBstrikesBstrikeBstressBstayBsessionsBsentBseesBsantaBsandwichBroyalBrescueBrecentBrealizeBreachBrateBquickBproveBpromiseBplacesBpeoplesB
parenthoodBpantsBnudeBneededBmoonBmodelBmistakesB
misconductBmexicoBmemoryBmemberBlovesBlosingBlondonBlistenBlinkBlawsBlackBkanyeBjohnsonBivankaBiphoneBinterestBintelligenceBinmatesBillBhillB
healthcareBgymBgrowBfridayBforeverBfilmsBfifthBfarmBdrugsBdrinkBdressBdirtyBdearB	countriesBcostB	continuesBcontentB
conferenceBcomedyBclubBclearBchristieBchargedBcaughtBcastBcarsBcampBbrokenBblameBbinBbellB	beginningBanxietyBangryBalongBallowBaccidentB16BwithinBwhateverB	weinsteinBwarrenBviceBtriedBtrashBtinyB
terrifyingB	terrifiedBtaleBstrongBstrategyBstopsBstepBspeakingBsorryBsixBsellingBsafeBreduceBraisesBprojectBprimeBprideB
previouslyB
presidencyBpledgeBparadeBofficersBnormalBnomineeBmuslimsBminuteBmaybeBlobbyBlinkedBlegislationBlargestBlargeBkushnerBkateBjuryBjoinBhurtBheavenBgiftsBgeorgiaBgenderBfuneralBfourthBformBflagBfieldBfamousBfailingBexactlyBequalityB	emergencyBdropB	diversityBdigitalBdickBdeniesBcurrentBcreditB	corporateBconcertBbuyingBbostonBbooksBbombBblockBbizarreBbenefitsBbeachBbannonB	attentionBassBanymoreBagreesByourselfB	wisconsinBwebBweatherBvisitingBvisionBvirginiaBvictimBuserBtrustBtributeBtakenB
successfulBsortBsmithBsingerBshockedBshellBsexuallyBseveralBsectionBsavingBsaleBroutineBrncBripsBresearchBrelievedB	recommendBreceiveBquietBquicklyBpullsBprincessBpositionBpaysBorlandoBofferingBnraBmouthBmondayBmittBmitchBmelaniaBmarsBmadBleeB
leadershipBlawyersBlatinoBkansasBislandBinaugurationBhuckabeeBguardBgapBfraudB
foundationBflyingBfinishBfineBfeatureB	exclusiveBendsBeconomicBdroneBdragB
disgustingBdeBcookBcontroversyBconservativesBconfirmBcomfortableBcloserBcitiesBchannelB	challengeBcausesBburgerBbritneyBbidBbeatBbansBauthorBattemptsBapprovesBapartBangerB	allegedlyBafricanBaccessB2018B200B18BzooBzeroBwelcomeBweedBwasntBveteransBvBunsureBtrollsBtrevorBtrainingBtitleBthrowBtherapyBteaBtankBstudioB	statementBstaffersBspottedBsongsBskillsBsenseBsavedBrowBreplaceBremoveBracismBquitBprovidesBprofileBpriceBplasticBpetBpatientB	passengerBparkingBpanickedBoriginalBopinionBokayBnoahB	newspaperBnewlyBnetworkBneighborhoodBmrBmichiganBmeatBmaherBlowerBlotteryB	literallyBlifetimeBlieBlegendBlegacyBleagueB	lawmakersBkylieBknownBknewBjonBjaredBjacksonBislamicB
inequalityBindiaB
impressionB	impressedBimageBillegalBhumanityB	horrifiedBhomesBholidaysBhivBhistoricBgladBfunnyBfranticallyBfootageBfigureBfeetBfairBfailBexchangeBenjoyBdropsBdrinkingBdoubleBdiscussBdeliversBdakotaBdailyBcubaBcreatingBcoversBcostumeBconstitutionB	companiesBcheeseBchecksBcharityBchangedBcakeBbusyBbornBblamesBbarackBbanksBassholeBarticleBappBamyBalliesBadultBadmitBactivistBactingBableB25B
zuckerbergByouveBwondersBwakeBviewBveteranBvalueBuponBtrulyBtrappedBtoyBtipBtiesB	terrorismBteigenBteachesBsurvivorBsundayBsunB	strangersBstrangerBstormBstewartBsoldierBsitBsisterBshooterBshootBsharkBseemsBroyBrisingBricoBrichardBrepBremovesBremainsBreliefBratherB
protectingBprizeBpreparesBpotBpostsB
populationBplantBpersonalityBpatientsBpassingBorganizationBnovelBmissionB	mcdonaldsBmatchBmagicBlowBlikesBlenaBlakeBkoreanBjoyB
journalistBjokesBjasonBjackBinspiredBinformationBiiBiconicBhorseBhedBhawaiiBgraveBgrahamBgpsBglobesBgatherBfiresBfearsB	exhaustedBembarrassedB	electionsBeasterBdrBdesignBdecideBdecadesBdebutsBdancingBcryingBcriminalBcrewBcreatorBcreativeBconsideringBconfusedBcondemnsBcoloradoBchristBchrissyBcheapBchainBcabinetBbruceBbrothersBbriefBbothBboredBbeyoncéB	availableBattorneyB
appearanceBappearBapologyBallegedBaliveBalertBagreeBafghanBaddBactualB	abandonedB90B8yearoldB60BwinnerBwasteBviolentBviewersBvegasBvanBupsetBupdatesBunawareBultimateBtypeB	travelingBtransportationB
transitionBtortureBtonightBtoiletBteethB
technologyBtearsBstrangeBstickBstartsBsplitBspicerBspeedBsoundsBsnowB	situationBshapeB	seriouslyBsentenceBseekBseatB	searchingBsamesexBrulingBroommateBrollBrevealedBrespondBresignsBrescuedBrelationshipsBrebelsBraidBqualityBpurchaseBpuppyBpullingBpruittBproposalBproofBprogressiveBprogramsBproductsB
productionBproBpracticeBpotterBposterBpositiveBpoliticiansBpoliciesBpieceBpicturesBperryBpatheticBpathBpartnerBparentB
overweightBonesBohBofferBnervousBnbcBnancyBmuhammadBmontanaBmonsterBmomentsBmissedB	minnesotaBmentallyBmedicineBmealBmanafortBloudBlookedBlinesBlettingBlandBkimmelBjailB
impossibleBillinoisBidiotBhungerB	hampshireBgorgeousBghostBgatesB
frustratedBfruitBfreshBfreakBforgetBfillBfavorBfatBfantasyBfallingB
executivesBeveBescapeBeraBepidemicBenjoysBeitherBedgeBdumbBdueBdressedBdramaBdonBdirectlyBdietBdevosBdetailBdestroyBdeserveBdamnBcrossBcrimesBcouldntBcornerBcooperBconservativeB
confidenceB	completesBcomedianB
collectionBclockBcharlesBchargeBcatchBcarterBcarryingBcardsBcapitolBcameraBbuildBbrokeBbroadwayBbringingBbottomBbombingBboldBbibleBbenefitBbecameBbBauntBartistsBarmsBappearsBanswerBandersonB	amendmentBalexBaimsBagentsBafraidBaccountB10000ByogaByemenBwriteBworkoutBwilliamBwhoseBwearsBwBurgeBurbanBukraineBtrailBtrafficBtoxicBtopsBtonyB	tillersonB
threatenedBtextBtestingBtapeB
surprisingBsuchBstrengthBstreetsBstoneBstolenBstaresB	starbucksBstadiumBspiritBspearsBsourcesBsolveBsolutionBsmokingBsizeBshoppingBshootsBshipBshiftBshelterBsexistBsellBsawBrushB	returningBresignB	reportersB	remembersBregretsBrecallBreallifeBrantBracialBrachelBprocessBpressureBpoundsBpileBpicksBpalestinianBpainfulBpageBpackBoutragedBoklahomaBoceanBnursingB	neighborsB
mysteriousBmistakenBmissesBmirandaBmillerBmilkBmealsBmattersBmarineBluckyBloserBlatinosB
lastminuteBlarryBlandsBkevinBkaineBjessicaBjapaneseBinspiresBindianBincreasinglyBincidentBidentityBhuffpollsterBhorribleBhonoredBhighlyBhigherBheroinBhatesB	happinessBhandleBgoodbyeB
generationBfranceBfingerBfeltBfamilysBexpectedBeuBepicBentertainmentBendorsementB
endangeredBeditionBdisorderBdisabledBdirectB
differenceB
determinedBdetailsBdesignerBdeathsBcuteBcruiseBcrackBcountrysBcookingB	consumersBconfederateB	committedBcollegesB	childhoodBcharlottesvilleBcenturyBcasesBcarsonBcannotBburnsBbrandBboringBbikiniBbetsyBbehaviorBbaseB
australianB	assistantBarmBarchaeologistsBancientBamountBallowsBagingBaffordBaffleckBaffairB80B7yearoldB70B5yearoldB4yearoldB2020B19B	worldwideBwolfBweveBwalmartBvotedBvoicesBunlessBukBtwinsBturnedBtroubleBtroopsBtowerBtouchingBtouchBtollBtodaysBthoughtsBtheyllBtestsB	testimonyBtermBtaxesBtasteBtacoB	suspendedBsurviveBsummitBsueBstripBstaysBstatusBstartedBsquareBsoulBsoloBsolarBsmartBslightlyBsightBshedBsethBsendingBsecretlyBseasonsB	screamingBscaliaBsavesBruinedBroseBriverBrexBrespectB
resistanceB
repeatedlyB	remainingBreligionB	regularlyBrecordsBreactionBreachesBrandomBprovideB	professorBpriestBpremiereB	potentialBpledgesBplaysBpiecesBphotographerBphaseBpeterBparklandBpanelBpalestiniansBoutbreakBoptionBopportunityBokB
officiallyBnurseBnsfwBnovemberB	nightmareBmysteryBmirrorBmillennialsBmeyersBmeghanB
meditationBmasturbatingBmarvelBlotsBlooseB	listeningBlaterBlamarBknowingBkasichBjulyBjokeBjohnnyBjewishBjerryBjazzBjanuaryBjBitalyBitalianBisraeliBiraqiBinteriorB	inspiringBinsaneB	influenceBimproveBidB	hypocrisyBhighwayBheartsBharderBgunmanBgratefulB	graduatesBgraceBgovBgolfBglassesBgirlfriendsBgermanBgardenBfuriousBfundsBfullyBfridaysBforgotBfootBflyBflipBfishBfeministBfeelingsBfccBfactsBexitBexistBexerciseBethicsBessayBenvironmentBentirelyB
encouragesBeggsBeggBeatsBdutyBdunhamB
developingBdemographicBdeliverB	deliciousBdavisBdangersBdamageBcyrusBcreatesB	crackdownBcoveredBcoverageBcountyBcouncilB
corruptionB
conspiracyB
connectionBconflictB
conditionsBcoachBclipB	clevelandB
challengesBcellBceilingBcapturesBcapitalBcapableBbuysB
businessesBburningBbroughtBbottleBboostBbomberBblowBblastBbitBbaseballBbarsBbagsBbacksB
attemptingBarrestBaprilBanywayBannoyedBannouncementB
ambassadorBairlineBaidesB	addictionBadamBactorsBabsenceBaboveB400B35BzikaByoutubeBwrittenBwoodsBwinnersBwilsonBwildlifeBwhispersBwesternBwelcomesBwatchesBwatchedBwalksBwaitressBviewsBversionBvaluesBvaluableBvalleyBusaBunarmedBtshirtBtrickBtrendBtreatBtragedyBtracksBtigerBticketB	thursdaysBthomasB
terroristsBteenageBtattooBtallBtalibanBsuspectsBsterlingBstartupBstaringBstanceBspoofBspillBspeakerBsourceBsmallerBshowerBshootersBshoesBshittyBshakeBsexyB	sentencedBseaworldBscoresB	scientistBsaturdayBsamanthaBsalesmanBridingB
revolutionBrevivalBreunionBresponsibleBrequestBremindBremakeBremainBrebelBrayBratesBrapidlyBralliesBqaBpushedBproposedBpreviousBpresentsBprayersBpovertyBportraitBplotBpitchBpipelineBphraseBpetersBpennsylvaniaBpenisBpayingBpatronsBpanicBpairBoptionsBoliverBobjectsBnoticeBnobelBnickB	netanyahuBneilBneighborBneckB	necessaryBnaturalBnativeBmusicalBmortgageBmoodBmississippiBmiracleBminimumB
middleagedBmessBmenuBmemoirBmaskBmaryBmakeupBlosBlongtimeBlocationBlionBlimitBlibertyBlevelsBlessonBlesbianBledBlawmakerBlasBladiesBladenB	knowledgeBkitchenBkickBkeptBjoinsBjerseyBjakeBinternBintendedBinformsBinfantB	increasesBimpactBillnessBignoresBignoreBhusbandsBhuntBhorrorBhonoringBhometownBhittingBhintsBheroesB	happeningBhackersBgiulianiBgilmoreBgeniusBgenerationsBgearBgalaxyBgalaB
friendshipBfrancesBfollowBfitnessBfinaleBfilledBfedBfateBfasterBfactoryBfacingB	expensiveBexpectB	existenceBexcitingBestateBequalBenjoyingBendorseBendingBeffectsBeasierBdvdBdroppedBdrinksBdrawsBdrawingBdojB	documentsBdeservesBdelayBdefendBdanielsBdallasBcurbB	criticismBcrashesBcracksBcordenBcontestBcontactB
constantlyB
consideredBconsiderBcomparesBcompanysBcommunitiesB
commissionBcommencementBcodeBcoastBcleaningBchinasBceosBcausingBcatsBcatchesBcarryBcaptainBcaitlynBbrutalBbritishBbrideBbreakupBbelovedBbelievesBbeefBbeatingB
basketballBbarelyB	baltimoreBballotBbackyardB	awarenessB	australiaBargumentBannoyingBanimalB
alzheimersBaideB
affordableBactressBacquiresBacceptsBacceptBabilityB45B24B23B21B2000BzoneBwroteBworryBwhaleBwetBweakBwastedBwakesBvpB
unexpectedB
unemployedB
understandBuncomfortableBtuesdaysBtreatedB	transformBtoughBtoolsB
timberlakeBthrownBthreateningB	therapistB	terroristBtenBtaughtBtargetsBsurveillanceBsurgeB
supportingB	supporterBsuddenBsuccessfullyB	strugglesBstoppedBstealingBstayingBsquadBspringsteenBsoldBsmilingBsleepingBsitesBsingingBshrimpBshowingBshotsBsexismBsettingBserenaBsenBselfieBseatsB
scramblingBscaryBsatBruinsBrudyBroundBroughB	roommatesBroofBrocksBrobotBrisksBrisesBridBriceBreviewsB	revealingBretiredBrestoreBrestaurantsB	reportingBrepeatBremoteBrememberingBrecentlyBreaderBrapBrandBraisedBquiteB	purchasesB
punishmentBpulledBprogressB	producersBprescriptionBprepareBprepBpraisesBpraiseBpleaBpeteBperiodBpelosiBpainBoregonBorderedBopioidBnypdBnightsBnewbornBnetBnegativeBnatoBmuskBmovedBmouseBmountainBmostlyBminorityBmileyBmigrantsBmiamiBmemoriesBmateBmarylandBmarkleBmarioBmapBmamaBlyingBlordBloneBlobsterBlimitsBlightsBlazyBlawrenceBlawnBlaughBknifeBkfcBkendrickBkenBjordanBjongBjediBjapanBinvolvedBinnerBinmateBindependentBindependenceBimagineBhowardBhoustonBhousesBhomelandB	holocaustBholeBhiringBhideBheroicBheartbreakingBhannityBhamiltonBgreeceBgrandfatherBgorsuchBgopsBgarbageBfrozenBfreakingBfrankenB	franciscoB	forgottenBforgiveBfoodsBflintBflamesBfirefighterBfilmingBfictionBfarmersB	explosionB
experimentBexhibitB
everywhereB	everybodyBeuropeBenvironmentalBenterB
engagementBengagedBemmyBelonBellenBelectricBelBdryBdrivesBdriversBdreamersBdoorsBdonorsBdollarBdivorcedB
disturbingBdistrictBdishesBdiscriminationB	discoversB	difficultBdetroitB	destroyedB
depressingB
definitelyBdefiantBdefeatBdebatesBcyberBcryB
criticizedBcriticalBcouchBcosbyBcornBconsumerBconstructionBcommercialsBcollapseBclosetB
classifiedB	civiliansBchooseBchemicalBchaosBcentralBcbsBcashstrappedBcarlyBcaringBcandyBcameronBburnedBbullyingBbullyBbrooklynB	brilliantBbridgeBbreastBbrazilBbradB
boyfriendsBboatBblowsBblindBblakeBbillsBbillionsBbillionaireBbiggerBbedroomBbasicBballoonBbaldwinBbaconBbacklashBbachelorBaustinBaudioB
attractiveB	attendantBasleepBarrivesBarmedBarizonaBarcticBapprovalBantigayBanthemBangelesBandrewBaliBalcoholB	agreementBadviserBaddingB
acceptanceBacademyBabusedB90sB87B500B32ByoudBwritersB	workplaceBworkedBworeBwoodyBwingsBwingBwindowsBwildfireB
whatsoeverBwhalesBwealthyBwalkerBvirusBvietnamB	venezuelaB	underwearBturkishBtuesdayB	troublingBtroubledBtricksBtraditionalBtoysBtowardsBtouristsBtouristBtieBtheyveBthemeBthankfulBteslaBtensionsBtennisBteasesBtearfulB
suspiciousB	surprisesBsurgeryBsurgeonBsupportsBsumsBstevenB	standardsBstampBstafferBstabbingBspyBspreadBspiritsBspinBspecificallyBspeakersBsparksBsouthernBsoldiersBsitcomBsimpsonBsigningBshutsB	shootingsBshockingBshelfBsharingBshameBshadowBservicesBselenaBseemBseekingBseattleBscoutsBscoreB
scientificBscareBsadlyBrussiansBroverBronBrohingyaBrobinB
ridiculousBretireBresponsibilityBresortBresolutionsBresignationBresidentBregretBregisterBregionBrefusingBreadersBratBraisingBrageBradicalBquotesBqueensBpurposeB
protestingB
prosecutorBprofessionalBprivacyB	prisonersBpricesBposesBpollingBpoetBpodcastBpocketBpmBplayedBplatformBpissedBpinkBpillBpicBphysicalBperspectiveB
permissionBperformBpentagonBpassedBparksBpalinBpaceBpacBownsBoreillyBoftenBobeseB	nostalgicB	nonprofitBnelsonBnBmyselfBmultipleBmocksBmineBmindfulnessB
millennialBmigrantB	microsoftBmetooBmergerBmentionBmemoBmeltBmcdonaldBmattressBmathBmasterBmarksBmapsBlutherBlongtermBlockedBlindseyBlincolnBlegBlebronBlanguageBlaneBlaidBkrisBkitBkingdomBkeysBkentuckyBkennedyBjuneBjumpsBjetBjennersBjayBjailedBiveBiranianBinvitedB	interestsBinnocentBinjuryB
increasingB	increasedBimagesBiconBhousingBhostsB
horrifyingBhopefulBhonestBhobbyB
historiansBhilariouslyB
highlightsBhidingBheadlineBhaventBhatBhabitBgrowthBgroceryBgrillBgriefBgreaterBgrandsonBgrandpaBgrandmasBgrandBgrammyBgoreBgoddamnBgentlyBgenocideBgainsBfundraisingBfluBfloodingBflavorBfiringB	fireworksBfiorinaBfellowBfarewellBfameBfalseBfallonBexperiencesB	executionBexcuseBexceptBeverydayBeventsBeveningBeuropeanBeruptsBenglishBendorsesBencouragingBempireBemmaBemergeBembarrassingBeffortsB	effectiveBeditorB
earthquakeBdrawerBdraftBdonatesBdonatedBdolphinsBdollarsBditchBdistantB	disgustedB	directorsBdinersBdeviceB	detectiveBdetainedBdestructionBdesperatelyBdeputyBdelaysBdeeplyBdeemedBdebutBdealsBdaveBdanBdamonBdacaBcurtainBcuriousBcuomoBcreatorsBcourtsBcountBcostumesBcostsBcorpseBcontractBconsequencesB	confidentB	conditionBcompeteBcomparedBcomfortsBcomfortBclueBclosingB
classmatesBcircleBcheneyBcheerB
charlestonBchampionB	ceasefireBcdcBcapturedBcaptureBcanadaBcalmBbuttonBbuttBbushsBbrieflyBbriefingB	breathingBbreathBbondBboltonBbodiesBboBblogBblocksBbirdsBbillyBbidensBbezosBbenghaziBbeatsBbearsBbathBbanningBbacteriaB
backgroundBbabiesBawfulBautismB	attendingBapproachB	apologizeBanywhereBantiabortionBanswersB	anonymousBangelBanchorBanalysisBallowingBalienBalarmBalanBairplaneBaidsBafricaB	advocatesBaccusesBaccusationsB98B50000B2yearoldB27B22ByoungerBworryingBwonderBwildlyB	wildfiresBwidowBwhitesBwheelsBwerentBwelfareBweighsBwaveBwakeupBwaitsB
vulnerableB	volunteerBvladimirBvisitorsBvisibleBvillageBviewerButahBurineBurgedBupdatedBunknownBunionsBundocumentedBuncoverBuncleBuglyBturnoutBtunnelBtshirtsBtrillionBtreatingBtomorrowBtoddlersBthrowingBtheresaBtheatersBtearBteamsBteachingBtapsBtapedBtalesBswimmingBsweatBsustainableBsusanB	supremacyBsupremacistBsupposedBsuckBsubjectBstuntBstunsBstreepBstormyBstereotypesB
statementsBstandupBstandsBstampsBsprayB	spotlightBspillsBspiceBspanishBspainBsoulsB	somewhereB	solutionsBsocalledBsniperBsnapsBsmokeBsmithsonianBslowBslayingBslainBskipBsinksBsimonBsilverB	signatureBshowedBshopperBshoeBshiftsBshelvesBsharedBshadesBsevenB
settlementBservedBselfdrivingBselfconsciousBscreamBscifiBscholarshipBsavingsB
satisfyingB
sandwichesBsaladB	sacrificeBryansBrumsfeldBrumorsBruinBrubiosBrootsBrogerBrockyBriversBritualBrihannaBretiresBresultBrestrictionsB
resolutionBrequiresBrequireBrequestsBreplacementBreplacedBremovingB	relationsBrejectsBrejectBregulationsBregistryBreeseB	recordingBrebootBrealizedBreadsBreactBratingBrapperBrankingsBquitsBquestBpushingBpushesB
purchasingBpumpkinB	promotionBpromisedB	procedureBprisonerB	primariesBpresentB	powerballBpopulaceB
politicianBplugBpleadsBplantsBpigBpickedBphilipBpetsBpenBpeersBpatrolBpastorBpassageBpacificBoutrageB
organizingB
oppositionBopenlyBobesityBoathBnyBnotreBnotesBnoseBnoneBnomineesB	nightclubBnewestB	nervouslyBnavyBnatureB
nationwideBmythsBmyanmarBmurderedBmugBmosqueBmonumentBmodelsBmlbBminorBmidtermsBmidnightBmerylBmeaslesBmarryBmarchingBmarathonBmaralagoB
managementB
mainstreamBmailBmachinesBlovingBloversBlonelyBlogoBlocksBloansBlistingBlipB	linmanuelB	lifestyleBlibraryB	legendaryBleakedBlaysBlatinBlaserBlabBkristenBkourtneyBkochBkissBkingsBkhloeBkardashiansBkBjoshBjointBjoanBjackpotBivoryBislandsBislamBirmaB
invitationB
investmentBinvestigateB	introduceB
interestedBinstantBinjuriesB
initiativeBinfrastructureBindictedB
incrediblyBincomeB
impressiveB
importanceBhwBhungBhugBhorsesB
homosexualBholyBhiresBhiddenBheavyBhealingBhauntedBhatchBhanksBhangingB	hairstyleBhabitsBguessB	grotesqueBgraphicBgrantBgrandparentsBgrammysBgraduateBgrabBgoalBgmBglowingBglobeBglimpseBgingrichBgermanyBgazaBgaysBgaryBgarageBgalleryBgainBfuelBfreshmanBfrankBfounderBfosterBforgetsBforestBfolksBfloatingBfirefightersBfinishesBfilesBfightsBfeudBfestBfeminismBfeedBfebruaryBfearedBfaultBfarrightB
extremistsBextremeBextinctBexposesB	exploringBexpertB	evolutionBevilBestablishmentB	electoralBelectedB	elaborateBeffectB	editorialBedBdoubtBdolphinB	discoveryBdiscloseBdisabilitiesB	determineBdesignedB	describesBdeportationBdecidedBdeceasedBdanielBdangerBdameBcustodyB	curiosityBcureBcupsBcrossingBcrawlingBcowBcoryBcookieB
conversionBcontainsBconsumptionBconcernsBconceptBcomplexBcomplainBcomicsB	collapsesBcolinBcoatBclosesBclooneyB	clarifiesBckBcitizenshipBcitizenB
cigarettesBchristopherBchelseaBchefBchaseBcharterBchartBchairsBchairmanBcertificateBcelebratingBcausedBcasuallyBcashierB	carefullyBcanceledBcampingB	cambridgeBcaliforniasBbusinessmanBburstsBburstingBburnBburiedBbuiltBbucketBbrianB	breitbartBbreadBbradyBbradleyBbracesBboughtBbookerBboneBbiteBbitchB	billboardBbiasBbeyonceBbasedBbarrBbarbaraBbananaBbalconyBbadassBbackupB	awkwardlyBawakensB	attackingBatlantaBastronomersBassureBashleyBarkansasBarabiaBapproveBappealsBanxiousB
antimuslimBantilgbtBannBanistonBanalystBaltonBalternativeBalqaedaBallyBallowedBallianceBaliensBalaskaBagricultureBagesBagencyB	afternoonBaffectsBaffectedBaffectBadultsBadeleBaddedBactsBaccusersBaccountsBaccentB80sB6yearoldB40000B30000B250B2012B2009BwritesBwrappedBwowBwillingBwifesBwheatBweeklyB
wednesdaysB	wednesdayBwealthBwavingBwarnerBwarmB	walgreensBvisualBvisiblyBvirtualBvirginB	victoriasBunveilBunusualB	unpopularBunicornBtwistBtwiceBturtleBtsaBtruthsBtrekBtreatsB
transformsB
tragicallyBtragicB	traditionBtradingBtracedB
tournamentBtiedBtideBthrewBthreatenBthankBthaiBtermsB	telescopeB	teenagersBteaserBtauntsB	targetingBtargetedBsystemsBswimsuitBsweatingBsweaterB	suspectedBsurfaceBsupplyB	superheroB
sunglassesBsuggestBsuesBstunnedBstuffedBstoresBsteelBstealsBstandoffB	spielbergB	sometimesB
solidarityBsolemnlyBsoleBsoftBsodaBsnakeBsnacksBsnackBsmileBsmellBslideBsleptBslaveryBsketchBsixthBsitsBsistersBsilentBsidewalkBsiblingsBshoutsBshoulderBshortageBshockBshipsBsheriffBsheerBshakenBsettleBsequelBseparateBseniorsBseeksBsearsB	screeningBscoutBscaredBscamsB	sanctuaryBsamsungBsamBsakeBruralBrunwayBruiningBrowlingBrollerBrobertsBrobBrippingBriotBrhetoricBreturnedB	resourcesBresistB
reputationBrepublicBreplacesBrenewedBremarkB	releasingBreidBrehabBregularBrefuseBreformsBreflectsBrefersB
reelectionBrecoveryB
recipientsBrecapBreachedBratingsBrBquizBquarterBpureB
publishingB	protectedBpromBproducerBpriebusBpreviewB
pretendingBpreserveBpresenceB	preparingBpreferBpreciousBprayerBpoursBpourBpostelectionBpodiumBplussizeBplusBpleasedBplanesBplainBpittBpilotB
pilgrimageBphonesBpearlBpbsBpatrickBpatchBpartsBparodyB
parliamentB	paramountBparadiseBpalsBpakistanB	paintingsBpaintB	overnightBovalBoutfitsBoutfitBorrinBoriginBorangeBoffendedBoceansB	obviouslyB	obsessionBobsessedBobjectBobituaryBnunesBnonsenseBnominationsBnikkiB	nightlifeBnicknameBnewtB
newspapersBnetflixsBneitherBnateBnastyBnarrowlyBnabsBnaacpBmurrayBmurphyBmtvBmrsBmournsB
motorcycleBmorrisBmoronBmoralB	monologueBmonitorBmixedBmixB
mistakenlyBmistakeBmissouriBmiseryBmiloBmicBmethodBmetalBmessagesBmensBmeaningBmayoBmaterialBmassachusettsBmartialBmarketsBmariahB	mandatoryBmanagingBmakeoverBmaineBmacysBlyricsBlynchBlungBlukeBloyalBlovelyB	louisianaBlosersBlockerBliverBliquorBlindsayBliftingBliftBlifelongBlicenseBliberalsBliarsBleslieBlearnsB	lastditchBlargerBlaptopBlandingBkneeBkatyBkatieBkaraokeB
kaepernickBjumpB
journalismBjongunBjonasBjoinedBjillBjewsBjewelryB	jerusalemBjeopardyBissaBislamophobiaBirishBiransBinvolvesBinvitesBinvestigatorBinvestigatingBinterruptedBinterestingBinspireBinquiryB
innovativeB	industrysBindiansBindianaBincludesB	inauguralBillusionBiiiBidiotsBhurryBhumiliatingBhughB
huffingtonB	householdBhotelsBholmesBhiredBhireBhiphopBhintBheyB	hemsworthBheartwarmingBhearsBheadedBhazingBhatersBhastilyBharshBhangBhammerBhamBhaltBhacksBguitarB	guardiansBgrowsBgrownBgropingBgrievingBgreyB	greenspanBgreekB
graduationBgomezBgoldmanBgodsBgoalsBgloriousBginaBgentrificationBgeneticBgateBgallupBgagaBfriendlyB
forgettingBfloodsBflightsBfishingB	firsteverBfingersBfilthyBfilmedBfillsB
filibusterBfenceBfeedingBfedsBfeaturedBfatallyBfatalBfarmerB	extremelyB
extinctionBextendsBexpressBexperiencingBexpectsB	expectingBexpectationsB	expandingB	excitedlyB	everyonesBevangelicalBerrorBentryBentiretyB	encounterB
empoweringBeightBeatenBearthsBearsBeaglesBdustinBdukeBdrumBdroppingBdrillingBdressesBdrakeBdoorstepB	donationsBdonationBdocumentBdnaBdivideBdisplaysBdisplayBdiseasesB	discussesBdiscoveringBdisappointingB	disappearB	directionB
difficultyBdieselBdiegoBdialogueBdevelopsBdevelopmentBdevelopBdesireBdenyBdentalBdennysBdeniedBdemsBdemocratBdeltaBdeliveryBdeletedBdegreesBdefineBdeficitBdecemberBdeadlineBdawnBdaringBdareBdaddyBcycleBcutoutBcurseBculturalBcrushingBcrudeBcriticB
craigslistBcoveringBcousinBcounterBcosmopolitanBcorrespondentsBcoreBcoolerB	convincedBconversationsBcontemplatingBcontainBconstantB	considersBconsecutiveBcondemnB	concludesBconanB
complaintsBcompetitionBcomicBcomebackB
colleaguesBcocaineBcleverBcitesBchoosesBchoicesB	chocolateBchickensBcheeringBcheaperB	charlotteBchapterBchannelsB
chancellorBchamberBcaucusBcatchingBcasualBcasinoBcarrieBcarolBcaresB	cardboardB	captivityBcapBcancelsBcanadianBcampsB	campaignsBcaféBburdenBbulletBbryanBbritainBbrightBbrexitBbrettBbreatheBbreakthroughBboycottBbordersBboomersBbooBbombingsBblownBblowingB	bloombergBblasioBbitterBbikeBbieberBbetrayalBbeneathBbeingsBbattlingBbattlesBbatonBbatmanBbastardB	bartenderBbarrelBbannonsBbannerBbandsBbalanceBavoidsBaugustB
attractionBattractBassociationBassholesBassangeBassadBasiaBarianaB	argentinaBareasBappsBappealB	antitrumpBanthonyBamazonsBalltimeBallenBalecBadsBactivismBachieveBaccuseBaccurateBabroadB89B5thB3yearoldB300B21stB2008B	11yearoldB100000B–B	zimmermanByosemiteByorkersByorkerByemeniByelpByellowByaBxboxBxBwoundedBworshipBworriesBwoodenBwiseBwirelessBwindBwidowerB
wheelchairBwendyB	wellbeingBweightsBweddingsBwebsitesBwastingBwashedBwashB	warehouseBwardBwalterBwallsBwalletBvowBvisaB
violationsBvinBvillainBvideosBvetsBvenusBveganBvaginaBvacationingButterBusherBunnervedBunityB
uninspiredB	unhealthyBunderstandingBundergroundBturmoilBtumorB	trumpcareBtrophyBtrendsBtreasuryBtravelerBtrapBtrainerBtownsBtowelsBtoutsBtouchedBtorontoBtornadoBtornBtoolBtommyBtoddBtissueBtinaBthroatB	thrillingBthrillerBthrillBthirdgraderBthinBtextbookBtestedBtensionB	tennesseeB	telephoneB	techniqueBtaxiBtakeiBtacklingBtackleBtBsyndromeBsymbolBsxswBswissBswingBswiftsBsweepsBsweepingBswearsBswarmB
suspensionBsuspendsB	survivingBsurvivalBsurveyB
surroundedBsupremacistsBsuppliesB	superstarBsupermanBsuffersBsufferBsuedB
subcultureBstylishBstylesBstudiesBstruckBstringBstreamBstrayBstomachBstoleBstealBstarvingBstarkBstandardBstallBstakeBspouseBspotsBspotonB	spiritualBspinoffBspikeB	spidermanBspiderB
speechlessB	southwestBsoupBsonyBsolvedBsoberBsoapBsmokerB
smartphoneBslotBslipsBskyBsingsBsingBsimultaneouslyBsimpsonsB	silvermanBsiliconBsilentlyBsikhBsignedBsignalBshoutBshorterBshitsBshamedBshadeB	sexualityBsexiestBsessionBservingBservesBserveB	septemberB	sentencesBselvesBselectsB	seeminglyBscriptBscrewingBscreamsBsaudisBsauceB	satelliteBsantorumB	sanctionsBsaferBsafelyBsaddamBsachsBrussiasBrushesBrollingBrocketBrobberyBripBrioBringsBridesBriderBretireesBrescuersBrepealedBreopensBrenamedBremovedB
rememberedB	remainderBreluctantlyBreinceBrefrigeratorBreelBreducedB
recoveringB	recognizeBrecipeB	receivingBreceivedBrecalledBrebuildBratsBrangerBramadanBrainBraidsBrahmBraeBracesBrabbitBpulitzerB	publicistBpsychologicalBpsychicBprotectionsB
protectionBproperlyBproperBpromoteBproduceBprobesBprintB	princetonBprincesBpresentationBpredatorBprayingBprBpowersBpostalBpossiblyBposeB	portraitsBpopesB	pollutionBpolishBpoleBpolarBpokemonBpointingBpoemBplentyBpleasureBplaystationBplaylistBplateBplacedBpixarBpinBpillsBpieBpickupBphillyBphiladelphiaBphelpsBpeytonB
personallyBperformsBpepBpensBpeeBpaulaBpatricksBpatBpartiesBpardonsBpardonBpandaBpagesBpageantBpackingBpackedBpB
overworkedBoverwhelmedBoverturnB
overlookedBovercomeBoutageB	otherwiseBosamaBorleansBorganicBordinaryBoperatorBopenedBolsenBoldfashionedBoldestBnutsBnukesBnprBnowhereBnoticingBnorthernB	nominatedBnobodysBnevadaB
neutralityBnestBneighborhoodsBncaaBnaziB	narrativeBnabiscoBmythBmtaBmphBmountBmotoristBmormonBmorganBmonthlyBmonsantoBmonopolyBmondaysBmolestedBmolestationBmockedBmockBmitB
misleadingB	militantsBmidtermBmemeBmedicaidBmeantBmatthewBmatBmasterpieceBmarthaBmarkedBmanningBloyaltyBloverBloudlyB	lookalikeBlongdistanceBlogBlocatedBloanBloadBlivedBlisaBlimitingBlikedBliftsBlibyaBliberalBlemonBlegsBlegislatureBlegalizeBlegalizationBleakBlayingBlaurenBlaughterBlastingBlashesB	landmarksBlandmarkBlameBlacksBlabelBknocksBknightBkissingBkicksBkickedB	kellyanneBkabulBjustifyBjudgesBjosephBjoiningBjoelBjkBjjBjfkBitemBisraelsBirsBironB	invisibleB	investorsB
interviewsBinterrogationB
internmentBinternalB	integrityBintactBinsufferableB	instituteBinspirationBinsiderB
innovationBinfoB
influencedB
individualBindiasBincompetentB	includingBinchesBinadvertentlyB	improvingBimprovedBimpoverishedBimposeBimpeachmentBimmunityBignoringBignoredB	hydraulicBhusseinBhurtingBhumorBhummusBhpvBhostageBhorrorsBhorrificBhopefulsBhomosexualityBholderBhockeyBhillarysBhighwaysB	highspeedB	highlightBhighestBhidesBhicksBhenryB
helicopterBheavilyB	healthierB
headphonesBheadingBhatredBhatefulBhashtagB	harrowingBharmBhappilyBhandfulBhamillBhamasBhalfwayBhaleyBhackedBhackBgwynethBgumBguinnessBguidanceBguessesBgruesomeBgrossBgropedBgreysB	gratitudeBgrantedBgrandmothersBgrandeBgraffitiBgownBgovernmentsBglennBgeneBgarlandBgapsBgangBfurtherB
furloughedBfucksBfriesBfreezingBfreezerBfreedBforeheadBforcingBfollowsBfocusedBflynnBflowerBflatBflashBflagsBfkingBfinanciallyBfinancesBfiftyBfewerBfetusBfemaB	feinsteinBfactBextendedBexposureBexploresBexploreBexplanationB	explainedBexpandsB
executionsBexecutesBexBevaB	essentialBespnB
especiallyBequallyBentrepreneurshipBentitledBenforcementBendlessBemergingBemergesBembassyB	eliminateBelevatorB	elephantsBelephantBegyptianBegyptBedwardsBeditorsBeditedBeddieBeclipseBearliestBeBdutiesBdumpBdudeBducksBduckB
driverlessBdreamingBdrawBdragsBdraggingBdougBdonutBdonateBdoleBdjBdividedBdiverseB
disappearsBdirectedBdiningB	diagnosisBdhsBdevastatingB	detentionB	designersBdeploysBdennisBdelayedBdeeperB	decisionsBdecentBdecadeBdealingBdannyBdangerouslyBdancersBdamagingBdairyBdBczarBcynthiaBcyclistBcvsBcurtBcurryBcubsBcrushB
criticizesB	criticizeBcriesBcowboysBcountingB	counselorBcounselBcorrectBcorporationsBcorporationBconvinceB	convictedBcontrollingB
continuousB	containerBconservationBcongresswomanB	confusingB	conflictsBconfirmationBcondomBconcreteB
concessionBcommitBcommentBcombatBcolumnBcoleBcoffinBcoasterBcoalBclothingBclosestBclosedBclinicBclerkBclearsBcleansBclarkBclaimingBcitingB	cigaretteBchipotleBchillingBchileanBchickB	chewbaccaBchessBcheckedBcharlieBcertainBcerealBcensusBcelebrationBcdBcategoryBcastroBcastingBcarriesBcarbonBcannesBcancelBcamBcableBbyeBbuzzBbureauBbullshitBbulletsBbullBbuildsBbuffaloBbuddyBbubbleBbrooksBbreachBboxesBboxerBboundBbotherBbombsB	boardroomBboardingBbluesBblockingBbleedingBblastedBbetB
bernardinoBberlinBbenchBbeholdBbeesBbeatenBbeansBbayBbasharBbarrierBbareBbarberBbananasBballsBbackpackBbackedBbacheloretteBawardedBautopsyB	authorityB	attendeesBattackedBattBathletesBateB	astronautBassuredB
associatedBassaultsB
assaultingBarriveBarrivalB	argumentsBarabBapprovedBappointsBapplesBantoninBantisemitismB	antilgbtqBantiimmigrantBantBannuallyBanneBangelsBandyBanatomyB	analyticaB	ambitiousBamberBaltarBallegingBalikeB	algorithmBaisleBaiBahmadinejadBagreedB
aggressiveBagendaBadvertisersB	advantageBadoptsBadministrationsB
addressingBactiveB	acceptingBacceptedB
acceptableBabusiveBabusesBabramsBabandonBaaronB97B75B69B62B	45yearoldB43B	40yearoldB31B	25yearoldB20sB1997B15000B	10yearoldBzinkeByorksByearbookByardBwwiiB	wrestlingBwreckB	worthlessBwornBworkingclassBwoodB	wonderfulBwoesBwkBwizardBwivesBwitnessBwitherspoonBwitchBwireBwipedB
widespreadBwhiteyBwhatsappBwestsBweirdoBweighingBweighBweaponB
watermelonBwardrobeBwannaBwalkoutBwakingBwaiterBwagesBvortexBvintageBvilsackB
victoriousBvetoBvesselBverizonBverdictBvehicleBvealBvastBvaccinesBvaccineBvaBusdaBusbackedBurgingBupgradeBunprecedentedBunlikelyBunleashB	universalBuniteBuniqueBunionizeB	uninsuredBuniformBunhingedBunfitBunearthBundoB
underwaterBundergoB	undecidedBunclesBunclearBuncertaintyBunanimouslyBtwistedBtwinBtuneBtuitionBtsarnaevBtroopBtripsBtreasureBtrayB	travelersBtransparencyBtransmissionBtransitBtransformingBtraceBtowelBtonightsBtonBtoasterBtigersBticketsBthursdayBthoughB
thirdpartyBtheronBthatllBtestifyBtenseBtemporarilyBtempleB	televisedBteenagerBteddyB	tearyeyedB	tearfullyBtariffsBtankerBtakeoverBtabletsBsyriasBsyriansBsyncBswornBswitchesBswitchBswimmerBswedishBswallowBsuvBsustainBsurferBsumBsuingBsugarB	sufferingBsudanBsubscriptionBsubB	styrofoamBstudiosBstronglyB	strongestBstripsBstrippedBstressedB
strategiesBstorageBstoppingBstigmaBstefaniBsteamBstatuesBstaredBstampedeBstabbedBsquirrelBspyingBspreadsB	spreadingBsportingBspoofsB	spokesmanBspoilersBspicyBspellingBspeechesBspectacularBspecificBsparkBspaceyBsophieBsoonerBsonicBsomaliaBsolitaryBsolangeBsobbingBsnyderBsnowdenBsneaksBsmoothBslopeBsliceBsleepsBslaveBslapBskeletonBsimplyBsillyBsiegeBsidesBshyBshuttleBshredsBshowdownBshovelBshoutingBshitholeBshipmentBshepardBshaveBsharplyBsharksBshapingBseymourBsevereBsesameBseptB	separatedB	sensitiveBselfdefenseB	selectionBseizeBsecureBseatingBseatedBscrutinyBscreensBscottishBscotlandBschwarzeneggerBschoolerBscaliasBsavageBsausageB	saturdaysBsatanBsandyBsandraBsaluteBsalmonBsalaryB	sainthoodBsailorBsabotageBruthBrussellBrupertBrupaulsBruledBrubyBroyalsBrougeBrothBrotatingBrossBromanticBrogueBrobotsBroastsBroadsBrivalsBrivalBrippedBrhinoBrewardBrevolutionizeBreverseBreunitedBreuniteBretreatB	retailersBrestrictingBrespectsB
resilienceBrescuesBrequiredBrepresentativesBrepresentativeBrepresentationB	representBreportedBrepeatedBrentedBremovalBremindedBremarksB
remarkableB	relativesB
relativelyB	rejectingBrejectedB
regulationBregistrationB
registeredBrefusedBreflectionsB
reflectionBreferredBreefB
redemptionBredefineB	recyclingB	recruiterBrecruitBrecountsBrecountBreconciliationBrecognizingB
recognizesBrecklessB	realisticBreaganBreactsBrapedBrangeBrandomlyBranB
rainforestBrailroadBrackBquestioningBqaedaBpunchBpulseBpugBprovedB	protesterB
prostituteBproposesB	proposalsBpromotesB	prominentBprogressivesBprofitB
professorsB	proclaimsB
principlesBpretendB	preschoolBpreparationBpremierB	prejudiceBpredictsBpraysB
practicingB	practicesBpotteryB
postpartumBpostingB
posthumousBporkBporchBpopulismBpoorlyBponytailBpoisonedBpoignantBpoetryBplayoffBplannerBplagueBpivenBpitbullBpitBpissBpipeBpigeonBpianoBphotographsBpharmaceuticalBpfizerBpetitionBpetaBpermanentlyB
performingB	performerBpeppersBpepperBpennBpencesBpenaltyBpeanutsBpeakBpaymentsBpausesB	patientlyBpatienceBpatentBpasswordBpartysBparticipateBpapaBpantherBpanamaBpamelaBpaltrowBpalsyBpalaceBpalB	pakistaniBpairingBpackageBpabstBoverwhelminglyBoverwhelmingBoverheadBovercrowdedBoutreachBoutletsBoutdatedB	ourselvesBottoBoralB
optimisticBopposingBopposeB	opponentsBopponentB	operationB	operatingBoperaBopedB	ominouslyBomalleyBoffshoreBofficesBofferedBoffenseBoddBobviousBobtainedBobsessivecompulsiveBobrienBnyeBnursesBnurseryBnunBnumerousB	numberoneBnsaBnrasBnovelsB	nordstromBnominateBnobleBnixonBninjaBnhlBnewsroomBnewmanBnetsBnerveBnerdsB	neglectedBnearbyBnazisB	naturallyBnathanBnapBnailsBmutantBmuscleBmurdochBmurdersB	murderingBmournersB	mountainsBmotivationalBmotionB
motherhoodB	mortifiedBmonstersBmonicaBmommyBmogulB	moderatorBmockingBmobileBmlkBmishapB	miserableBmintB
minoritiesBminersBmindsBmillsBmillionaireBmilitiaBmidlifeB	microwaveBmetaphorB	metallicaBmerrickBmerkelBmergeBmentorB	memorableBmelissaBmegynBmeganBmedicareBmedalBmeasuresBmeasureBmeaninglessB
meaningfulBmcconaugheyBmccainsBmaxBmastersBmassacreBmashupBmarvelsBmartianB	marketersBmarinesBmanufacturingBmansionBmanhoodBmanagedBmaliaBmalesBmalcolmBmakerBmainBmadonnaBmadnessBmacBluckBlucasBloweredBlovinglyBlovatoBlouderBlorettaBloomingBlockB	locationsBlocalsB	lobbyistsBlobbyistBliteraryBlinksBlingerieBlilBlibyanBlibertarianBlettersBlethalB
legitimateBlegendsB	legalizesBleaksBleaBleBlayoffsBlayBlauraBlaundryBlaunchedBlauerB	latenightBlatelyBlaquanBlandedBlanceBlakersBlaborersBkoreasBkongBkobeBknockingBknicksBkneesBkittensBkitsBkirstenBkindsBkindnessBkindergartenBkillingsBkidneyB	kidnappedBkickingBkeystoneBkenyaBkennyBkeithBkarenBkamalaBjusticesBjunkieBjunkBjungleBjumpingBjulianBjuicyBjuiceBjudicialBjoseBjongunsBjonathanBjokingBjohnsBjerkBjeremyBjennyBjennaBjenkinsB	jeffersonBjeansBjeanBjealousBjazeeraBjayzBjanitorBjanetBjaneBjanBjacketBitllBislamistBinvasionBintroducingB
introducedBinterferenceBintenseBintellectualB
integratedBinsurersB
instructorBinsidersB	innercityBinjuresBinfuriatingBinformedB	informantB
inevitableB
industrialB	inclusionBincludedBincludeB	incidentsBincarcerationBimitatesB	imaginingBimaginesBimaginationBillustrationsBikeaBihopBidentifyBhypotheticalBhutBhuntersBhunterBhungoverBhottestBhotshotBhotlineBhostingBhostileBhorriblyBhookBhoodBhongB
homophobicBhomicideBhomelessnessB
hollywoodsBholesBhoganBhoffmanBhispanicBhipsterBhippieBhiltonB
highschoolB	hernandezBheritageBhelplessBhelpfulBheightBheelsBhedgeB	heartfeltBheartbrokenB	headlinesBharvardBharrisonBharrisBhappiestBhappierBhanukkahBhannahB	handmaidsBhandingBhaitiBhaggardBhabitatBgwenBguidesBgubernatorialBguardsBgroundsBgroundbreakingBgrimesBgrimBgreaseBgrayBgrassleyB	governorsBgordonBgoodsBgonnaBgoldfishBgloryBglacierB
gillibrandBgifBgiantsBgiamattiB
geographicBgenuineBgenitalBgenericBgelB	gatheringBgarnersBgarnerBgamerBgaffeB	gabrielleBfundedBfuelsBfuckerBfuckedBfridgeBfreezeBfredBfreakedB
fraternityBfranklinBfossilBfortuneBformingBformedBformallyBformalBfoolBfontBfloodBfliesBflakeBfisherB	firsttimeBfirmBfinishedBfinanceBfinalsBfilterBfileBfifaBfeyBfetishBferreraBferrellB	feministsB	featuringBfearlessB	fantasizeBfamiliarBfairyBfailuresBfactorsBfaaB
exxonmobilBexwifeB	extensiveBextendB
expressingB
explicitlyB
explainingBexpiresB	expansionBexitsBexistsB
exercisingBexecutedBexecsB
excitementBexampleBexamBexactBevacuateBethicalB
essentialsBescapesB
escalatingBernestBequityBequifaxBenormousBengineBendedBempathyBemotionsBemojiBemmysBembracesBembraceBemanuelB
elementaryBeighthBeerieBeditorinchiefB	ecosystemB
economistsBechoBebayBeaseBearnBearlierBearBdustBdupedBdumpsBdumpedBdrummerBdrownedBdroveBdrivenBdrewBdressingBdreamedBdramaticBdrakesBdraggedBdoublesBdormBdoritosB	dominatedBdollsBdocumentariesBdiveB	disordersB
disneylandBdismemberedBdisickB
discussionBdiscontinuesB
directionsB
diplomaticBdilemmaBdifferencesBdiaryBdianaBdiagramBdiabetesBdevinBdevilBdetectorBdestroysB
destroyingBdessertBdesktopBdeservedBdepotB
dependenceBdepartmentsBdenyingBdemiB	demandingB	delightedB
definitiveB
definitionBdefaultBdeerB	decreasedBdeclineBdebbieBdeanBdaylightBdatesBcuttingBcurrencyBcunningBcubeBcubanBcrystalBcrushesBcrushedBcrunchBcrucialBcrownBcropB
criticallyB	criminalsBcriedBcreekBcreatureBcrashingBcrapBcrackedBcozyBcovetedBcoverupBcousinsBcourageBcountsBcorpsBcordsBcopycatBcopyBcopiesB
continuingBcontestantsB
containingB	consumingBconsumedB
constituteBconstituentsBconsiderationBconsequenceBconnecticutB	connectedBconnectBconfrontationBconfessionsBconcussionsBconcernBcomplimentsBcomplicatedB	completedB	complainsBcompetitiveBcommuteBcommunicationsB	commanderBcomicconB	comediansBcombinationBcolumbusBcolorsB
collectiveB
collectingBcollectB	cofounderBcoastingBcnnsBcloudBclimbsBclimbBclientB	clearanceBcleanerB	classroomB	classmateBclashesBclashBcivilizationBcirclingBcinnamonB	christineB
christiansBchipBchicBchewingBchestB	checklistBchartsBcharlizeBchaplainBchantingBchancesBcerebralBcentBcemeteryBcelebsBcelebBcdsBcaveB
cautiouslyB	catholicsBcastleBcartoonBcarrierB	carolinasBcarlBcargoBcareyBcarefulBcarcassBcantorBcansBcandlesBcanalBcamerasBcaloriesBcallerBcabinB	buttigiegBburritoBburglarBbulgerBbuffetBbucksB
buckinghamBbrowserBbrothBbrosBbroncosBbraggingBbpBboxingBbowBbouncerBbouncedBbottlesBbotchedBboomerB	bookstoreBbondingBbobbyBbloomBbloodyBbloggerBblizzardBblazeBblamingBblacksBbitingBbitesB
bipartisanBbiopicB
biologistsBbioBbillionairesBbileBbigotedBbiblicalBbewareBbestdressedBbesidesBberryBbenedictBbeijingBbehalfBbegsBbeggingBbeganBbedtimeBbeckhamBbatBbassBbashBbarryBbarriersBbaronBbarnesBbarbecueBbankruptBbangsBbangB	ballisticBbaleBbaffledBbadlyB
backstreetBbackingBbabysBawakeBawaitingBavoidingBavaBauthorsBauroraB	audiencesB
attractingBattitudeB
attendanceBattachedBassumedBassumeBassassinationBasideBasiansBashamedBartsBarrivingBarrestsBarrangementBarpaioBariannaBarguesBarenaB	architectBappointmentB
apartmentsBaolBantidrugBantidepressantBantibioticsBansweredBannaBangelaBanecdoteB	ambitionsBamalBalumniB	alternateB	allfemaleB	allergiesBallegesBalitoB	alexanderB	alcoholicB
airstrikesBaintBaimB	aftermathBaffairsBaerobicsBadvisorBadvisersBadviseBadvertisingBadorablyB	adjustingBactionsBactedBacluBaccuserBaccountableBaccommodateB92B900B8thB85B83B58B5000B42B38B37B33B3000B28B26B	22yearoldB20minuteB2019B2013B20000B1998B	18yearoldB150B130000B	12yearoldB120B10thB1000B―BzuckerbergsB
zoologistsBzoningBzonesBzenBzByoursByiannopoulosByellingByaleByahooByachtBxiBxfilesBwreckingBwowsBwouldbeB
worthwhileBworkdayBwoodwardBwolvesBwolfsB
witnessingB	witnessesBwithholdingBwithholdBwishingBwipeBwildestB	wikipediaB	wikileaksBwiigBwideBwhoaBwhitneyB	whitenessBwhistleblowerBwhiskeyBwhippedBwheresBwheneverBwerewolfBwellsBweirdedBweinerBwedB	wealthierB
weakwilledBwayneBwaxBwavesBwatsonBwatersB	watergateBwatcherBwatchdogBwashingBwaryBwarrensBwarmingBwarmbierBwardenBwanderBwalkersBwalkedBwaistBwahlbergBwaferBwadeBvrBvomitingBvomitB
volunteersB
volkswagenBvocalBvmasBvitaminBvitalBvisitorB
visibilityB	virginityBvipBviolateBvincentBvinceBvikingsBvictoriaBviciousBviagraBviaBvetoesBvestBversusBversionsBvergeBventureBveniceBvendorBvelvetB
vegetarianB
vegetablesBvanishedB	valentineBvainBvagueBvacuumB	vaccinateB	vacationsBushersBurinalBupsideBupsBuprightBunusedBunthinkableBunsuspectingBunsolicitedB
unsettlingBunsafeBunrestB
unprovokedBunpaidB	unlimitedBuniversitiesBunitsBunimpressedBunhappyBunfortunatelyBunfairlyBunexplainedBunemploymentBunderstandsB	undermineB	undergoesB
undercoverBuncoversBunconsciousBunafraidB	ukrainianBufosBtysonBtypicalBtypesBtylerBtwowayBtweetersBtweetedBtvsBturkeysBtuningBtunaBtucksBtuckerBtubeBtrustedBtrunkBtrudeauBtropicalBtrollBtripleBtriggerBtreesB	treadmillBtraumaB	transportB
transplantB	translateBtransformationBtrainsBtradedBtractorBtracesBtppBtoursBtourismBtossesBtossedBtossBtorturedBtorchesBtopplesBtoppingsBtopicB
toothbrushBtongueBtoneBtombBtokyoBtodoBtobaccoBtoastBtitansBtitanicBtireBtinderB	timelapseBtightensBthumbBthompsonBthirstB
therapistsBtheorizeBtheftBtheatreBtextsBtextingB	testamentBteslasBterryBterrierBterriblyBterriBtendingBtenderBtemperaturesBtemperatureBtellerB
technicianBtearingB	taxpayersBtastingBtaskBtapperBtantrumBtanksBtandemBtanBtamponsBtamponBtampaBtamirBtalentBtagBtabsB	synagogueBsymbolicBsweepB	sweatshopB
sweatshirtBswearingBswayedBswastikaBswabBsuspendBsurveysB	surrogateBsurprisinglyBsuriBsurfBsurelyBsupplementsB
supervisorBsupermarketBsunsetBsunnyBsuckedBsuburbanBsubtleBsubmissionsB	submarineBstumblesBstrongerBstripperBstrikingB	streamingBstrawBstrainedB	storylineBstormsBstoredBstoodBstonedBstockingB	stockholmBstirsBstimulusBsticksBstevensBsteppingB	stephanieBsteinBsteamyBsteakBstayedBstationsBstarterBstarringBstareBstanfordBstancesBstanBstainB
staggeringBstagesBstackedBsquanderingBsprintsBsportBspookyBspookedBspontaneouslyBsponsorsBsponsorBspoiledBspiteBspillingBspicesBspicersBspermBspencerBspellsBspeculatingBspectrumBsparkingBspareBspamBspacesB
spacecraftBsoulmateBsoullessBsoulfulBsororityBsoreBsolidBsolelyBsoilBsoftwareBsocksBsoarBsnowmobilesBsnowingBsneakyBsnarkyBsnapBsmugBsmoothlyBsmoothieBsmithsBsmilesBsmearBsmashingBsmashesBslursBslumpBslipperyBslightBslaysBslavesBslateBslammedBslamBskullBskewedB	skepticalBskaterBsizesBsixpackB
situationsBsirBsinkingBsinglesBsimplerBsimmonsBsilversBsignalsBsighBsierraBshredBshownBshopsBshoppersBshootoutB
shockinglyBshittingBshirtsB	shirtlessBshellsBsheetBshattersBshampooBshamBshakingBshadyBshadowsBshackBsewageBseveredBsettlesBserverBsequenceB
sentencingBsensoryB	senselessB	sensationBsenatesBsellsBselfiesB	selfdoubtBselfdiscoveryBseedsBseedB	secretiveBsecBscrewBscrappedBscooterBscholarsBscheduleBscentBscenicBscanningBscandalsBscanBscamB	satisfiedB	satiricalBsassyBsangBsandBsaltBsaladsBsaintBsailorsBsadnessB
sacramentoBsackBrushmoreBrushingBrumoredBrudeBrrBroveBrouseyBrottingBrosieBroseanneBroomsBrondaBronaldBromneysBromeBrolledBrolesBroeBrodBroboticBrobbieBroadsideBroadmapBritualsBriskyBriotingBriggedBridiculouslyBricosBrickyBrichieBricansBricanBreynoldsBrewriteBrevisedBreviewjournalBreversalBrevenueBrevengeBrevelationsBreutersBreunitesBretrospectiveBretroBretainBresumesBrestrictiveBrestoresBresponsibilitiesB	responsesB	resigningBresignedB	requiringBreptileBreproductiveB	replacingB	repeatingBreparationsBrepairBrentBrenewsBrenewalBremixB	remindersBrelatedBrelateBrefutesBrefundBrefugeB
refreshingB	refreshedB
reflectingBreflectB	referringB	referenceBreenactBredditB	recreatesB	recreatedBrecoversBrecoverBrecordbreakingBrecommendationBrecognitionBrecitalB	recessionBreceptionistBrealmBrealizationB	reaffirmsBreadiesBravioliBravingBraucousBratnerBrationalBratioBratedBrapistBrankingBrainsBragingBracistsBrabbiB
quarantineB	qualifiedBquakerBqatarBqaddafiBpyeongchangBpuzzleBpussyBpurseBpurpleBpunkB	punishingBpunishedBpunchesBpunchedBpuebloBpuddleBpuddingB	publishesBpubliclyBpsychologistsBpsychologistBpsaBprovingB	providingB	providersBprovenBproudlyB
protestorsBprotagonistB
prostheticBprosecutorsBprosBprophetB	pronounceBproneBpromotedB	promisingBprojectsB	projectedBprofitsB	profitingBproductivityBproducesBproblematicB	privatelyBprinterB	principalBpriestsBprickB
preventionB	pressuresB	pressuredB	preservedBprescriptionsBpreparedBprehistoricBprefersBpreemptivelyBpredictBprecheckBprankBpraisedBpotentiallyBpotatoB	postponesBpostersBpostedB
possessionBposingBposedBportlandBporterB
popularityBpopcornBpompeoB	pollstersBpollsterBpoliteBpoisedBplutoBplungesBplungeBplowsB
pleasantlyBpleasB
playgroundB	placementB	pistoriusBpiratesB	pinterestB	pineappleBpillowBpileupBpigsBpierBpicsBpicnicB
physicistsB
physicallyBphrasesBphotographyB
photographBphoenixBphilippinesBphilBpharrellBpharmaB	pervertedBpersonalizedB	permanentBperiodsBperhapsBperezBpennedBpenitentiaryBpeeingBpeasB
peacefullyBpaymentBpaydayBpattyBpattonB	pattinsonBpatternBpatronBpatriotsBpatioB	paternityBpastaBpassionBpartyingBpartnersBparticularlyB	partiallyB
parkinsonsBparkerBpapersBpapalBpantiesBpanthersBpanicsB	panickingB	panderingBpancakesBpalmsBpalmerBpaleontologistsBpaintsBpaddleBpadBpacksB	packagingBozBoxfordB	ownershipBowlBoweBovertimeBoverseasBoverlyBoverdoseBovationBoutofcontrolBoutletBorgansBorganizeBorderingBorcasBorcaBorbitBoptsBopticalBoptB	oppendahlB
operativesB	operativeBopBonscreenBonionsBongoingBomarosaBomarBoliveB	offensiveBoddsBoccupiedBobstructBobsoleteB	obnoxiousBoaklandBnyongoBnwordBnutritionistsBnudesBnovelistBnotificationsBnoticesBnoticedBnotebookBnorBnoodleB	nonverbalBnjBnineBnikeB
nightmaresBnightlyBnighterBnieceBnicoleB	newlywedsBnetworksB
networkingBnerdBnephewBneonaziBneglectsBneedyBnearsB	neardeathBnavarroBnativityBnationalistBnatalieBnassarB	nashvilleBnarrowB
narcissistBnaomiBnannyBnailBnaderBmyanmarsB	musiciansBmusicalsBmuseumsBmurdererBmuralB	movementsBmourningBmournBmountingBmountaintopBmotherfuckerBmotelBmosquesBmoscowBmorrisonBmoroccoBmorallyBmonitorsBmomentumBmomentarilyB	molestingB	moderndayB
moderatorsBmoderateBmodeBmobBmoanaBmoBmizzouBmixingB
misspelledBminnieBminneapolisBmindfulB	milwaukeeB	millenniaBmilitiasB	milestoneBmidlerB	middletonBmiddleclassB
microphoneBmickeyB	michigansB	michellesBmicheleBmichelangeloBmiceBmexicosBmeteorologistB	meteoriteBmessingBmercyBmentionsBmemphisB
membershipBmelindaBmediocreBmeccaBmeatlessBmccarthyBmcadamsBmcBmayhemBmayanBmayaBmatchingBmatchesB
masturbateBmasksBmarryingBmarriesBmarredBmarilynBmanufacturersB	mannequinBmandelaB
manchesterBmalfunctionBmalaysiaBmakersBmaintainBmailboxBmagnetB	magazinesBmadisonBmaddowBmachiavellianBmacaroniBlyftBluxuryBlustBlurkingBlupitaBlunaticBlunarBlumpBlowkeyB	lowincomeBloweringBlowcutBloungeBloudestBloopBlooneyBloomsBlongsBlongoriaB	longinglyBloftBlockingBlloydBlivelyB
liveactionBlitBlistenerBlistenedBlionelBliningBlineupBlimbaughBlimbBlightingBliftedB	lifetimesB	lifeguardBlifechangingBliedBliarBleoBlenoBlennonBlehrerBlegislatorsBlegionnairesB	leftoversBleaveinBleatherBleaningBleafBlawsuitsBlaverneBlaurieBlaureateB
laundromatB	launchingBlasagnaB	languagesBlanderBlambertBlaidbackBladensBkurdsBkurdishBkpopBknockedBknightsBkmartBkittenBkissedBkinkyB	khashoggiBkhanBkeyboardBketchupBkerrysBkenyanBkennethBkarlBkarateBkangarooBjrsBjournalBjoggerBjoaquinBjetsBjcpenneyBjarBjaniceBjamieBjamBjacksonsBivyBissuedBislamophobicBironyBirelandBiraqisBipodBinvolveBinviteB	investingBinvestigatorsBinventsBinventorBinventedBinvasiveBinvadedBintroB	intricateBintimateBintimacyBinterventionB
internshipBinternsBintendBintelBinsultBinstructionsBinstitutionB
installingB	inspectorBinsectsB	injectionBinitialBinherentBingredientsB
ingredientBinfluentialB
influencesBinfinityBinductedBindoorsB
indigenousBindianamericanBindefinitelyBincorrectlyB	incapableBincBinappropriateBimprovementBimplantsBimpersonatorB
imperativeB	impeachedB	immersiveB	immediateBillustratedB	illnessesBiggyBidealBicyBicedBhyundaiBhypeBhurtsB
hurricanesBhurdlesBhuntingBhunkBhungryBhundredB	hunchbackBhumorsBhumiliationBhumbleBhumanitarianBhumaneBhugsB	huffpostsBhubrisBhubbleBhrB
householdsBhospitalizationBhordeB	hopefullyBhopedBhookedBhoneyB
homeownersBhomemadeBhollowBhoaxBhoarderBhmoBhmBhipBhilaryBhijackedBhighpoweredBhighpitchedB	highlevelBhickenlooperB
heroicallyBhermioneB
helplesslyBhelmetBheidiBhefnerBhebdoBheavenlyBheatBheartwrenchingBheartshapedB
heartbreakBhealerBhealBheadonBhbosBhboBhbcuBhb2BhawaiisBhauntBhatsBhatingBhatedBhaspelBharveysBhartBharrietBhardshipBhardlineBhardhittingB	harassingBharassedBhankBhangsBhanesBhandlingBhandlerBhamsterBhammersBhaltsBhalftimeBhalfheartedlyB	halfassedBhackingBgymnastBgunfireBgumsBgulfBguineaBguantánamoB
guantanamoB
grudginglyBgrillsBgriffinBgridBgreecesBgrassBgraspB	grandkidsBgrandfathersBgrandchildrenBgrainBgrahamsB
graduatingBgradeBgottenBgospelBgoslingBgorillaBgooglesBgoatsBglitterBginsburgBgigiBgigBgetawayBgestureBgermansB
geologistsBgentleBgenerousBgawkerBgavinBgamersBgamblingBgainingBg20BfuzzyBfusionBfuryB
fundraiserBfundamentalistsBfullerBfulfillsBfuelingBfuckersBfuckedupBfryBfrustrationBfrontrunnerBfringeBfreddieBfratBfrappuccinoBfranticBfrancoBfrackingBfoundingBfoundersBfoundedBfoulBfoughtBforumB	forprofitBformsBforensicBforecastB	forbiddenB	footballsBfondBfollowupB	followersBfoldBfogBfoeBfocusingBfmBflyerBflowBfloodedBflirtingBfleetingBfleeingBflawsB	flatteredBflashesBflareBflamingBfkBfixingBfitsB	fishermanBfirearmsBfionaBfinestBfinesBfindingsB
filmmakersBfillingBfilingBfiguringBfiguredBfightersBfighterBfidelB	fertilityBfeminineBfelonyBfellBfeeBfedupBfecBfawningBfascistBfascismB
fascinatedBfargoB
farentholdBfancyB
falsifyingBfallonsBfallenB	factcheckBfacilityBfacialBfaceoffBfacedB	facebooksBfabulousB
eyeopeningBextrumpB	extremistBextraordinaryB	extensionB	expressesBexposingBexposedB	explosiveBexplorerBexplodesBexperimentalBexpensesBexitingB	exhusbandBexgirlfriendBexecBexclusivelyBexboyfriendBexasperatedBexaminesBevolvedBevolveBevisceratesB	evidentlyBeverestB
eventuallyB	evacuatedBetBescapingB	escalatesBeruptBerasesBenvironmentalismBenvelopeBentrepreneursBentrepreneurBentertainingBensureBenragedBenjoyedBenemiesBendureBendorsementsBempowerB
employmentB	employersBemployerBemperorBemojisBeminemBembeddedBemB	elsewhereBellieBeliteBelfmanBelevateBelementsBelegantBelectBelderBegosBedwardB	educatingBechoesB	eccentricBeasternBeasilyBearlBdysfunctionalBdynastyBdykeBduvernayBdutchBduncanBdumpsterBdumberBdullBdugBdryerBdrunkenBdrummingBdroughtBdronesBdrivewayB	drivethruBdrippingBdrinkersBdresserBdreadingBdreadBdrawnBdrainingBdozenB	downplaysBdowB	doughnutsBdopingBdoomsdayBdoodleBdonutsBdonorBdonnaBdonatingBdolledBdiyBdivingBdivestBdisturbinglyB
distraughtBdistractionB
distractedBdistanceBdissentB
disruptionBdisruptBdisneysB	dismissesBdisintegratesBdisillusionedBdisembodiedB
discussingB	discussedBdiscriminateB
disastrousB
disabilityBdirtBdireBdipshitsBdipshitBdiplomaB	dinosaursBdinklageBdildoBdignityBdifferentlyBdicaprioBdiazBdianneBdiamondB	diagnosedBdhabiBdexterBdevotedBdevisesBdevicesB	developedB	detaineesBdetailedBdestinationBdesignsBdesertB
describingB
descendingBderailsBdeptB	departureB	departingBdenverBdenierBdemonstratesBdemonstrateBdemoBdemiseB
delusionalB	deliveredBdelightsBdelicateBdeletingB
delegationBdelBdefundB	defendingB	defendantBdefeatsBdefeatedB
defamationBdeepensB	dedicatesBdecriesBdecreaseB	decliningBdeclinesBdeckB
decadesoldBdebilitatingBdealerBdeafBdarrenBdarknessBdarfurB	daredevilBdanesBdamningBdamagesBczechBcycloneBcutestBcurlyBcupcakeBcupboardBcumBcultBcuffBcrypticBcrustBcrueltyBcruelBcrowdfundingBcrowdedBcrowBcrossesBcriticizingBcreditsB
creditcardBcreationBcrazedBcrawlBcraveBcrateBcrashedBcraigBcraftBcrabBcowsBcowerBcowardlyBcouricBcounterpartsBcounterfeitBcostcoBcostarsBcosbysBcorrectsB	correctlyBcordensBcordBcoralBcopeBcoolestBcookiesBconwayB
convincingB
convictionB
convenientB
controllerB
controlledB	continuedBcontemptB	containedBconsultB	constructBconsoleB
consistentBconsentBconradBconnectionsB	confusionB	confrontsBconfrontB	confirmedBconfinementB
conductingBconductBcondomsBconditionerBconcertsBconceptsBconcedesB	concealedBconBcomprehensiveB
complimentB	complaintB	competentB	comparingB	commutersB	communionB
commitmentBcommissionsB
comfortingBcomeysB	columnistBcolumbiaBcolonyB	colombianB	collisionBcollinsBcollideB	colleagueBcollaborationBcokeBcoinBcodesBcocktailB	coachellaBcmonBcluelessBclownBclosureBcloneBclinicsBclingingBclergyBcleanedBclausBclassesBclarksonBclarityBclarenceBclaireBclaimedBcivilianBcivicBchronicB	christiesBchosenBchoosingBchokingBchipsBchimpanzeesBchillBchicagosBcherryBcherB	chemistryB	chemicalsBcheesesB
cheesecakeBcheeseburgerBcheersBcheerleaderBcheatBchattanoogaBchasingBchasesBchargingBchapoBchainsBcentsBcautiousBcatastropheB	catacombsBcastsBcasteBcasketBcaseyBcarsonsBcarrotBcarriedBcarpoolBcarnivalB	cardinalsBcardinalBcardiBcapsuleBcapsB
capitalismBcapabilitiesBcaneBcanadasBcampaigningBcalfBcakesBcacklingB
bystandersBbuzzfeedBbuttsBbutterBbustsBbustedBbustBburundiBburtonBburialBburgersBbundyBbunBbumpBbullstBbugsBbugBbuffettB	budweiserBbuddiesBbtsBbryantBbrutallyB	brutalityBbrusselsBbrushBbronzeBbrokerBbrockB	broadcastBbroadBbritainsBbrightenB	briefcaseBbrieBbridgesBbriberyBbreathtakingBbreathesBbreastsB	breakroomBbrazilsB	brazilianBbrawnyBbraveryBbravelyBbraveBbrandsBbracingBbraceBbraBboycottsBbowlingBbowieBboutiqueBboulderBbosssBbootsBboothsBboomBbonusBbonoB	bombshellBbombersB	bollywoodBboilBblowoutBbloggersBbloatedB
blisteringB
blindsidedBblessedBblaseyBblanksBblanketsBblanketBblandBblamedB
blacklightB	blackfaceBbitcoinB
birthplaceBbirtherBbinderB	billionthBbillingBbigotB	beyoncésBbetteBbetsBbetoBbestsellingBbergdahlBbengalB
benefactorBbeltBbelowBbellyB	believingBbeliefsBbeliefBbelatedBbelairBbegBbedsBbeastBbeardedBbeardBbeanBbeachesBbbcBbatsBbaskinrobbinsBbasketBbashingBbashesB
bartendersBbarredBbaristaBbarbieBbaptistB
bankruptcyBbankingBbangedBbaldwinsBbaghdadBbagelBbadgeBbaderB	backwardsBbacktoschoolB	backstageBbachmannBazaleaBawhileBaweBawareBavocadosBavengersBavatarBautomaticallyB	automaticB	automatedBautoBauthenticityBaustriaBauditionBattendsB	attemptedBattackerB
atmosphereBatlanticBathleticBathleteBassuringBassumingBassistedBassignedBassertsB	assaultedBashBaryanB
artificialBarticlesB	arrestingBarrayBarnoldBarmorBargueBarethaB
archbishopBarbysBarabsBaquariumBappropriateBapproachingBapplyBappliesBapplicationsBapplicationB	applicantB	applebeesBapplauseB
appetizersB	appearingBapparentBappalledBapesBapeB	apartheidBantidepressantsBanticipatedBanthropologistsB	announcedBanimatedBangeredBangelinaBandreasBanalystsBanaBamtrakBamnestyBameliaBaluminumBaltrightBallstarB	allocatesBallergicBallanBalisonBalexaBaleppoBaldrinB
alcoholismBalassadBalarmingBalarmedBairborneBairbnbBagenciesBafricanamericanBadvisorsBadvisesB	adventureBadvancedBadvanceBadoptionBadoptedB
admissionsB	addressesB	addressedBaddictBadderallBactivityBacresBacquiredBacquireBacidBachingBachievesB	accidentsBabuBabsoluteBabsBabruptlyB	abortionsBaboardBabcsBabcBaarpB99B96B95B93B86B800B79B77B74B73B72B71B68B65B54B4thB45thB3dayB34B30thB24hourB2050B2030B2024B2011B2010B2006B1stB19thB1991B1914B180B	16yearoldB	15yearoldB	13yearoldB12thB10yearBzuckerBzsaBzombieBzogbyBzeusB	zellwegerBzealandBzaynBzaraBzamboniBzacharyByoyoByouthsB
yourselvesByoungestByomByoByieldsByieldByellowstoneByelledByearlyByeahByardsByankeeByallByahoosByadaBxrayBxmenBxlBxiaopingBxavierBwynnBwyclefBwwiBwuBwroughtBwrongedB
wrongdoingBwritingsBwristBwrinklesBwrinkleBwrightBwrenBwreckageBwreathBwrappingBwrapBwoundBworthyBworsensB	worldviewB	workforceBwoosBwoodworkB
woodpeckerBwoodedBwoodcutBwooB
wonderlandBwoefullyBwoeBwnbaBwizardsBwitsB	withstandBwitherspoonsBwitherB	withdrawsB	wistfullyBwistfulBwinsletBwinesBwindsBwindingBwindedB	wimbledonBwilmoreBwilmerBwillowBwillieBwildsBwildcatBwienerBwidthBwidowsBwiderBwidelyBwickBwhoopsBwhoopiBwhoeverBwhitecollarB
whiteboardBwhistleBwhinyBwhimsBwheelbarrowBwheelBwhcdB	westworldBwestminsterBwestboroBwendysBweldingBweightlifterBweekendsBwedsBwebpageB	weatheredBwearableBweanBweakenedBweakenBwatchmanBwatchersBwastesB	wastelandBwastefulBwasherBwashedupBwartornBwarriorsBwarrantBwarpedBwarningsBwarmthBwarmsBwarlordBwarholBwarcraftBwandaBwaltzBwaltonBwalletsBwafflesBwadBwackiestBwaaahBvulgarBvuBvoyagerBvoyageBvomitsBvoluntarilyBvolumeBvoidB	voicemailBvoicedBvocalistBvividBvisineBvisasB	violentlyB	violatingBvinylB
vindicatesBvikingBvigilBviennaB	videogameBvictorBvibesBvettingBvetBverseBvermontBverifyBvendingmachineBvendingBveinsBveiledBvehiclesBveggiesB	vegetableBvaultBvaticansBvatBvaseBvariantBvanityBvanishBvanillaBvanessaB
vandalizedB	vandalismBvampiresBvampireB
valderramaBvalButterlyBusualBusmexicoBuselessBusefulBuscubaBuruguayB
urineproofBurinatorBuptickB
upstandingBupstairsBupsetsBuproarBupholdsBupgradesBupgradedBupbeatBunwindBunwantedBunveiledBuntestedBunsustainableBunsurprisinglyBunsungBunstoppableBunstableBunspokenBunseenBunrealisticBunrealBunravellingBunpublishedB
unpreparedBunnamedBunlocksB	unlockingB
unlicensedBunkemptBunitingBunitesBunitBuninterruptedBuninterestedB
uninformedBunifiedBunforgivableB
unfinishedBunexpectedlyBundiscoveredBundiagnosedB
undetectedB
underworldBunderwayBunderrepresentedBunderreportedBunderminingBunderageB	uncoveredBuncoolBuncontrollablyBunconstitutionalBunconditionalB	uncertainBuncannyBunbrokenBunbreakBunbelievablyBunbelievableB
unbearableBunauthorizedBunapologeticallyB
unansweredB
unaffectedBunaccountableBumaBuhBugliestBugandasBugandanBu2BtyraBtypingBtypecastBtwostepBtwostateBtwitterverseBtwistingBtwisterBtwentysomethingBtweetingBtwasBtwainBtussleBturnersBturnerB
turnaroundBturingBturfBtupacBtunnelsBtubmanBtubBtsunamiBtrumpinspiredBtrumanBtrucksBtruckersBtroyBtroveBtroutBtrooperBtriviaBtrippyBtrippingBtrilogyBtriggersBtricycleBtrickyBtribunalBtribesBtribeBtrenchB	tremblingBtrebekB
treatmentsB	treasurerBtrayvonBtravelsBtraumatizedBtransphobicBtransparentB
translatorBtransitionsBtransformersBtransferredB
transcriptBtranscendentBtrainersBtraineeBtrainedBtraffickingBtraffickersB
trademarksBtracyBtractBtrackerBtrackedBtowersBtouringBtouredBtoughguyBtouchscreenBtouchesBtortoiseB	tornadoesBtoplessBtoothbrushesBtoothBtonsBtoniBtonerBtomiBtomatoB	tollboothB	toleranceBtoilBtoenailsBtobyBtobackB	toadstoolBtmobileBtlcBtivoBtitsBtimingBtimeoutBtillBtilBtightBtigBtickingBtickedBtickB	thwartingBthwartBthurmanBthumbsBthroneBthroatsBthrivingBthriveBthrillseekerBthrilledB	threesomeBthousandBthoroughBthirstyB
thirdgradeBthinsBthinlyBthighBthievesBthielsBthiefBthickBtheydBthermometerBtheoriesBtheoreticalBthemesBthankingBthankedBtgiBtexansB	testifiesB
terrorizedBterrorismrelatedBterrenceBterrainBteresaBtentedBtentativelyBtenantsBtenantB	temporaryBtemporalBtempBtellallBtehranBteenyBtechnologicalBtechnicalityBteammateBteambuildingBtballBtaxpayerBtauntBtattoosBtastesB	tarantulaBtarajiBtappedBtapingBtapasBtapBtanzaniaBtammyBtalkshowB	talkativeBtalentedBtakeoutBtailoredBtailgateBtailBtaiBtaffyBtacticsBtacklesBtackledBtablesBtableauBsystemicBsyrupBsymptomBsymphonyBsympathyBsympathizersBsympatheticBsylviaBsyedB	swordfishB	switchingBswitchedBswipingBswipeBswimBswedenB
sweatshopsBsweatersBswearBswampB
swallowingBsustainabilityBsuspiciouslyB
suspendingBsushiBsurvivesBsurvivedB	surveyingBsurroundingB
surinameseBsurgicalBsurgesBsurfingBsuppressionB
suppressedBsuperstitiousBsuperpowersB
superpowerB	supercutsBsunriseBsunnisBsunkBsundanceB	sumptuousBsummonsB	summoningBsullyBsuitsBsuitorsBsuitcaseBsuggestionsB
suggestionB	suggestedB	sufferersBsudaneseBsucksBsuckersBsucceedB
substituteB	substanceBsubsideB
subsequentBsubscribersB
subpoenaedBsubmitsBsubhumanBsubconsciousBsubcommitteeBsuaveBstylistBstylingBstunBstuffsBstufB
strongholdB	strollersBstrokeB	strippingBstripesBstripeBstrifeB	strictestBstrictB
stretchingB	stretchesBstretchB
stressfreeBstressesBstressedoutB	streisandB	streetcarBstreakB
strategistB	strategicBstrangulationB	strangledBstrandedBstrainsBstorytellingB	storybookBstormedBstoolBstonesBstockedBstockbrokerBstirringBstinkBstingBstillerBstickyBstickingBstickersBstevieBsteroidsBsternB	sterlingsBstepmomBstemBsteerB
steakhouseBstaunchB
statisticsB	statisticBstatenB
statehouseBstartupsB	startlingBstarshipBstarrBstaplesBstanleyBstamosBstalkingBstalinBstairsBstagedBstadiumsBstackBstableBstabBsqueezesBsqueezedBsqueakBsquatB
squanderedBspursBspriteBspreeB	sprawlingBspottingBspotifyBspoonB	sponsoredBspoilsB	splittingB	splintersBspinsterBspinningBspiesBspiedBspellBspeedyBspeedingBspectacularlyB	spectacleBspecialsBspecializesBspazBspatialBsparesBspanxBspankingBspanB
southernerBsoughtBsortaBsorrowBsopranosBsophisticatedBsoothingBsoninlawB
songwriterB	someplaceBsomedayBsomebodyBsomaliB	solitaireBsolemnBsocioeconomicB	socialistBsoberingBsobBsoarsBsoaringBsoapsBsnowyBsnowmanB
snowflakesB	snowflakeB	snowboardBsnoozeBsnoopingBsnapchatB	smugglingBsmoresBsmoochBsmogBsmellsBsmashedBsmarterB	smalltownBslutBslurBslumberBsludgeB	slovenianBslipBslidingB	slideshowBslidersBslickBsleepyBslaughteringBslammingB	skywalkerB
skyscraperB
skyrocketsBskunkBskullsBskitBskippingBskinnyBskiersBskiBsketchesB	skeletonsB
skateboardBskateBsizzlingBsitinBsiriBsiouxBsinkB	singaporeBsinclairBsinatraBsimoneBsimilarBsilvioBsiloB	silencingBsilencesBsighsBsighingBsidewaysBsicknessBsicklyBsickenedBsiblingBshuttingBshuddersBshtBshrunkBshroudB	shrinkingBshrinkBshrineB	shriekingB	shreddingB
showerheadBshovingBshoveBshotgunBshortsB	shortcutsBshoreBshkreliBshitheadB	shipwreckBshippedBshinyBshiningBshinglesBshinesBshieldsBshieldBshiaBsherylBsheltonBshellingBsheldonBsheeranBshaunB	shatteredBsharpBsharonBshareholdersBshardsBshaqBshapesB	shapelessBshapedBshannonB	shamelessBshamefulBshakyBshakiraBshakesBshacklesBshackledB
sexualizedBsexualharassmentBsewingBseventhgradeBseventhBsettlingBsettlementsBservingsBserversBserpentBsephoraBsensitivityBsensibleBsenilityBsenileBselmaB	selfworthBselflessB
selfesteemBselfdestructingBselfdestructBselfcenteredBselfactualizedBselfabsorbedBseizesBseinfeldB
segregatedBsecuresBsectorB
secondhandBsecondgradeB	seaworldsBseasonalBsearchesB
seamlesslyBsealBseahawksBseacrestB	sculptureBscubaB	scrollingBscrippsBscreenwriterB
screenplayBscreamedBscrapsB	scramblesBscrambleBscoutingBscotusBscotchBscopeB	scoobydooBscissorsBscientologyBschultzBschoolhouseB	schoolersBschollsBschneidermanBschismB
schedulingB	schedulesBscentsBscenesBscenarioBscathingBscarredBscarfBscarboroughB
scapegoatsBscannedBscallopsBsavvyBsavoryBsavorBsatisfyBsashaBsarkozyBsantasBsaneBsanduskyBsandbergBsanctionBsampleBsambergBsalvagedBsalvadorBsalutesBsalsaBsalonB
salmonellaBsalmanBsalmaBsafestBsafeguardingBsaddestBsaddenedB
sacrificedBsacredBsachaB
sabotagingBrésuméBrusticBrustB
russiagateBrupturesBrunnersBrunnerBrunawayBrulerBruggedBrugBrubbingBrpgBroutinesBrouteBrousseffBroundsBroughedBrotationBrotateB
rosensteinBrosemaryBrootB	rooseveltBroombaBrookieBrooftopBroofsBromcomBromanBrolosBrollinsBrolandBrogersB	rodriguezBrockingBrocketsBrockerBrobocallB	robertsonBrobbersBrobbedB	riverdaleBrivalryBritalinBritaBripeBringingBrimBrihannasBriffBridleyBridiculeBricklesBricherBribeiroBribbonBrewardsBrewardedBrevolutionaryBrevoltBrevokesBreviveBrevisitBreviseB	reviewersBreviewedBrevelsBrevB	reunitingBretreatsBretoldBretireeB	retellingBretardedBresumeB	restoringBrestorationBrestlessBrestingB
respondingB
respondersBresortsBresolvesB	resilientB	residencyB	residenceB	reshapingBreservesBresentedBresemblanceB	reroutingB	repulsiveBrepulsedBreplyBreplayB	repealingBrepayBreopenBrenéeBrentingBrentalBrenownedB	renouncesB	renewableBreminiBremembranceBrelyB	reluctantBreliveB	religionsBreliableBrelevantB	relegatedBrelaxesBrelaxedBrelativeBrejoinsB	rejectionB
reiteratesBreinventingBreinventBreinerBreincarnationBreichB	registersBregionalBregimeB	regardingBreflexB
referendumB
referencesBrefereeBreferBrefB	reelectedBreedusBreedB	reductionB	redrawingBredfordBrecruitsBrecruitmentBreconstructB	reconnectB	reconcileBrecommendedB
recognizedB
reclaimingB	reckoningB	recipientBrecessB	receptionBreceiptBrecBrebrandBrebeccaB	reassuresB
reasonableBreaperBrealtorB	realitiesB	reactionsBrazorBrawBraveBrattanBrashBraqqaBrappingBrapingBrantsBrandyBramseysBralphBraismanBrailwayBrailsBraidersBragesBradicalsBradiatorBradarBradBracyBracketBraciallyBrachaelB	racetrackBraccoonsBrabidBquoteBquotaBquirkyBquintoB
questionedBquarterbackBquantumBqtipsBpythonBpyramidBputinsBpussiesBpushupsBpursuitBpursuingBpursueBpurposesBpurelyBpurdueBpupBpunditBpunchingBpunBpumpsBpumpB	publisherB	publicityBpubertyB
psychopathB
psychologyBpsychoBpsychiatristsBpsycheBpsychBpryB	proximityBproviderBproteinB
protectiveBprostitutionB	prospectsB
prosecutedB	prosecuteB
propublicaBproposeBpromptsBpromptlyB	promposalBpromotionalB	promotingBpromoB
projectionBprogrammingBprogB
profoundlyBprofessionalsB	profanityB
productiveBproductionsB	producingBprobingBprizedB
privilegesBpristineBpriorityBprinzeBpringlesB	primarilyBprimaBpricingBpreyBpreventsB
preventingBpretzelBpresumptiveBprestigiousBpressingBpressedBpresidentelectBpreservationBprequelBprepsBpreludeBpregoBpregnanciesBpregameBpredominantlyB	predictorB
predictionBpredicamentB	predatoryB	preachersBprayB
prankstersBpraisingBprairieBpracticallyB
powerpointB
powerfullyBpoweredBpouringBpoundBpoultryBpostureB
postmodernB
postmasterBpostitBpostgradB	posterityB
postdebateBpostbabyBpossibilityBpossessB
positivelyBportugalB	portrayedB	portrayalBportmanBportalBpornographyBpornographicBpornhubBpoppyBpopovichBpoopBponyBpondBpompousBpoliticallyBpolioBpokeyBpokesBpokerB	poisoningBpoisonBpointerBpointedBpoetsBpoehlerB
podiatristBpocketsBplummetBplummerBplottingBplightBpledgedB	pleasuresBpleadingBpleadBplayboysBplayboyBplaybookBplatesBplaqueBplantingBplanetsB
plagiarismBplacingBplacentaBplaceboBpizzasBpivotalB
pitchblackBpitaBpirateBpipesBpioneerBpinsBpinpointBpinkettBpingBpineBpilingBpiesBpierceBpickingBpickerB	physicianB	photoshopB
photoshootB
philosophyB
philippineBphilandoBpharoahBpharmacyBpharaohBpettyBpetsmartB	petrifiedBpetraeusB	petitionsBpetersonBpetcoBpetalsBpervertBpersonalitiesBpersonaBperrysBpermitsBperiodicBperilB
performersBperformancesB
perfectionBperceptionsB
perceptionB
percentageBpepsiBpepperedBpennyBpenguinBpendingBpeelB	pedophileB
pedestrianBpeasantBpeacockBpeacefulBpaxtonBpawBpavementBpaveBpaulsB	patrioticBpatriciaBpathwayBpaternoB
passionateB	passersbyBpasserbyB	partygoerBpartnershipB
partneringBpartisanB
particularBparticipatingBpartialBparrotBparoleBparliamentaryBparkedBparentalBparaphernaliaBparanoidB	paralyzesB	paralyzedB	paperworkB	paparazziB	pantyhoseBpantryB	panelistsBpancakeBpanBpalmBpalinsB	pakistansBpajamasBpajamaBpaintingBpaintedBpaiBpactBpacsBpacquiaoBpaBoysterBowningBownedBowlsBowesB	overturnsBoversizeBovershadowedBoverrunB	overruledB	overratedB
overpricedB	overdriveB
overcomingBouttaBoutsiderBoutsBoutofthewayB	outnumberBoutlinesBoutlineBoutlawBoutingBoutdoorsBoutdoorBoutcastBoustBouncesBoswaltBostrichBospreyBoshaBorphansBorphanedBorourkeBornithologistBornamentBoriginsB
originallyBorientationBorgasmB
organizersBorganizationsBoreosBoregonsB	orchestraBoptimistBopsBoprahBopportunitiesBopinionsB
openmindedBopeningsBopenerBonstageBonewordBonethirdBomitsBomgBomeletB	olympiansBolympianBoliviaBoliversBoilrichBohiosBoffendsBoffdutyB	odonnellsBodomsBodomBodessaBodeBoddlyBoctoberBocdBoccursBoccurBoccasionBobviBobstructionB	obstaclesB	obsessiveB	observingBobservationalBobscureB
obligationB
obamacaresBoatmealBoasisBoafBoBnytBnutterBnutritionalB	nutrientsBnunsBnudityBnoveltyB	notoriousBnotaroB	nostalgiaB	norwegianBnorwayB	northeastBnormsBnormanBnormBnooseBnookB
nonviolentBnonstopB	nonsexualBnonethelessBnonessentialBnoddingBnodBnixonsBniroBnippyBninaB	nighttimeBnightmarishB
nightlightBnigeriasBnigerianBnielsensB
nickelbackBnicerBnicelyB
nicaraguanBneyoBnewtownBnewtonBnewsweekB	newsroomsBnewscastBnewgirlfriendBnewfrontBnewbornsB
nevertrumpBneuroticBnestleBnephewsBnepalBneonazisBneonBnemesisBnegotiationsBnegotiatingB	negotiateBncB
navigatingBnauseousB	nationalsBnationalistsBnastBnascarBnasasBnarratorB
narrativesBnappingBnapkinsBnapkinBnanaBnamsBnamingBnailingBnaggingBnaftaBnaBmvpsBmutualBmuttersB
mutilationBmutationBmustacheBmusingsB	mushroomsBmuscularBmusclesBmurraysBmurdersuicideBmuralsBmumfordBmultinationalBmultiethnicBmulticulturalBmullBmulanBmugshotBmugsBmuellersBmudslideBmudB
muchneededBmuchanticipatedBmtBmsnbcBmsB
mozambiqueBmowB	moviepassB	moviegoerBmoversBmouthingB	motoristsB	motorcadeBmotorBmotiveB
motivationB	motivatedBmotionsBmosulB
mosquitoesBmosquitoBmortyB	morticianBmortarBmorbidlyBmoralityBmoraleB	monumentsB
monumentalBmontageBmonkfishBmonkeyBmoneysBmomoaBmomaBmohawkedBmodifiedBmodestB
moderationB
mockingjayBmockingbirdBmockeryBmochaBmobilityBmoaningBmnuchinBmixupBmixersBmistrialB	mistakingB
missionaryBmissilesB	misshapenBmisogynyBmisinformationBmishandlingB	misguidedBmiscarriageBmirrorsB	ministersBminingBminibarB	miniatureBmindblowingBmillersB
millenniumBmillBmilkingBmileBmilanBmilaBmidstBmidgameBmideastB
microsoftsBmickBmichelinBmichaelsBmiaBmeyerBmexicansBmexicanamericanBmethodsBmethodicallyBmethaneBmeteorologistsBmessyBmessiB	messagingBmerriamwebsterBmerelyBmercuryBmercilesslyBmerchandiseBmeowB
mentioningB	menstrualBmenendezBmemoriamBmemoirsBmeltsBmeltingBmelanieB
megachurchBmegaBmegBmeetingsBmediterraneanBmedicsB	medicinalBmedicationsB
medicationBmeatballBmeasuredBmcmahonB
mclaughlinB	mccartneyB	mccarthysBmcbealB
mayweatherBmaysBmayorsB
mayonnaiseBmayerBmaxineBmauledBmaturityBmatureBmattisBmatthewsBmathematicianB	maternityBmaterBmasturbatorsBmasturbatorBmasturbationBmasturbatedB
mastectomyBmassageB
masochistsBmasculinityBmascotBmartyrBmartyBmartiniBmarshallBmarshB	marriagesBmaroonBmarkerBmaritalBmarieBmariaBmarginalizedBmarginB	margaritaBmargaretBmarchersB
marathonerBmaraBmapleBmaoistBmanufacturerBmansonBmannersBmanmadeBmanlyBmankindBmanipulatedBmaniacB	manhattanBmangaBmandateBmanagesBmanagersB
manageableBmammalBmalikB	maintainsBmainlyBmaidBmahmoudBmagnaBmadameBmacsB	mackenzieB	macarthurBmaBlyneB	luxuriousBluredBlureBlunchesBluigiB	lucrativeBlucidBlowwageBlowestBlowesBlowersBlouvreBlousyB
louisvilleBlouieBloriBlordsBlopezBlootingBlootersBlooselippedBlonglastingBlongingBlongestBlongawaitedB
lonelinessBlondonsB	londonersBlohanBloggingBloftyBlodgingBlodgedBlochteBlobstersBlobbyingBloadedBllB
livingstonBlitterB
literatureBlistsB	listenersBliquidBlipsB	lingeringBlinerBlindaBlinBlimoBlimitededitionBliliBlikensBlightsabersB
lightsaberB	lightningBlightlyBlightheartedBlighterBlightenBlifesBliechtensteinBlidBlicensesBliceB	librariesBlibBliamB	liabilityBlewisBlewinskyBlevineBleverBlesterBlesbiansBlesBlepageBleopardBleoneBleonardoBleonardBlengthyBlengthBlendersBlemonadeBlegoBlegitimatelyBlegislativeBlegallyBleftoverB
lefthandedBleelahBledgeBlectureBlebowskiBlebanonBleatherboundBlearBleapingBleapBleahBlayoutBlayerB	lawnmowerBlavaBlaurelBlaughsBlaughingBlatinaBlastsB
largemouthBlargelyBlapierreBlapdBlapB	landscapeBlandlordBlandfillBlampBlamaBlakesBlaidoffBlahrenB	lagerfeldBlaffyBladysBladderBlaceBlaboredBlabelsBlBkurtBkunisBkrugmanBkristolBkristinaBkotterBkosovoBkobachBknockBkneelBklineBkitschBkiteBkissesBkirkmanBkippurBkimyeBkimsBkidnapsBkickstarterBkickerB
kickboxingBkickassBkevinsBkeshaB	kentuckysBkendallBkempBkelloggsBkelleyBkegBkebabBkayakBkatBkareemBkaliefBjurorBjupiterB	jumpstartBjumpinBjumperBjumpedB	jumbotronBjulianneBjuliaBjukeboxBjugglerBjugBjudyBjudithBjudgmentBjuddBjudaismBjuanBjpmorganBjolieBjokerBjojoBjohnsonsBjingleBjindalBjigsawBjiffyBjewBjetblueBjesseBjerkyBjerkingBjenningsBjenB	jellyfishBjeffreyBjcrewBjbBjazzfestBjayzsBjawBjanitorsBjamsBjailsBjaguarsBjadaBjackieBjacketsBjackassBixBivfBivBistanbulBisraelipalestinianB
irrelevantBironcladBirmasBiraqsBiraniansBiraBiphonesBiowanB	involvingBinvokesBinvestigatedBinvestBinvadingBinvadeB
introvertsBintrigueB
intimidateBinterviewerBintersectionBinterruptionB	interruptBinterpretationB	internetsBintermissionBinterimBintergalacticBintercourseB
intentionsBintentionalB	intentionBintentBintensifiesBintelligentBintegrativeBinsultsB	instructsBinstructorsBinstructionalB
instructedBinstitutionsB
institutesB	instinctsBinstallsBinstaBinspirationalB
inspectorsBinsomniaBinsightsBinsightBinseparableBinsecuritiesBinjectsB	injectingBinhumaneBinhofeB	inheritedBingrahamBinfowarsBinformBinfographicBinflightB	inflationBinflamedBinfiniteBinfiltratesB	infertileB
infectionsB	infectionBinfectedBinexperiencedBinducedBindoorBindividualsBindividuallyBindieBindicateBindianapolisBindexBindepthBindeedB	incorrectBinconsiderateBincomingB	inclusiveBincestB
inaccurateB
inaccuracyBimpulseBimproperB	impressesBimportedBimpliesB
imperviousBimpersonationB	imperfectB	impendingBimmuneBimmortalityBimmoralBimdbBimaginedBimageryB	illegallyBilhanBilBiisB	ignoranceBiftarBidyllicBidlyB
identifiedBidahoBiconsBicelandBicebergBicbmBhypochondriacB	hygienistBhydrantBhybridBhutsBhustlerBhuntsB
humiliatedBhumbledB
humanizingBhumBhuluBhulkingBhulkBhuggingBhudsonsBhudsonB
hoverboardBhousekeeperBhouseflyBhourlongBhoundB	hostilityBhostessB	hospitalsBhormonalBhorizonBhordesBhopkinsBhoodsBhonkB	honeymoonBhondurasBhondaB
homophobiaBhomerB	homeownerBhomageBhologramBhollyBhollowayBhoggingBhogBhobbiesBhoBhivaidsBhistoricallyB	historianB	hispanicsBhillsBhikingBhikersBhikeBhighlightingBhighendBhigginsBhideousBhiddlestonsBheydayBheterosexualBhershB	herculeanBhensonB	hendersonBhenB	hemingwayB	hellmannsBhelenBheistBheightsB
heightenedBheedBhedwigBhedgehogBhecklerBheckBheatsBheatherBheathBheartbreakinglyB
healthiestBheadyBheadsetB	headscarfBhazardsBhayrideBhayleyBhayekBhayBhawkingBhawkBhawaiianBhavocBhauntingBhaulBhathawayBhaterBhastertBhasbroBharshlyB	harrelsonBharpoonBharpersBharperBharoldBharnessBharmonyBharmfulB	haringtonBhardworkingBhardlyBhardcoreBharborBhannibalBhandwritingBhandsyBhandledBhandheldBhandcuffB	hamburgerBhaltedBhalperinBhallmarkBhalliburtonB	halfnakedB	halfcourtBhaleBhaitianBhairdresserBhaircutBhailsBhagueBhadntBhadidBgypsiesBgynecologistsBgynecologistB
gyllenhaalBgunnedBgunkBgumpBgulpBguitarsB	guitaristBguiltBguerillaB
guaranteesBguamB	guacamoleBgrownupsBgrownupBgroundedBgrooveBgroomBgrizzlyB	grizzliesBgrislyBgrishamBgrindrBgrinchBgridlockB	greyhoundBgrewBgreshamBgreggBgregBgreetsBgreetingBgreetB
greenspansB
greenpeaceB	greenlandB	greatnessBgreatlyBgravityB
gravestoneBgratificationBgrasshopperBgraphicsBgrantsB	grandsonsBgrandmasterBgranddaughtersBgramB	graduatedBgradsBgraderB
graciouslyBgqBgownsBgouldingBgothamBgoryBgordonlevittB
goosebumpsBgoofBgoodwillBgoodellBgoliathBgoldblumBgoldbergB	goingawayBgohmertB	godfatherBgoddessBgoblinBgobletBgobbleBgluedBglowsBglowBglovesBglitchBglimmerBglazedB	glamorousBgladeBglaciersBglaadBgiseleBgilbertBgiftedBgifsBgiBghastlyBgetawaysBgestapoBgervaisBgerrymanderingBgerbilBgeraldBgeopoliticalB	geographyB	gentlemenB	gentlemanBgenomeBgenitalsBgeneticallyB
generosityB	generallyBgehryBgeeksBgeekBgearingBgchatBgazeboBgayerBgavelBgauntBgatoradeBgathersBgassedBgaspsBgasolineBgardnerBgardensBgarciaBgapeBganymedeBgamingBgamechangingBgamechangerBgambitB
galápagosBgallowsBgallonsBgallantBgalacticBgalBgadotBgabrielBg8BfyiBfuturesBfussB	furnitureBfurBfunnelB	funlovingBfunctioningB
functionalBfunctionBfulltimeB	fullscaleBfullpageB	fullblownB
fulfillingBfugitiveBfugeesBfuckupBfuckinBftcBfrugalBfrothingBfrostedBfrootBfrontmanBfrontalBfrogsBfrogBfritolayBfrighteningB
frightenedBfrightBfriedBfreshlyB	freshenerBfrenzyBfreewayBfreelyBfreedomsB	frederickBfreakyBfreaksBfranzenBfrankieB
franciscosB	franchiseBframeBfoxconnBfourthgradersBfourthgradeB
fourleggedBfossilsB	formationBforgivenessBforemanB
foreignersB	forefrontB
footprintsBfondlyBfoldedBfoiledBfoilBfocusesBflyersB	flusteredBflushingBflushedBflushBflumeBfluidBflubBfloydBflowersBflossingBflorenceBflockBfloatsBfloatBflipsBflintsBflickerBflewBflesheatingB	fleetwoodBfleesBfleekBfleeceBfleeBflawlessB
flatteringBflatoutBflannelB
fitzgeraldBfishersBfiscalBfirstgraderBfirstgenerationBfirmlyB	fireplaceBfiremenB	firefightBfirearmB	filmstripBfifthgradersBfifthgraderB
fifthgradeBfieriBfiercestBfiercelyBfierceBfiascoBfianceeBfeverB	festivalsBferrisBfencesB
fellowshipBfeldBfeignBfeigBfeedsBfedexBfeastBfavorsB	favoritesB	fatteningBfastestgrowingBfastestB	fantasticBfantasizingB
fantasizedBfalconBfaithfulBfaggotBfadedBfadBfactoredBfactcheckersB
facilitiesBfabBfBeyelinerB	eyelashesB	exuberantBextraterrestrialBextinguisherBexposeB
explosivesBexploratoryB
exploitingBexplodeBexplicitB	expertiseBexpenseB
expeditionB	expectantB
expectancyBexpandedBexpandBexoticBexoneratingB
exoneratedBexistingBexistedBexhumedB
exhibitionBexgirlfriendsB	exercisesBexecuteBexcopBexcommunicationBexclamationB	excessiveBexcerptB	excellentB	examiningBexamineBevolvingBevictionBeverythingsBevangelicalsBevanB
evaluatingBeuthanizingB
euthanizedB	euthanizeBeuropesB	europeansBetsyB	etiquetteBethanB	eternallyBeternalB	estimatesBestimateBestablishingBestablishesBessentiallyB	espionageBescortedBescortBescapedB
escalationBerrorsBeroticBerikB	erectionsBerectionBerectBerBepitomeBepisodesBenvirosBenvironmentalistsBentrepreneurialB	entourageBenthusiasticB
enthusiastB
enthusiasmB
enterpriseBenteringBensuresB
enrollmentBenrichedBenhanceBengulfedBengineeringBengineerBenforceBenemyB	enduranceB	endorsingBendgameBendangerB	encourageB	enchiladaBemptiedBempowersBemploysB	emissionsBemilyBemersonB	embracingBembracedBembodiesB
embezzlingBembezzlementB	embattledB	embarrassBelusiveBeltonBelsaBellisBelkBelfBelevenBelenaBelectsB
electronicBelectricityB
electricalBelectingBelbowBelaineBelaboratelyBejectedBeinsteinBegyptsBegoBeggersBeffectivelyBeducatorBeducatedBedisonBedibleBedgyBedgarBecstaticB	economicsBeconomicallyB
ecigaretteBeasingBeasiestB	earthlikeBearnsBearhartBearbudBeagleBeagerBdystopiaBdysfunctionBdynamiteBdynamicBdylanBdyeB	dwindlingBdwightBdwellBdwayneBduterteBdurstBdunksBdunkinBdungeonBdummyBdummiesBdumbingBdumbestBdumbassBduffB	duckworthB	ducklingsBduchessBdubaiBdsm5B	drunkenlyBdrownsBdrowningBdrownBdrillBdreBdrawingsBdrainB
downstairsBdownsBdownplayingB
downplayedBdownloadableBdownloadBdowneyBdouglassBdouglasBdoubtsBdoublesidedBdoubledBdotBdossierBdoryBdorisBdopeBdoorwayBdoomedBdoobieBdonaldsBdominosB
dominatingB	dominatesBdominateB	dominanceBdomeBdollBdolbyBdoggyBdodgingBdodgersBdocsB	divorcingBdivisionBdiverBditchesBditchedBdisturbanceBdistrustB
distressedBdistractionsBdistractingBdistinctionB
disqualifyBdisputedBdisputeBdisparagingBdisorientedB	dismissalBdismayedBdismalBdisillusionmentBdishingB
disfiguredBdiscriminatedB
discreetlyBdiscreetB	discreditB	discourseB
discountedBdiscontinueBdisciplinedB
disciplineB	discardedBdisappointmentBdisappearingBdisappearanceBdisagreeBdirectsBdirectorialBdipsBdippingB	diplomacyBdionBdinnersBdingsBdinerBdinBdilmaBdigsBdiggingBdigBdietsBdictionariesBdiamondsBdiBdevoteesB
devastatedB	detonatesB
determinesB
detectivesBdetainB	destroyerBdestinyBdestinedBdestinationsB
despondentBdesksB	desirableB
designatedBdescriptionBdescentBdesBderekBdeputiesBdepravedBdepositsBdepositB
deploymentBdeployBdepletedB	depictionB	dependentBdenuclearizationBdentistB	denouncesBdenisBdeniersBdenialBdengBdemotedBdemonstrationsBdemonicBdemonB
demolitionBdemolishBdemandedB
deliveringBdelightfullyBdeletesBdeleteBdelegateBdelayingBdehydrationBdegreeBdegrasseBdefinesBdefiesBdefibrillatorBdefianceB	defensiveB	deepfriedBdeemsB	dedicatedBdecoyB	decoratedBdeconstructingBdeclutteringBdeclareBdecipheringBdecimateBdecidingB	deceptiveBdecayBdebrisBdebacleBdealingsB	deadliestBddayBdazedBdaytimeBdaycareBdatabaseBdashcamBdarwinBdarnBdarlingBdarkerBdancerBdammitBdamBdaleBdalaiBdakotasBdaggerB	dachshundBdaBcybersecurityBcyberattackBcustomB	custodianBcurvyBcursedBcurlingBcuredBcurbingBcuratorsBcumberbatchB
culturallyBculinaryBcubansBcubBcsBcryptocurrencyBcrusadeBcrumbBcruisesBcrucifixionBcrouchedB
crossroadsB	crossoverBcrossedBcropsBcrookedBcrocsB	crocodileBcroatianBcritiqueB
criticismsBcrisesB	cripplingBcrippledBcrimeaBcricketBcribBcrewsBcreepedBcredibleB	creaturesB
creativityB	crazygoodBcrazeBcrawfordBcravingsBcravingBcratesBcraterBcranksBcrampedBcraftsBcrackingBcrackersBcpacBcoxBcowardsBcowardBcovenantBcourtingB
courthouseBcourtesyBcouponBcoupB
counselorsB
counselingB
councilmanBcoulterBcouchesB
cottonelleBcottonBcostumedBcostnerBcostingBcosmicBcorruptBcorrectionsBcoronersBcorneredBcoreyB	copyrightBcoppolaBcopingBcookerBconveyorBconveyBconvertBconvenienceBcontributionsBcontributionBcontradictionsB
contradictB	contractsBcontractorsB
contractorB
contractedBcontraceptionBcontextB	contestedBcontentedlyBcontemporaryBcontaminatedB
containersBconsumesB
consultantB	consulateBconstitutionalBconstituencyBconsolidatingBconsistB	consensusBconsciousnessB	consciousB
connectingBcongressmenBcongratulateBconfrontingB
confoundedBconfidentialB	confidantBconfettiB	confessedBconferencesBcondéBconductsB	conductorBcondoleezzaB
concussionB
conclusionB
conceptionBconcentrationBconceiveB
concealingBconcealBcomptrollerBcompromisingB
compromiseBcomplimentaryB
completionB
compensateB
compassionB
communistsBcommunicationBcommitsBcommissionerB
commentingBcommemorativeBcommandsBcomfierBcombsB	combatingBcoloringBcolorfulBcolonizationBcolombiaBcolmesB	collusionBcolludeB
collisionsB	collectorB
collateralBcollarB	collapsedBcollaborativeBcollaboratesBcoinsBcoddlingB	cockroachBcockpitB	coalitionBcoachingBcoachesBcoBcnbcB	clutchingBclothedBclosetsBclosetedBcloselyBcloggedBcloakBclippersBclintBclingyBclimatologistsBclimatedenyingBcliffhangerBcliffBclifBclientsBclickedBclickBclichéBclerksBclericBclearedBcleanersBclayBclassyB	classicalB	clarksonsBclarissaBclapperBclapBclanB	clamoringBcitysBcircusBcircumstancesBcircumcisedBcircularBcinemasBcinemaBcindyB
cincinnatiBchurchesBchucklesBchubbyBchromeBchristsB	christinaBchristianityBchopsBchopraBchoppingBchopBchokesB	chokeholdBchokeBchmerkovskiyBchivesBchittyBchippewaBchinB
chimpanzeeBchimpBchimesBchillyBchillsBchiliB	childlessB	childfreeB
childbirthBchiefsB	chickfilaBchibokBchiBchewsBchewBchesneyBcherubBcherokeeBcheeredBcheekyBcheddarBcheckoutBcheckingBchechenBchavezBchattmanBchattingBchatsBchateauBchatBchasedBchartingBcharmingBchargersBchapmansBchapelBchaoBchantsBchantBchangerBchanelBchampionshipB	championsB	champagneBchallengingB
challengerBchainedBchaffetzBchadwickBcertificatesB	certainlyBcentersB
centerfoldB
censorshipBcelticB	celluliteB	cellphoneBcellmateBcelineBcelibacyBceaseBcboBcavesBcautionBcaucusesBcattrallB	catherineB	cataloniaBcatalanBcastileBcassiniBcasaBcartelBcartaBcarrollB
carringtonBcarolineB
carnivoresBcarlsB	caribbeanBcareysB	caretakerBcaraBcaptorsBcaptiveB
captivatedBcaptainsBcapitalizingBcapacityBcanyonBcantmissB	canonizedBcanonBcannonBcannibalBcannedBcannabisBcanisterBcandleBcancersB	cancelledBcancellationBcampersBcamperB	campbellsBcampbellB	cameramanBcameoBcamelBcamarosBcalendarB
calculatedBcairoBcagesBcageBcafeBcactusBcacheBcabinetsBcabaretBcabBbuzzwordBbuyersB	butterflyB
butterballBbutinaBbutcherBburstBburmasBburkeBburglaryBburessBbundchenBbumpsBbummedBbullsBbulbsB	buildingsBbuickBbuglesBbuffBbuddhaBbuckBbsBbruntBbrunchBbrowsesBbrownsB	brownbackBbronxBbrollBbrokeredB	broadwaysB
broadcastsB	broadbandBbroB	briefingsBbridesBbridalBbrickBbribeBbrentBbreastfeedingB
breastfeedBbreakupsB
breakfastsB	breakdownBbrawlBbrandyBbrandonBbranchBbrainstormingBbragsBbraggedBbragBbraceletB
boycottingBbowsBboutBbouquetBbountyB
boundariesBbotsBbotchesBborrowB	bornsteinBborisBboozyBboobBbonyBbonesBbonerBbondsBbonBbombedBboltsBbolsterBboliviaBboldlyBboiseBboilingBbogusBboggleBboeingBboehnersBbodybuilderBbobbiBboardsBboarBblursBblurryBblurbBblowbackBblossomsBblooperBbloodspatteredBbloodsoakedB	bloodlineBblondeBblockedBblitzedB
blissfullyBblindsB	blindnessBblindfoldedBblewB	blessingsBblessingBblenderBblastingBblasterBblairBblaineBblahsBblagojevichB	blackoutsBblacklivesmatterB	blacklistBbjörkBbittersweetBbitterlyBbisonBbiscuitB	birthdaysB
birminghamBbirdmanBbirdfluBbipartisanshipB
biologicalB	biographyBbiodiversityBbingewatchingBbingeBbindingB
billboardsBbilesBbigotryBbigfootB	bigbudgetBbielBbidsBbiddingBbicycleBbiasedBbiBbeyhiveBbeverageBbetraysBbestiesBbesideB
berlusconiBberkeleyBbendyBbenderBbendBbelongBbellsB	believersBbelievedB
believableBbelgiumBbeheadsB	beheadingBbeheadedB	behaviorsB	beekeeperBbeckBbeautifullyBbearingBbeardsBbeanieBbcBbbqBbaywatchB
battleshipB	batteriesB	bathroomsBbathingBbastardsBbassistBbaskBbasilicaBbasementBbarrelsBbarneysBbarnBbarkBbarbraBbaptizedBbannedBbanksyB
bangladeshB	bandolierBbandaidBballotsBbaldingB	balancingBbalancedBbahamasBbaggageBbackseatB
backpackerBbackgroundsB	backfiresBbabysittersB
babysitterBazizBaxesBaxelrodBaxeBawardwinningBawakesBavocadoBavidBaviaryBavertingBavenueB	avalancheBavailabilityBautoplayingB	autopilotBautonomyBautobiographyBautisticB
australiasBaudubonBaudraB	auditionsB	audiobookBauctionBauBatwoodBatvB
attributedBattractsBattendeeBattendedB	attackersB
atrocitiesBatriskBatomicBatomBathensBatheistsBatheistBasylumBastoriaBastonishingBassumesB
assistantsBassesBassemblyB	assassinsBassassinBassadsBaspiringBasidesBasianamericanBashesBashcroftBarsenioBarrivedBarrivalsBarrangedBarpaiosB
armageddonB	arlingtonBariasBarguingBarchdioceseBarchaeologicalBarchBarabianBarabamericanBaquamanBapuB
apprenticeB
appreciateB	appointedBapplyingBapplaudsBappetiteBapologizingB	apologiesB
apocalypseBapexBapatowBapathyBanybodyBantsBantonioBantmanBantivaxxersBantiscienceBantigovernmentBantidefamationBanticipationB
antibioticBanthonysBanthemsB
antarcticaB	antarcticBansariBanorexiaB	anonymityBanklesBankleBanimatronicBangrilyBangelouBandreaB	ancestorsBanarchyBanalogyBampleBamphitheaterBamendBambassadoriBamasBamandaBalyB
altogetherBalterBalphabetB	alongsideBalmaBallureB	allocatedBallnightBallmaleB	alliancesBallergyB
allegianceB
allegationBalisBalignBaliciaBaliceBalfonsoB
alexandriaB	alexandraB
alcoholicsBalbuquerqueBalbumsBalbrightBalbertBalbaBalaskanBalabamasBajitB	airstrikeBairportsBairingBaircraftBaimedBaileyBailesBahcaBagonyB	agonizingB
aggressionB	afterlifeBafricasB
aficionadoBaffableBaetnaB	aerosmithBadvocateBadvocacyBadvertisementB	advertiseB
adventuresBadvancementB	adulthoodBadnanBadmireBadmiralBadministratorBadjacentBadidasB
additionalB	addictiveBaddictedB
adaptationBadaptBadamsBacronymB	acquittedB	acquiringBacquaintancesBacquaintanceBacostaBacknowledgingBachillesBachievementBacetaminophenBaccusingBaccountabilityBaccordBaccomplishmentsBaccomplishedB
accidentalBaccessoriesB
accessibleBabusingBabuserBabrahamBabovegroundBabdulB	abductionBabdomenBabbyB
abandoningB9yearoldB	93yearoldB	8montholdB8monthB84B	83yearoldB82B8000B7thB78B76B72inchB70thB70000B6thB6dayB66B63B60thB60000B6000B600B5yearB5kB51B50sB	4yearoldsB48B46B45minuteB3yearB3timeB3monthB3dB39B36B	34yearoldB34000B	31yearoldB30yearB2to1B	29yearoldB25yearB250poundB25000B	23yearoldB220B	21yearoldB20yearB20weekB20thB20pieceB2040B2003B1999B1994B1992B1960sB1950sB1915B18thB1834B1800B	17yearoldB16thB165B160000B15thB150000B	14yearoldB145B1400B140B11thB102B0B“warB“manyB“drainB“aB	​reportB
​mummiesB	​mockedB​gleefullyB​explains​B​egyptianBéclairsB¯ツ¯B¡queB winnerBzzBzoomedB	zoolanderBzohanBzoetropeBzoeBzodiacBzodBzissuBzipporiBziplocBziplinesBziplineBzipcodeBzipBzionistBzinniasBzingerB	zinfandelBzincB	zetajonesB	zenzingerBzenefitsBzendayaBzellBzekeBzeevBzeeBzeddBzebraBzealotBzapposBzapperBzappaBzappBzanjeerBzangiefBzandtsBzambiaBzalmayBzakariaBzagatBzaeefehBzackBzaatariByutuByupByuletideByuanByoutubesByoungerlookingByoulookdisgustingByothersB	yorkshireByorkeByoreByoloByolkByokoByoheByohannaByogurtByodelBymcaByippeeByinByetiB	yesterdayByeltsinByellsByellowsB	yellowingByeezyB	yearslongB	yearroundByearnsByearendByazigiByazidisByazidiByayoiByayB	yatseniukByarnByannyByanniByanksByankingByankeesByangsByangB	yammeringByamahaByamByalomByalieByakByBxylophonistBxxxxiiBxxxxBxxsBxtremeBxsBxmasgiftsfromtrumpBxiaoboBxflBxfilesthemedB
xenomorphsBxenicalB	xabraxianBwyomingBwweBwurstBwuhlBwtfBwsjsB
wrongfullyBwritinBwriteupBwringerB	wrigglingBwretchednessBwretchedBwrestletalkB	wrestlersBwrestleB	wrenchingBwrecksBwreaksBwraysBwrathBwrapsBwrapperBwozniakBwow—calypsoBwoundupBwoundsBwouldveB	worsteverBworshipsBworsenB	worrisomeBworrellsBwormholeBwormB
worldwearyBworldsstrongestmanBworldlyBworldeatingB
worldclassBworkweekB
workplacesBworkoutsBworklifeB
workfamilyBworkerfriendlyB
workaholicBwordforwordBwoolyBwookieesBwoodworkingBwoodrowBwoodlawnB
woodcraftsBwongBwonderfullyB
womenuniteB
womenownedB	womenonlyBwomenboycotttwitterB
womanownedB	womanhoodBwolffBwokenessBwobblyBwmdBwltzB	wizardingBwizB	witnessedBwithdrawingB
withdrawalBwithdrawBwitchesBwishedBwiserBwiselyBwiseauBwisdomB
wisconsinsBwisconsinmadisonBwiretransferB
wiretappedBwiresB
wirehairedBwipingBwipBwinwoodsB	winwinwinBwintersB
winterizedBwinstonB	winovomitBwinosBwinningsB
winneshiekB	winndixieBwinkBwingingBwineriesBwindyBwindsurfingBwindsorB
windshieldB
windowsillB
windowpaneB
windowlessBwincingBwincesBwimpingBwilsonsBwillisBwillingnessB	willinglyB
williamsonBwilliBwillettBwillemBwillardBwillamBwilfordBwileysBwildeyedBwildersBwilderBwildeBwigsBwifisBwifiBwifebeatingB
wiesenthalBwieselBwieldBwidenedBwideeyedBwicksBwickerBwickedBwhoveBwhoringBwhoppingBwhooshsnapsbizBwhoopingBwhomB
wholesalerBwholeheartedlyBwhizB
whitewaterBwhitewashedBwhiteonwhiteBwhitehotB	whitefishBwhistleblowersB	whisperedBwhiskB	whirlwindBwhippoorwillBwhippleBwhinesBwhineBwhimpersB
whimperingBwhimBwhiffingB	whicheverBwhereverBwhereaboutsBwhelansBwheeldonBwheelchairfriendlyBwheelchairboundBwhedonBwhatshisfaceBwhaleridingBwhackerBwhBwgnB	wettshirtBwetlandsBwesternizationB	westbrookBwesleyanBwesBweptBwelterweightBwellthoughtoutBwellroundedBwellreasonedBwellnessBwellmeaningBwellinformedBwellfedB	wellesleyBwellendowedBwelladjustedBweldedB	welcomingBweiweiBweisserBweirsBweirdosBweirdlyBweirdlookingBweirdestBweirderB
weinsteinsBweightliftingBweighedBweepsBweepingBweepBweekndsBweekndBweeklongBwedgedB
wedding”BweddingreceptionBwebstersBwebpagesBwebmdB	webdesignBwebcamBwebbBweaversBweaveBweatherreadyB
weathermanB
weatheringBweasleyBweaselsBweaselBwearyB	wearhouseBweaningB
wealthiestBwealthburdenedBweak—theyreBweaknessBweakestBweakensB	weakeningBweakassBwaymoBwaymanB	waxmuseumBwaxesBwavyBwaverlyBwaveringBwattsB	wattersonBwatkinsB	watertownB
waterstonsBwatermelonsBwateringBwatergateeraB
waterfrontBwatereddownB
watercolorBwaterboardedB	watchdogsB	wassermanBwaspBwashingtonsBwarwickBwartsBwarriorBwarrantyBwarrantlessBwarpingB	warpaintsBwarpBwarnedB	warmongerBwarmlyBwarmestB	warmbiersB	warmakingBwarfareB
warehousesBwarbyBwapoBwapBwantingBwannabeBwandersB
wanderlustB	wanderingBwandBwamuBwambachBwalshBwalnutsBwallisB
wallflowerB
wallenbergBwallemBwallaceBwalkoutsBwalkonBwalkerbackedBwalgreenBwaldorfBwakeningBwakandaBwaiverBwait—sorryB
waitressesB	waitlistsBwaitlistBwaitheBwaitedB	waisthighBwahooBwagonsB	wagnerismBwagnerBwagingBwafflingBwaffleBwadingBwadesBwaddlingBwackyBwackBvyingBvwBvultureBvulnerabilitiesBvulgariaBvuittonB	vrckovnikBvoyeurBvoyager1BvowingBvowelBvowedBvoucherBvorisB
voluptuousBvolunteeringBvolumesBvoltsB	voltaggioBvolleyBvolkswagensBvolcanowaterfallBvolcanoB
volatilityBvolBvoicingB
voicemailsBvogueBvogtrobertsBvodkaBvodB
vocationalBvocalizeBvocaleseB
vocabularyBvloggersBvloggerBvjdayBvivianiBvivanBvitterBvitriolBvitoBvitaleBvisorBvisitedB	visionaryBviréeBvirulentBvirtuesBvirtueB	virginiasB	violinistBviolinBvioletBviolatedBvinnieBvineyardBvineBvinciB
villeneuveB	villanovaBvillagesB	villagersBvillaBvilifyBvilanchBvikramB
vigorouslyBvigilsB	viewpointB
vietnameseBvieirasBvieB	videotapeB
videostoreBvidB	victoriesB	viciouslyBvicinityBvicesBvicenteBvicariouslyBvicarB	vibratingBvibrantBvibeBvibBvialsBviacomBviableB	viabilityBviBvh1BveterinarianB	vestmentsB	vestigialBvestigesBvestedBvertigoinducingBverticalB	vertebraeB	versatileBversaceBversaBverreosBveronaonBvernonB	verifyingBverifiesBverifiedBvergingBverbatimBverballyBverbalizingBverbalBverbBventimigliaBventBvenisonBvengeancemindedB	vengeanceB
venezuelasBvendorsBveinBveilB
vehementlyBveggieBvegetariansBvegansBveepBvcrBvawaB	vavavoomsBvaultsBvaulterBvastlyBvasectomiesBvaryingBvariousBvarietyBvariantsB	variablesBvaquitaB	vaporizedBvapersBvapeBvanuatuBvansB
vanquishedBvanishesBvandrossBvandanaBvandalsBvandalBvaluingB
valuevilleB
valueaddedBvalidBvaliantBvalerieBvalenciaBvaladaoBvaiBvaguelyBvaginalBvadertheBvaderBvacuumedBvaccinationsBvaccinationB
vacationerBvacationboundBvacateBvacantBvacancyBuwwhitewaterBuvaButurnButtersButteringB	utteranceButopiaButerineButB	us–cubaBuswntBusurpBusuallyBussB	usrussianBusrussiaBuspsBusheredBusfwsBusedbookstoreB
uscverdugoBuscsBuscBusainB
usagermanyBusageBusableBurschelBurinaryBurinalsBurgingsBurgentBurbanismBuraniumBuptownBuptightBupstateBupstagedBupsidesBuproariouslyBuprisingBuppityBuppermiddleclassBuppermiddleBupperB	uploadingBuploadedBupliftBupkeepBupholdBuphillBupfrontBupendsBupdatingBupcloseandpersonalBupandcomingBunwittinglyB
unwinnableB	unwillingBunwieldyBunwedB	unwatchedB	unveilingB	unusuallyBunusableBuntrueBuntowardBuntoldBuntitledBuntiredBuntidyBuntelevisedBunsupervisedBunsuitedBunsubscribeBunspeakableBunsolvedBunslicedB	unsightlyBunshavenBunshakeableB	unseatingBunseatB
unscriptedBunsavedBunsarahBunsBunrulyBunrewardingB
unrewardedB
unrequitedBunrepresentativeB
unreportedBunrepentantBunremarkableBunrelentingB
unreleasedB	unrelatedBunregulatedBunrecognizableBunreasonableBunreadBunravelsB	unraveledBunquenchableBunqualifiedBunpresidentialBunpoppedBunplugB	unplannedBunpatrioticB
unorthodoxBunopcwB	unnoticedBunnecessaryBunnecessarilyBunmovedBunmerryB
unmasteredBunmaskedBunmarkedBunmannedBunmakingBunluckyB	unlovableBunlockBunloadsBunloadBunlikeB	unlikableB	unleashesB
unlawfullyBunlawfulB	unlabeledBunjustifiedB
univisionsBuniversitysB	universesBuniversallyBunisexBuniquelyBuninvestigatedBuniformsB	uniformedBunidentifiedBunidentifiableB
unicyclistBunicefBunhrcB	unheardofBunhealthilyB	unhappierB	unguardedBunfunnyBunfortunateBunformedBunforgettableB	unfoldingB
unfetteredBunfazedB
unfamiliarBunfairB
uneventfulBunevenBunescoB	unendorseBunencumberedB
uneducatedBuneditedBuneatenBuneasyBuneaseB	unearthedBunearnedBundyingBundueB	undressesB	undressedBundocucarevanBundiesBundetonatedB
undeterredBundetectableBundesignatedB	underwoodBunderutilizedB
undertonesBundertheradarBundertakersB
undertakerB
understudyB
understoodB	undersoldBunderservedBunderscoresB
underratedBunderpublicizedBunderprotectiveB
underpavedB
underpantsB	underpaidB
underneathB
underlyingB
underlinedBunderinvestsBunderfundedBunderestimatedBunderestimateBunderdevelopedB
underbellyBunder70B	uncuffingB
uncouplingBuncooperativeBuncontrollableBuncomprehendinglyB	uncheckedB	unchartedBunchallengedBuncashedBuncaringB
uncapturedBunbornB
unblinkingBunbeltedBunbeleafablyBunbefittingB
unbearablyB
unbalancedBunavoidableBunaskedB
unapprovedBunapologeticBunannouncedB	unanimousB
unamericanBunambitiousBumpquaBumpiresBumlautB	umbilicalBumBulyssesB
ultrasoundBultrasnugglyB	ultrarichBultraresistantBultrarealisticB	ultrarareBultraorthodoxB	ultracoolBultrachurchBultraB	ultimatumB
ultimatelyBulteriorBultaBulcersB
ulcerativeBulbrichtballetBuksBukrainesBuighurBuhohBuhaulBuglificationBughBugandaBugaasoBufoBufcBudpateBudonisBudcBudaysBucsfBuclaBucBubsBuboatBuberizeBuawBuaeBuB
tyrannicalBtypographicalBtypoBtypistsB	typicallyBtyphoonBtypefaceBtype2BtylenolBtykaBtygaBtycoonBtyBtwoyearBtwotierB	twothirdsBtwospeedBtwopartyBtwomoresongsB	twoheadedBtwogenerationBtwoferBtwofacedBtwocassetteBtwitchBtwinklesBtwinkleBtwinkBtwingeBtwineBtwilightBtwigsBtwelfthgradeB
tweetstormBtweedBtweakBtwangBtvnewsBtuxedoBtutusBtutoringBtuskegeeBtushBturtlesBturretmountedBturretBturnkeyBturnipsBturdsB	turbulentBturboBturbansBturbanB
tupperwareBtunisiaBtundraBtumsBtummyBtumblrBtumblingB
tumbleweedBtumblesBtumbleBtulipBtugsBtuftsBtuckingBtuberculosisBtubbyB	tsarnaevsBtsBtrybeatingmelightlyBtruthfulBtruthersBtrutherBtrustworthyBtrustsBtrustingB
trumpzillaB
trumpstyleBtrumprussiaB
trumpputinBtrumpnetanyahuBtrumpmuellerBtrumplethinskinB	trumplandBtrumpistB	trumpismoBtrumpismB	trumphairBtrumpfriendlyBtrumpetsBtrumpetB
trumpcomeyB
trumpcaresB
trumpbeastBtrumpappointedBtrumpacandyBtruelifeBtruckingBtrousersBtroublemakingBtroublemakersBtrottersBtrophiesBtroncBtrollingBtrolleyBtroianB
troglodyteBtrmpBtrivialBtriumphantlyB
triumphantB	triumphalBtriumphBtrippedBtripledeckerBtripledBtriosBtrimmerB	trimesterBtrimB
triggeringBtrigBtrifectaBtricorneredBtrickortreatersBtrickledBtrickingBtrickedBtribecaB	tribalismB
triangularBtriangleBtrialsBtriadBtreyBtrexBtresspasserBtresselBtrespassingBtrendyBtrendingB
trenchcoatB
tremendousBtrekkiesBtreetopBtreesusBtrebeksBtreatyBtreatingyoulikeanadultBtreatiesBtreatable—yetB	treasuresBtreadsBtreadingBtravoltaBtravisB
travelsizeBtraveledBtrashtalkingBtrashesBtrapsBtrappingBtrapezeBtransylvaniaBtransvestiteBtranssexualBtransplantingBtranspacificBtransmutingB
transmutesBtransmittedBtransmitBtranslucentB
translatedBtransjourneyBtransitionrelatedBtransitioningBtransitionalBtransgressionsBtransgenderismBtransfusionBtransformerBtransformationsB	transfersBtransferBtransfatBtranscriptsBtranscendenceBtransactionsBtransactionBtraitorBtraitB
trainwreckBtrainspottingBtrailsBtrailblazingBtrailblazersB
tragicomicB	tragediesBtrafficstopBtraditionallyBtradesBtraderBtradeinBtractorsBtractorpullBtractionBtrackingBtrB
toyotathonBtoyotaB
toxicwasteBtownspersonB	townshendBtoweringBtoveBtoutingBtoutBtoughestBtougherB
touchstoneB	touchdownBtoucanBtotesBtotalledBtoshBtorvaldsB	torturingBtorturesBtortillaBtortB
torrentingB
torrentialBtorrentBtorogersteinBtoroBtormundsBtormundB	tormentorBtoreBtorchlitB	topsecretBtopplingBtoppedBtopicsBtopekaBtootingBtoomeyBtoolbarBtoobinBtoobaBtonywinningBtontoBtonkinBtongaBtomáskeegansB	tomorrowsBtommB	tombstoneBtombsBtomboysBtomatoesBtollfreeBtolerateBtokenBtokeBtoiletsBtoiletpaperBtogosBtoffeeBtoetotoeBtoesBtoeingBtoeBtobaccoindustryBtoastersBtoahBtoadsBtoadBtntBtmzBtlcsBtkBtjBtittiesonglassBtitlesBtitheBtitaniumBtisBtiresB
tirelesslyBtiradeBtiqBtiptonB	tiptoeingBtippingBtippedBtipoffB	tinkeringBtingleBtineB	tinderboxB	timothéeBtimewastingBtimewastersB
timewarnerBtimetravelingB	timelinesBtimelessB
timelapsesBtimberwolvesBtimberlakesB	timbalandBtiltingBtiltBtilsenBtilesBtighterBtightenBtiffanyBtiffaniBtidesBtidalB	tictactoeBticketedB	tickborneBtiaraB	tiananmenBtiBthwartsBthwartedBthusBthurmondBthunderBthumbsupBthugBthrustB	throwbackBthrottleBthroatclearerB	thresholdBthreeyearoldB	threetierB	threeringB	threemoonB
threemonthBthreefourthsBthreedecadeBthreeandahalfminuteB
threealarmBthreadsBthreadB
thousandthB	thousandaB
thoroughlyBthornyBthorntonBthoraxBthongBthonesBthomBthirtysomethingB
thirdroundBthirdpersonBthirddegreeBthinnestB	thinktankBthinkersB	thinkableBthimbleB	thiessensBthielBthicksBthickesBthe…BtherouxBthermosensingB	therapiesB	theoristsBtheoristBtheologyBtheologicalBtheodoreBthemerestaurantB	themelessBthematicallyBtheirsBthedaBtheblazeBthawBthanosBthankyouBthanksgivingsB
thankfullyBthangBthandieBthaliaBthalerBthailandBtffsBtextureBtextersB	textbooksB
testlaunchB
testifyingB	testfiresB
testdrivenB	terrorizeBterroralertBterroistB	territoryB	terrifiesB
terrariumsB	terminateB	terminalsB
terminallyBteriB	terabytesBtequilaBtenuredBtenureBtenuousBtentsB	tentativeBtensileBtensB
tennesseesBtenisonBtendonBtenacityBtempurpedicBtempurapedicBtemptingBtemplateBtempestBtemperBtellersBtelevisionsBtelevisaB
teleportedB	telemundoBtelemedicineBtelemarketersBtelemarketerBtelekineticB	telegraphBtelecastBteeupBteetersBteeterBteemingBtedioustoreadBtediousBtechviewBtechsupportBtechnophileBtechnonlogyBtechnologiesBtechnoBtechnicolorBtechniciansB	technicalBtechieBteasersBtearlessBteapartyBteamworkBteamnocancerB	teamloganBtealB	teachingsBtbsBtbozBtbilisiB
tbfoodsllcBtaxpayerfundedBtaxidermiedBtaxfreeBtaxedBtavistdB
taufatofuaBtattooedB
tattletaleBtatteredBtattedBtateBtastingsBtastersBtasksB	taskforceBtaskedBtaseredBtaserBtartanBtarpBtarotBtaroB	tarnishedBtarmacBtariffBtardyBtarantinostyleB	tarantinoBtaranaBtaraBtappersBtapesBtantricBtantalizingBtanningBtankersBtaniaBtangoBtangledBtangBtamraBtampersBtampaxBtampasBtamiBtamerBtamedBtameB
tamagotchiBtallestBtallerBtalkshowguestBtalkedBtalismanBtalentsBtalcBtakedownBtaiwansBtaiwanesemadeBtailspinBtailorsBtailingBtaftB	taekwondoBtaeBtacticalBtacticBtackedBtacitBtabooBtabloidBtabletopB	tablesideBtabascoBtabBt1BsørvágsvatnBszaB
systematicBsyrupyBsyrupsB	syntheticBsynonymsB	syndicateB
synagoguesBsymptomsBsymptomaticBsymbolsB	symbolismBsymantecBsylvilleB	sylvesterBsyllableBsykesBsydneyBswordBswoopBswooningBswollenBswizzBswivelBswitzerlandBswingingBswimwearBswimsBswimmersBswiftlyBsweptBswellingBswelledBswellBsweetieBsweetest farewellBsweetestBsweetensBsweepstakesBsweepersBsweeneyBswedesBsweatyBsweatstaindatingBsweatsB
sweatpantsB	sweatiestBswarmsBswapBswankBswanBswamp”B	swallowedBswaggerBsvuBsvpBsuzanneBsuvsB
sustenanceB
sustainingB	sustainedBsustainablyBsuspiciouslookingB
suspendersB	surroundsBsurroundingsB
surrendersBsurrenderingB	surrenderB
surrealityBsurrealBsurplusB	surpassedBsurmiseBsurgingB	surgeriesBsurgedBsurfbortB	surfboardBsurfacesBsurfacedB	surchargeBsuppositoryB
supposedlyB
supportiveBsupporterbuiltB	supplyingB	suppliersBsuppliedBsuppleBsupervolcanoBsupervillainBsuperstoresB
superstoreBsuperstitionB
superstarsBsuperstainsB
supersizedB	superrmanB	supernovaBsupernaturalB	supermoonBsupermonsterB
supermodelBsupermarketsB	superiorsBsuperiorityBsuperheroesB
supergroupB	supergirlBsuperfriendlyB	superfoodBsuperficialB	superfastBsuperdelegatesBsuperdelegateB	superbugsBsuperbugBsuperblyBsunrobesBsunniBsunmineB	sunkissedBsungBsundownBsundaysBsunchipsBsunblockB
sunbathingBsummonedB
summertimeB
summerslamBsummersBsummedBsummaBsultryBsullenbergerBsullenBsuitorBsuiteBsuitcaseclutchingBsuitableBsuicide assistance dogsBsuicidesBsuicidegirlscomBsuicidalB
suggestiveB
suggestingBsugeBsugaryBsuffusedB
suffragistBsuffrageBsufficientlyBsuffererBsufferedBsudokuBsuctionBsuckingBsuccumbsB	succulentBsuccubusB	successorB	successesB	subwooferBsubwaysBsubvertBsuburbsBsuburbaniteBsuburbB	subtitlesBsubtextB	subtemberBsubstantialBsubsidyBsubsidizingB	subsidiesB
subsidiaryBsubscriptionbasedBsubscribingB	subpoenasBsubpoenaB
suborbitalB
submittingBsubmitB
subminimumB
subjectiveB	subjectedBsubdueBsubdenominationBsuavityBsuarezsBsuarezBsuadeBstyxBstylinB
stuyvesantBsturgeonB	stupidityB
stupendousBstuntmanBstuntinBstumpingBstumpedBstumbledBstumbleBstuffingB	stuffedupBstudiedBstudenttutorBstuckupBstubbornBstrzokBstrumB	struggledBstrudelBstructurallyB	strongmanBstrongarmedBstromBstrollBstriveBstridesBstrideBstrewnB	stretcherB	stretchedB	stressingB	stressfulB
stressfestBstrengthenedB
strengthenBstreepsB
streamlineBstreamerBstreaksB	streakingBstreakerBstrategistsBstrataBstrapsB	strappingBstrappedBstrapB	strangestBstrangBstraleyBstraitsBstrainBstraighttovideoBstraightenedB
stragglersBstoveBstoutB	stouffersB
stoudemireBstosselBstormtroopersBstormingBstormiBstorkholdersBstoringBstoriedB
stoplightsB	stoplightBstopandfriskBstonewallingB	stonewallBstonersB
stonehengeBstoneheartedB	stonecoldBstompingBstompBstomachsBstokingBstokesBstokedBstocksBstockpilingB
stockphotoB	stockingsBstitchesBstitchedBstintBstinkyBstingingBstineBstimulationBstilltwitchingB	stillbornB
stillbirthB
stigmatizeBstigmasBstifleBstiffedBstfuBstewmanBstewartsBstevesBsternlyB
sterilizedB
stereotypeBstepsonsBstepsonBsteppedB
stepmotherBstepmomsBstephonB
stepfatherBstepdadB
stepbystepBstenbergBsteinsBsteinemBsteelersBsteeleBstearnsBsteamedBstealthB	steaks™BsteaksBsteadyBstdBstaywokeandvoteB
stayathomeB
statuettesBstatsBstatisticallyBstatisticalBstathamB	statewideB	statehoodBstatedBstarvesBstarveB
starvationBstart—andBstarstuddedB
starstruckBstarspangledBstarredBstarnesBstarletviewerBstarletsBstarksBstargateB
starfuckerB	starcraftBstarchesBstarchedBstaplersBstaplerB
standpointBstandoutBstandardizedBstammersBstalloneBstallionBstalledBstalksBstalkerBstalkedB	stalemateB
stairwellsB	staircaseBstainremovingBstagingBstaggersBstagerBstacyBstacksBstaceyBstabsB	stabilityBssrisBsrideviBsrBsquirtsB	squirrelsBsquirmBsquigglyBsquidB	squealingBsqueakyBsqueaksB	squattersBsquashBsqualidBsquadsBspurlockBspurBsprungBspruceBsproutsBsprinterBsprintB	sprinklesB
sprinklersB	springingBspringerBsprigBspreadeagleBspraysBspraypaintedBsprayingBsprayedBspratlysBsprainedBspousesBspotlightingBspotlessBsportutilityBsportswriterB
sportswearB
sportsteamBsportsrelatedBsportscenterBsporesBspoonsBspooktacularB	spookiestBspongeBspokespersonBspokesmodelsBsplurgedBsplitsBsplinterBsplicingBsplashesBspittleBspittingBspitBspirituallyBspiritualityBspireBspiraledBspineBspinachBspilmanBspilledBspikyBspikesBspiethBspielberggatesBspielBspiegelBspiderwomanBspidersBspewsB
spermicideBspellbindingB
speedwagonB
speedlimitB	speedboatBspeechwritingBspeechwriterBspedBspectralB
spectatorsB	specificsBspecialneedsBspecialistsB	speakeasyBspazioBspawnsBspatulaBsparrowBsparklyB	sparklingBsparkleBsparedBspainsB	spaghettiBspacingBspacexB	spacetimeBspacethemedB	spaceportB	spacedoutBspaBsoxBsowsBsowBsovietBsouvenirBsouthwesternBsouthpawBsouthernersBsoutheasternB	southeastBsouthcarolinaravagedBsouterBsouredBsourBsoundtracksB
soundtrackBsoundandfurywordpresscomB	soulcycleBsoulcrushingB	sotomayorBsothebysBsorkinBsorenessBsorelyBsordidBsoppingBsoothesBsootheBsoontobeauditedBsookiesBsonysBsontagBsonomasBsonomaB	soninlawsBsongwritersBsonataBsonarBsomsB	sommelierBsometimesgrossBsometimeB
somethingsBsomberBsomalianBsolvingBsolversBsolventsBsolowayBsolomonsBsolituteB
solidifiesBsolidersB	solicitorBsolarpoweredBsoiréeBsoftballBsofasBsofaB	sodomizedBsockBsociologistsBsocietysBsocializingB	socialismBsocalBsobsBsoberedBsoapyBsoaksBsoakingBsoakBsnuggleBsnuckBsnubsBsnubbedBsnubB	snowstormBsnowsBsnowiestBsnowedBsnowboardingBsnowboardersBsnowboarderBsnowballBsnoringBsnoopyBsnoopB	snitchingBsnitchBsniffBsnicketBsneezeBsneersB	sneakiestBsneakBsnazzyB	snatchingBsnatchedBsnarlsBsnaredB	snapshotsBsnappingBsnapperBsnappedBsnapeBsnapchattingB	snapchatsBsnapcashBsnakesBsnakepitB	snakebiteBsnailBsnagBsnackerBsmutBsmugglesB	smugglersBsmuggleBsmudgedBsmooveBsmollettB
smolderingBsmokyBsmokinBsmokesBsmokefilledBsmokedBsmittenB
smithereenBsmirksBsmgBsmeltB
smellalikeBsmbsB
smatteringBsmashB
smartwatchBsmartphonesBsmartphonecarryingB	smartnessBsmartestB	smalltalkB
smallspaceBsmallpoxBsmallestB	smallclubBsmackedBslutsBslushingBslushieBslushBslurpsBslumsBsluggishBsluggerB
slugeatingBslugB
slowmotionBsloveniaB	slovakiasBslotsBslothBsloshedBsloppyBsloppilyBslomoBslogansBsloganBslobberyBslobBslittingBslitsBslithersBslitBslimyBslimmerBslimeB	slightestBslidesBslickestBslickerBslicesBslenderBsleimanBsleevesBsleeverollingupB	sleepoverBsleepinducingBsleepdeprivedB	sleepawayBsleekestBsleekBsledBsleazyBsleaterkinneyBslayingsBslayedBslawBslavinB
slaughtersB	slaughterB	slatheredBslaterBslatedBslashingBslashesBslashBslapsBslappyBslappingBslantsBslangBslagerBslackerBslackBslabBslaB	skywriterB	skyrocketBskypeBskylineBskylightBskylaB	skydivingBskullfuckingB
skitteringBskisBskirmishBskipsBskinematographyBskincareBskimpBskimmingBskimmedBskimBskillBskiingBskierBskidBskgBskewersBsketchedBskepticsBskepticBskeeballB	skedaddleBskatingBskateboarderBsizzleBsizemoreBsixyearBsixtyBsixthgradersBsixthgraderB
sixthgradeBsittinBsitdownBsitcomsBsitarBsistineBsisterinlawBsisiBsisBsirisBsirenBsiredBsireBsippingBsinoamericanBsinisterB
singlepuffBsinglepayerBsinglegenderBsingleengineBsinghBsingersB
singaporesB	singalongBsinfulBsineadBsinatrasBsinaiBsinB
simulationB	simulatesBsimulateBsimpsonsfamilyB
simpletonsB	simperingB
silverwareBsilliestBsilliesBsillierBsilkyBsilkBsilencedBsilasBsignifyB	signifierBsignificantlyBsignificantB	signaramaBsignageBsigmaBsightsB	sightingsBsightingBsiegesBsiegelBsidneyBsidetrackedBsides”BsideshowB	sidelinesB	sidelinedB
sidebysideBsidebarBsickerBsickensBsicilyBsicilianBsicarioBsiberianBsiberiaBsiasBshōgunBshuttlecocksBshuttlecockBshuttersBshutterBshumpertBshuiB
shudderingB	shruggingBshruggedBshrugBshroudedB	shriveledBshrinkwrappedBshrieksBshrekBshredyourexBshredderBshowrunnersB
showrunnerBshowoffBshowmustgoonB	showeringBshoweredB	shovelingBshoutoutBshouldveB	shouldersBshotforshotB	shorttermBshortlyB	shortlistB	shorthandB	shortfallBshortensB	shortenedBshortcutBshortcomingsBshopliftersB
shopkeeperB
shondalandBshondaBshoeboxBshoddyBshocksBshockerBshkrelisBshiversBshivaB	shittiestBshittierBshitshowBshitloadB	shitfacedBshitcoveredBshirleyBshipyardBshippingB	shipmentsBshineBshimabukuroBshiitesBshiiteBshiftedBshermanBshepherdBshepBsheltersBshellshockedBshelfieBshehulkBsheetsBsheeransBsheepishBsheedyBshedsBsheddBshawnBshawlBshawkatBshawBshavingBshavenBshavedBshatterBshatnerBsharpieBsharperBsharonsB	sharewareBshareholdazB	shapewearBshapelyBshanBshamingBshamelesslyB
shamebasedBshamblesB	shamanismBshallowBshallBshaleBshakurBshakeupBshakespeareBshakersBshaggysBshagBshaftBshadowyBshadiBsgtBsg1BseymoursB
seychellesBsexuallytransmittedBsextraffickingBsextonBsextingBsextBsexpotBsexpositiveB	sexlikingBsewsBsewersB	sevign̈yBseversBseveringB	severanceB
seventhdayBsetupBsettlerBsettledBsettingsBsetlistBsethiBsetbackBsertaBsermonBserifB	serengetiBsereneBserchBserbianBserbiaBsequoiaBsequinsB
septupletsBseptumBseppBsephorasB
separationBseoulB
sentimentsB	sentimentBsentientBsensorsBsenselessnessBsenseisBsensationalBsensBseniorcenterB	senguptasB
senatorialBseminudeBseminarBsemiautomaticBsemesterBsemenBsellerBseligBselftalkBselfstorageBselfservingBselfrighteousB	selfridgeBselfrespectingBselfmutilatingBselfmadeBselfloveBselflotioningBselfishBselfinflictedBselfindulgentBselfimposedBselfimmolationBselfiehatingBselfhoodB
selfhelpedBselffinanceBselfemploymentBselfdirectedBselfdescribedBselfcriticismBselfcontrolB
selfbuyingBselfassuringBselfaffirmationsBselfabsorbencyBseleneBselectivelyeditedBselectivelyB	selectingBselectedBseizuresBseizedBseignerBsegueBsegregationB	segmentedBsegmentBsegelB
seethroughBseemingBseemedBseekersB	seductionBsedererB	sedentaryBsecularB	sectarianBsectBsecretliftingB	secretionBsecretesBsecretarygeneralBsecretariesBsecrecyBsecondplaceBsecondpersonBsecondlargestB	secondkegBsecondguessingBsecondgraderBsecondclassBsecludedB	sebastianB	seatmatesB	seatbacksBseasonedBsearingBsearchlightBsearBsealyBsealsBsealedBseafoodBseabirdBseBscumB
sculpturesBsculptorBscullyBscrutinizedBscrubsBscrollsBscriptsBscriptedBscrewsBscrewedBscreenwritingBscreenedBscreechBscrawledB
scratchingB	scratchesB	scratchedB
scrappydooBscrabblethemedBscrabbleBscowlsBscouringBscourgeBscottsBscotsmanBscorsoneBscorpionBscoredB	scorecardB	scorchingBscorchedearthBscootersBscootBscoopsBscoldsB	sclerosisBscientologistBscientificallyBsciencefictionBsciencebasedBsciencebackedBschwartzBschulzB	schreiberB
schoolyardB	schoolingBschoolgirlsB
schoolgirlBschoolchildrenBschoolboardBschollyBscholarshipsBscholarBschockBschnookB	schneiderB
schnauzersB	schmoozesBschmittBschizophrenicB	schillingBschillerBschiffB	schiefferBschiavosBschemesBschemeB	scheduledBsceneryB
scavengersB
scatteringBscattergoriesBscaryassBscarvesBscarlettBscariestBscarierBscarfaceB
scaramucciBscansBscannerBscandinaviaB
scandalousBscampisBscammingBscalpsBscalperBscalpelsBscaledBscaleBscaldingBscBsbarroBsayingsBsaydoB
saxophonesBsawfishBsawedBsavoringBsavoredBsaviorBsaverBsavannahBsavagesB	sauvignonBsauronBsaundersBsaudiuaeBsaucespatterB	satyarthiBsatyajitBsaturnsBsatisfactionBsatireBsatinB
satellitesB	satanistsBsassBsashasBsarinB	sardinianBsarcasticallyBsarawaksBsarandonBsaraBsapphireBsanzB
santegidioBsantanaBsantBsanrioBsanityB	sanitizerBsanfordsBsanfordBsandsBsandlersB	sandersesB	sandboxesBsandbagsBsanctuariesBsamuelBsamsungsBsamsBsamplesBsamplerBsammyBsamiraBsamedayB	samaritanB	salvationB
salvadoranB	saltnpepaBsaltlessBsaltinesBsaltassaultBsalonsBsallyB	salivatesBsalivaBsaldivaBsaldanaBsalamandersBsalaamBsaintsBsailsBsailedBsailboatBsailBsahmBsagerBsaganBsagaBsaffronBsafetyconsciousBsafariBsadiqBsaddleBsaddestlookingBsadderB
sacrificesBsackingBsabraB	sabotagedB
sabertoothBsaberrattlingBsBrzasBryeBrwandanBrwandaBruttingBruthlessBrussianiranianBrussialinkedBrussetBrussellsBrushedBrushdieBrupturedBruptureBrupeeBrupaulBrunofthemillBrunoffBrundownBrunawaysB
rumspringaB	rumsfeldsBrumpledBrumoursBrumblingBrumbleBrumBrulingsBruizsBrugsBruffaloBrudysBrudestBrudderBruddB	ruckeyserBruckerBrubiksBrubberBrubBrratedBroyceB	royaltiesBroxaneBrowsBrowlingsBrowlandBrowdyBrowboatBroversBroutesBrousingBroundingBroundedBroundaboutsB
roundaboutBrouletteBrouhaniBroughlyBrougesBroudupBrotundBrottenBrotisseriesBrotatesBrotatedBrotaryBrosyBrosterBrossiniBrossiBrossdaleBroskeBroshBrosettaBrosesBroseburgBroscoesBrosalynnBrosaBroryBropedBropeBrootingBrooneysBrooneyBroomieBrooferBronnieBroncoBronaldosBromperBrommelBromesBromanticizedBromanticallyBromanianBromanceBrollupsBrolloutBrollercoasterB
rollerballBrollbackBrolexBroleplayingBrokerBroilsBroemBrodgersBrodeoBrodentsBrodentBrodeBrockwellB
rocksteadyBrockstarBrockrunBrockfordBrocketteB	rocketmanBrockersBrockefellerBrockedBrockatanskyBrobustBrobsB
robotsnakeBrobotrixBrobinsonBrobinsBrobesBrobedBrobeBrobbinsBrobbinBrobberBroastBroaredBroamBroadsterB
roadblocksBroachesBroachBrncsBrmhBrlBrizBriyadhB	riverboatBriveraBritzBritterBritesBrisottoBrisheqBrisenBripponBripaB	rinkydinkBrinkinsBrinkB
ringleaderBringerBrileyBrigorousB	rightwingBrighttoworkBrightistB
rightfullyBrightfulBriggingBrigbyBrigBriftBriflesBrifleBrieslingBridiculousexcusestostayhomeB	ridiculesBridgeBridersBridehailingBriddledBriddleBricolaBricksBrickmanBricketyBrichrathBrichlyBrichestBricesBriaaBrhythmBrhysBrhymezonecomBrhymeBrhubarbBrhodyBrhinosB
rhinocerosBrhimesBrhapsodyBrfkBrezonedBrezaianBrezaBreysBrexsB	rewritingBreworkedBrewindB
rewatchingB	revulsionBrevsB	revolvingB	revolversBrevokingBrevlonBrevivingBrevivesBrevitalizedBrevisitsB
revisitingB	revisitedB	revisionsBrevisesBrevisB	reviewingBreviewerB	reversingBreversesBreverseengineerBreverendBreverberatesBreverberateBrevenantBrevelersB
revelationBrevelBrevampsBreubenBretweetsB
retweetingBretweetBretryBretroactivelyB	retrievesB
retrieversB	retrieverB	retrievedBretributionB
retrainingBretiringBrethinksBrethinkB	retentionBretakesBretakeBretainsB	retainingBretainerBretailerBretailBresuscitatedBresurrectionB
resurgenceB
resurfacesB	restroomsBrestroomB	restrictsBrestrainingB
restrainedBrestorativeBrestocksBrestedBrestaurateurBrestartsBrestartBresponsiblyBresourcefulB	resortingB	resolvingBresolvedBresoluteB	resistantBresighBresidencethemedBresidedBreshootBreshapesBreshapeBresettleBresetBreserveBreservationBresentsB	resentfulB
resemblingB	resemblesB
researchinB
researcherBrescuingBrescuerBrescindsB
rescindingB	rescindedBrescindBrerunB	rereleaseBrequirementsB
requestingB	requestedBrepsB
reproducedBreprisesB
reprimandsBreprimandedBreprieveB
repressingBrepressBrepresentingBrepresentedBreprehensiblyBreprehensibleBrepostedBreplicaBreplaceableBrepercussionsB	repellantBrepealsB	repairingB	reopeningBreopenedBreoBrentsBrentfreeBrentboysBrentboyBrentalsB	renovatesBrenovateB
renouncingBrenominatesBrenoareaBrenoBrenewingBrenewBrenegotiationBrenegotiateB
rendezvousBrendersBrenamingBrenamesBrenameBrenalBrenaissancestyleBrenB
remotenessBremnickBremnantBremixxxxB	remissionB
reminiscesB	remingtonB	remindingB
rembrandtsBremaxB
remasteredBrelyingB	relocatesBrelivingB
relinquishBreligionthemedBreligionmadeBrelicBrelianceBrelentlesslyB
relentlessBrelaxingB
relaxationBrelaxB
relaunchesB
relativityB	relatableBrelapseB	relabeledBrejuvenatesBrejoiceBreiserBreinvestB
reinventedBreintegrationB	reinstateBreinhartB
reinforcinB
reinforcesB
reinforcedBreimpregnatesBreimposeB
reimaginesBreigniteBreignBreidsBrehiresB	rehearsedB	rehearsalBregurgitatingB
regulatorsB
regulatingBregulateB
regrettingB	regrettedBregrettableBregretfullyB	regretfulBregisteringB	regionalsBregimenB
regimeheldBreggieB
regardlessBregalesBregalBregainBrefuteBrefusalBrefundsBrefsBrefrainB	reformingB	reformersBreformedBrefocusBrefinancingB	refillingBreffedBreevesBreenergizedB
reenergizeBreenactsB	reenactorBreeksBreekBreefsBreeceB	redundantB
redundancyB
reductionsBreducesBredstateBredskinsBredmayneBredistributionBrediscoversB
rediscoverBredheadBredfacedBredeyedBredesignBredenbacherBredefinitionB	redefinesBredeemsBredeemBreddiwipBreddiBreddBredboxBredactedBredaBrecycledBrecycleBrecyclablesBrecutBrecusesBrecusalB	recurringB
recruitingB	recruitedBrecreationalabortionB
recreationB
recreatingBrecreateBrecoupB
recountingBrecordstoreBrecordsettingB
recordingsB
recordhighBrecorderBrecordedBreconstructionBreconsidersBreconsideredB
reconsiderBreconfirmationB	recommitsBrecommendingBrecognizableBreclinerBreclineB
reclassifyBreclaimsBreclaimBreckonBrecklessdrivingBreciteBreciprocityB	recessiveBrecessesBreceptionistsBreceives theB
receivableBreceiptsB	recastingB	recappingBrecappedB	recanvassBrebuttalBrebukesBrebukeBrebuffsBreboundsBrebirthB	rebellionB	rebelheldBrebateBreauthorizesB
reassuringB	reassuredBreassureBreassurancesB
rearrestedBrearrangingB
rearrangedB	reappliesB	reappearsBreapBreamsBrealtimeBrealnessBreallyweirdlookingBrealistsBrealisticallyB
realestateB	reaganismBreadjustmentsBreadinBreachingBreabsorbBrbgformerrickgarlandBrbgBrbBrazzledazzleB	razorthinBrazorbladefingeredBrazaB	raytheonsBraytheonBraysBrawlingsblakeBravineBravensBrattlesnakesBrattlesBrattledBratonBratburnB	raspberryBraspberriesBrashidaBrarelyBraptureBrapsBrappersBrapidBraphaelBrapaportBraoulBraoB	ransackedBransackBrankedBrangersBrandstadBrandsBrandosBrancherBranchBramsaysBramsayBrampsBrampantBrampBramosB	ramblingsBramblingBrambleBramarleyBramBrallyingBrakingBrakeBraisinsB	raisinetsBraisinBraiserB
rainstormsBrainingBrainfallBrainbowBrailwaysBrailBraidingBraiderBragsdaleBragsBragnarBragBraftingBraftersBrafflingBraffleBraffiBraesBradiusBradishB
radioheadsBradioactiveB	radicallyBradicalizedBradicalizationBradiantB	radcliffeBracksBraciestB
racializedBracecarBraccoonBrabbitsBrabbinicBraBquotingBquixoteBquiverBquittingBquirksBquintanillasBquinonesBquinoaBquinnBquincyBquinceañeraBquiltingBquillBquieterBquickerBquickdissolvingBqueueBquestsBquestionableBquesoBquentinBquenchBquelledB	queercoreBquashesBquashBquartersBquantityBquantitativeBquanticoBqualmsB	qualitiesBqualificationBquakeBquaidBquadrupletsB
quadruplesB	quadrupleBquadriscuitsBquaaludetakingB	quaaludesBqtipBqatariBqaddafisBqBpythonsBpyrotechnicsBpyramidsBpwnageBpvcBpuzzlesBpuzzledBpuzoBputtyBpussyhatwearingBpushyBpushierBpushaBpursuesBpursuedBpursesBpurringBpuristsBpurinaBpurgesBpurgedBpurgeB	purchasedBpuppiesBpuppetsBpupalBpunxsutawneyBpuntBpunniestBpunksBpunishmentsBpunisherB
punishableBpunishBpunditsBpunctuationBpunctualityBpumpingBpumpedupBpumpedBpummelBpulverizingBpulsingBpulsesB	pulsatingBpulpBpulloutBpukeBpujolsBpugsBpugonpugBpuffinsB
pufferfishBpufferBpudgyBpuddlesBpuckB	publishedBpublishBpublikBpublicspeakingBpublicsBpublickB
publicistsBpublicationsBpublicationB	pubescentBpubesBpubBptsdBptiBptaBptBpsylandorianB	psychoticB	psychosisBpsychosexualBpsychicsBpsychicphonelineB
psychiatryBpsychiatricBpssyBpsstB	pseudonymBps4BpryorBproxiesBprowlingBprowhiteBprovolleyballB
provisionsB	provisionBprovinceB
providenceB	provencesBprotrumpB	prototypeB	protocolsBprotocolBprotectsB
protectorsBprotectionismBprospectiveBprospectBprosettlementBprosecutionBprosecutingBproseB
prosandersBprorockB	proquicheB	proppedupBproppedBpropertyB
propertiesBpropelsBpropeciahandlingBpropeciaBpropBproofreaderBpronunciationB
pronouncesB
pronouncedBpronaziBpromptedBpromiscuousBprolongsBprolifeBprojectionsB	proisraelBproindependenceB	prohibitsBprohibitionBprohibitBprohateBproguncontrolBprogrammersBprogrammaticBprogayBprofumiBprofoundBprofitdrivenB
profitableBprofitabilityB	profilingBprofilesBprofiledB
proficientBprofessionalismB	professesB	professedBproducedBprodigyBproctoscopeBproctorBprocrastinationBprocrastinatingBproclamationB	prochoiceB
processorsB
processionB
processingB
proceduresB
probioticsB	probioticB	probationBprobabilityB	proactiveBprizesB	prizelessBpriyankaB
privilegedB	privilegeBpritzkerBprisonsB	priscillaBprioritizingBprioritizesB
prioritiesBpriorBprintwearingBprintsBprintondemandBprintingB
printedoutBprintedBprincipBprinceinspiredBprimerBprimatesBprimalB
priesthoodBpriceyBpreysBpreventativeBpreventableBprevailsBprevailB	prettiestBprettiesBpretrumpBpretentiousBpretendsBpreteenBpresuperBpresumptuousBprestateoftheunionBpressurizationB
pressuringBpressesBpresserBpresleyB	presidingBpresideBpreshowBpresexB	preserverB	presenterBpresentableB	prescribeBpreschoolersBpreschoolerB	presaucedBpreraphaeliteBpreproductionBpreppingBprepositionalBprepartyBpreparednessBprepaidB
prenuptialBpremovieBpremonitionBpremiumB	premieresBprematurityB	prematureB
premaritalBprelimsBprekBprejudicialB
prejudicesB
prejudicedBprehouseguestB
preholidayBprehabB	preferredB
preferenceBprefacesBprefacedBpreexistingBpreetBpreenactorsBpreemieBpreelectionBpredispositionBpredisposedBpredictionsB
predictingB	predictedBpredictableBpredawnBpredatorinchiefBpreconceptionsBprecludeB	precipiceBpreciousnessBprecedesB	precedentBprecededB
precariousB
prebioticsBpreapocalypticB	preaknessB	preachingBpreachesBpreacherBpreachedBpre2008BprayedBprattsBprattB	pranksterBprankedBpraiaBpragmatistsB	practicedBppmBpozBpowherBpowerlessnessB	powerlessBpoweringBpowercrazedBpowellBpowderedBpowderBpoutBpouredBpouponB
poundstoneBpoundingBpounceBpouchBpotomacBpotionBpotholeBpotentBpotemkinB	posttrumpB
postsecretB
postseasonBpostretirementB
postracialB
postrachelBpostprimaryBpostpregnancyB	postponedBpostplannedBpostmetB
postlondonBpostgayB
postcrisisBpostclimateBpostcardBpostbreakupB
postbernieB
postballetBpostageBpossibilitiesB	possessorBpositsB	positionsBpositBposhB
portugueseB
portrayingBportrayBportionsBportionB	portfolioBportentBportendsBportapottiesBportableBporpoiseBpornstarBpornographydesensitizedBpornographerBpornoBporkysB	porcelainBpopulationsBpopulargirlBpopsiclestickBpopsBpoprockBpoppingBpopperBpoppedBpopeyesBpopeyeB
popemobileBpopekillingBpopchartBpoorestBpoopingBpoopgangstaBpoolsideBpoolsBpoohsBpoohBpoochB	ponytailsBpontBpongBpondsB	ponderingBponchoBpompomBpompeosBpompeiiBpompBpolyamorousBpolosBpoloniumB	pollutersBpollutedBpolluteBpollenBpollackBpolkaB
politwoopsBpoliticizedBpolitelyB	polishingBpolicymakingBpolicingBpolicewomanBpolgreenB	polarizedBpolarizationBpolandBpolancoBpolackBpokingBpokeBpoiseB	pointlessBpogueBpoggeBpoehlersBpoeBpodsBpodiatristsBpodcastsB
podcastingB	podcasterBpocusBpocketsizedB
pocahontasBpoacherBpoachedBpoachBpoBplutosBplutocraticB	plussizedBpluralBplungingBplungedBplumpBplummetsBplummersBplumbingBplumberBplowingBplouffeBplotsB	plotholesBplinkoBplimptonBplethoraB	pleshetteBpleasesBpleasantriesBplazaB	playthingBplaytexB	playplaceBplayoffsB	playhouseBplaygroundsB	playfullyBplayfulB	plausibleBplatterBplattBplatosBplatoonBplasticwareB
plantationBplannersBplanethappyB	planetaryBplanetariumBplagiarizingB	pizzagateBpizzadeliveryBpixiesBpivotBpitzersBpittsburghsBpittsBpitsB	pitifullyBpitiesBpitchperfectBpitchesBpitcherB
pistachiosBpistachioeatingB	pistachioBpissyBpissingBpissesBpirolloBpiracyB	pipinghotB	pipelinesBpioneersBpintoBpintauroBpintBpinnedB	pinkertonBpiningBpinheadBpinesBpinchedBpimpingBpilsnerBpilotsBpilotoBpilotingBpillarsBpilgrimsBpilesBpikeBpikachuBpiggyBpiggiesBpigeonsBpieBpiersBpierrelouisB	pieeatingBpicturediscB	picketingBpicketBpiccoloBpicassoBphysicsB	physicistB
physiciansB
phrasebookB
photoshopsBphotographersBphotobomberBphonesexBphlegmproducersBphlegmBphishsBphishBphilsBphilosophicalBphillipsBphillieBphilharmonicBphilanthropyBphilanthropistBphilanderingBphilaeBphiladelphiatheatrecoBphifeB	pheromoneB
phenomenonBphdBphatBphasedB
pharmacistBphantomBphanaticBphanBphallusBphalanxBpgaBpfBpewterBpettysB
pettingzooBpettingB	petticoatBpettedB
petrifyingB
pesticidesBpestB	pessimismBpeshawarBpervertsBperuvianB
persuadingBperspectivesBpersonsB	personalsBperskyBpersistsBpersistenceBpersianBpersecutionB	perrielloBperpsBperpetuatingBperpetuatesBperpetratorsBperotBpernB	permittedBpermitBperminatorsB
permafrostBperkyBperksBperkinsBperjuryBperishBperiodicallyBperformativeBperfectforpackingB	perfectedBperchingBperchBperceiveBperateBpepsicoownedBpeppersprayingB	pepperoniB
peppermintB
pepperidgeBpeoplewatcherBpenthousingB	penthouseB	pentagramBpensionBpennsylvaniasBpennsylvanianBpennsBpenisshapedBpenisesB
penicillinBpenguinsB	penetrateBpendulumBpencilsB	penalizesB	penalizedBpenalizeBpelvicBpeltBpelléasBpelletsB	pekingeseBpeggBpeevedBpeetsBpeetB
peertopeerBpeerBpeelsBpeekingBpeekBpeeblesB
pedophiliaBpediatriciansBpedestriansBpederastBpeddlingBpectoralBpeanutBpeaksBpeakingBpeakedBpeakeBpeachesBpeachBpeacekeepersBpeaBpdBpcosBpazBpayrollBpaypalBpayneBpaycheckBpaxilBpawsomeBpawprintBpawnshopBpawnedBpawnBpawingB	pavlovianBpavesBpavelBpavedBpausedBpaunchBpaulyBpaulsonBpattingBpatternsBpatrolsB	patrolmenB
patriotismBpatriotB
patriarchyBpatheticallyBpaternosBpaternalizingBpatentsBpatdownsBpatakyB	patagoniaBpastyBpastryBpastriesBpastorparentBpastoralB	passportsBpassportBpassoverB	passivelyBpassionlessBpassionatelyBpassantBpasoBpasiónBpasB
partygoersBpartyadvocacyBparttimeBpartownershipBpartingBparticleBparticipationBparticipatedBparticipantBpartialbirthBparsleyBparoledBparlorBparlayBparishBparentteacherBparedesB	pardoningB	parasitesBparasiteB
paranormalBparanoiaB
paramedicsB	paramedicB
paralyzingBparalympianBparallelBparadoxBpapuaB
papertowelB	paparazzoBpapacyBpapB
pantywaistBpantyBpantoneB
pantomimedBpantBpansiesB	pansexualB	pansearedB	panoramicBpankajBpaniniBpanhandlersB
panhandlerBpanettaBpaneraBpanelsBpandersBpanderB	pamphletsBpamphletBpamBpaltrowsB	palmoliveBpalmarBpallingBpallidBpallbearersB
pallbearerB	palestineBpaleoBpalateB	palatableB	paladinosBpalabraBpairsBpaintersBpaintedoverB	paintballBpainstakingBpainlessBpaineBpage–drivenB	pageviewsBpageturnersBpagerBpadresBpaddysBpaddlersBpaddleboarderBpaddleboardBpacketsBpackersBpackagesBpackagedB
pacersheatBpacedBpabloBozzieBozthemedBozonedepletionBoxytocinmediatedBoxygenBoxyBoxicleanBoxenBowingBowenB	overwhelmBoveruseBovertureB	overtiredB
overthrownB	oversizedB	oversightBoversharingB	overridesBoverreportedBoverreactionBoverprivilegedBoverprescribeBoverpopulationB
overpayingB
overpassesBoverpassB	overlordsBoverlordBoverlookBoverlongBoverlapB	overjoyedBoverinflatedBoverhydratedBoverhuntingB	overheardBoverhearB	overhaulsB	overgrownB
overfundedBoverflowingBoverestimatingB
overeatingBovercrowdingBoverclassificationBovercameBoverburdenedBoverallsBovenBovarianB	outweighsBouttakesBoutstandingB
outsourcesB
outsourcedB
outsmartedBoutsmartBoutsizeB	outsidersBoutrightB
outrageousBoutperformingBoutperformedB	outpacingBoutpacesBoutofthisworldB
outofstateBoutofserviceBoutofbreathBoutofBoutnumberedBoutlivedBoutliveBoutliersB	outlawingBoutlastsBoutlastB	outlanderBoutkastBouterBoutcryBoutcroppingBoutcomesBoutcomeB	outburstsBoutburstBoutbreedingBoutbidsBoutbadBoutbackBoutagesBousterBoustedBounceBouijaBoughtBouchlessBottersBotBoswaldBostrichfarmB
ostracizedB
ostensiblyBossoffBossifiesBosmBoscarworthyB
oscarnightBorzabalB	orwellianBorvilleBorthodoxBorsonB	orphanageBorlandosBorkinBoriolesB	originateBorificesBorificeBorgyB	organizerB	organizedBorganizationalB	organismsBorganBorgBoreillysB
ordinationBordainedBorcsBorbitingBorbanB	orangutanBoptionedB	optimizedB
oppressingB	oppressedBoppressBopposesBopiuminspiredBopioidsBopioidravagedBophthalmologistB
operationsBoperatedB	openendedB	opencarryBopecBoozeBonthejobBonrushBonpointBonoB	onlookersB
onionman77B
oneyearoldBonestarBonesieBonesentenceBoneononeBonenightonlyB	onehitterB	onehandedBonehalfB	onedayoldB
onebedroomB	oneamonthB
oncologistBonceinalifetimeBoncecuteBonceadventurousBoncameraBonairBomranB
omniscientB
omnipotentB	omnigrainBomissionBominousBomiBomahaBolinskyBolinBoligarchB	oldpersonBoldiesBoldestfashionedBolBokieBokcupidBokaforBojBoitnbBointmentBoilyBoilmanBohsBogresBogreB	of colorBofftherailsBoffthebackofthedefenderB
offshorersB	offseasonB	offloadedBofflineB
officewideBofficesupplylovingBofficematesB	offermansBoffermanB	offendersBoffenderB	offcampusBoffbeatB
offbalanceBodysseyBodorlessBodoriteBodonnellB
oddsmakersBoctopusBoctogenarianBoctaviaBoconnorBocelotB	occupiersB
occupationB	occupantsBoccasionallyBocasiocortezB
ocallaghanBobtainsB	obtainingBobstructionistBobstacleBobsessivelyBobservedBobserveBobservationBobscuredB	obscenityBobsceneBobsB	obliviousBoblivionBobliteratesB	obligatedB	objectingBobjectedBobiwanB
obituariesBobeyingBobeyBobedientB	obedienceBobamathemedBobamaeraBoatsBoathsBoatesBoatBnyseBnyquilBnylonBnyfwBnyesBnycsBnycbBnyadBnwaBnwBnuxBnutsoB	nutsaritoBnutsackB
nutritiousB	nutritionBnutellaB
nutcrackerBnutB	nurturingBnurtureBnumericBnumbnessB	numbertwoBnumbB
nullifyingBnukingBnukeBnuggetsBnuggetBnugentBnuestraBnudgeBnuclearbombBnuclearattackBnuancesBnsyncsBnspw2017BnsndcdwfBnrabeholdenBnptBnphBnozzlesBnoxonBnoxiousBnowayBnovλB	novelistsBnovBnounsBnounB	not—sheB
notsosweetBnotsosubtleBnotmeBnotionsBnotifyB
noticeablyB
noticeableBnothingnessB
noteworthyBnotedBnotableBnostalgicallyB
nosebleedsB	nosebleedBnorwoodBnorwaysBnortonBnorthwesternBnorthsBnorthamBnorrisBnormallyB	normalityBnorfolkBnorahBnoradBnopeBnoodlesB	nonvotersBnonvoterBnontenuretrackB
nontargetsB	nonsuitedBnonsubscribersB
nonstarterB	nonsportsBnonsharkrelatedBnonsensicalB	nonracialB
nonprofitsB	nonpriestB
nonparentsB
nononsenseBnonminingrelatedB	nonjewishB	nonissuesBnoninterventionistsBnonindictedBnonhungoverBnonhumiliatingBnonhomosexualBnonguysBnonfarmBnonfantasticBnonexistentB	nondrowsyB
nondoucheyBnondogsBnondiscriminationBnondisclosureBnondenominationalB
nonclichéBnoncitizensBnonchristianB
nonchalantBnoncelebrityB
nonbindingB	nonanswerBnonalcoholicB
nonaerobicBnonadhesiveB	nominatesBnomakeupBnomBnolongercovertBnolanBnokillBnokiaBnoisecancelingBnoiseBnoirBnohitterBnofilterBnoelBnodsBnocheB	nobrainerBnobodiesBnobannowallBnoamBnoahsBnixonianBnittygrittyBnitroglycerinBnissinBnissanBnirvanaBnipseyBnipplesBninthBnintendoB	ninjalikeBninemontholdBnineinchBninehundredpoundBnimrudBnimoysBnillaBnikesB
nihilisticBnightingaleB	nightgownBnigeriaBnigelsBnigelBnifBnietoBnidetchBnicuBnicsBnicolasBnicksBnickelsBnicholsBnicholasBnicestBnicBniaBnhsBnhBnfcB	nextlevelB	nexplanonBnewversusoldBnewtonsB	newsweeksBnewsomB
newsletterBnewshourB	newsguildB	newsbriefBnewportBnewlydiscoveredBnewfoundB	newcomersBnewarksBneversmilingBneverbeforeseenBneverbeforeheardB
neutrogenaBneurotransmittersBneurosurgeonBneurosesBneuroscienceBneuronsB	neurologyBneurologistsBneurologicalB	networktvBnetworksanctionedBnetherlandsB
netanyahusBnestléBnesterBnessBnesBnervousenergyBnervesBnerdyBnepotistBnepotismB	neonazismBneoliberalismBneoconsBnemtsovBnemoBnellyBneillB
negotiatorBnegotiationB
negligibleB	negligentBneglectBnegative220BnegateB
needleswapBneedleexchangeBnedBnecroticBnecklaceB	necessityBnecessitiesBnecessarilyB
nearmissesBnearingBneardefB
neapolitanBneanderthalBncnoltesBncisBnbdBnbcsBnbasBnaïveB
navigationB	navigatesBnavigateBnavalBnavajoBnauseaBnaughtyBnaturistBnaturalizedBnativistBnationstateBnationbuildingBnationalismBnataleeB	nastinessBnastierBnassarsBnasrsBnasimBnashvillebasedBnashsBnashBnarrowsBnarratedB	narcoticsB
narcostateB
narcicystsBnarcanBnaptimeBnapsBnappyBnaplesBnapkinstuffedB
napastrongB	napaquakeBnapaBnanniesBnamblaBnakbaBnairBnailedB
nailbitingB	nailbiterBnagelBnachosupremacistBnachoBnaawpBmötleyB
mélisandeBmárquezBmyungBmytronBmythbustersB	mystifiedBmysterylandBmysteriouslyBmyspaceBmyrtleBmyroommateisweirdBmylantaBmyersBmuzlimB	mutilatedBmutedBmuteBmutantsBmusttryBmustseeB	mustreadsBmustknowB	musthavesBmusthaveBmusterBmustardB	mustachesB	mussoliniBmusicsBmushroomBmushBmuseveniBmuseBmurrowBmurphBmurkyB	murkowskiBmurilloBmuppetBmunstersBmunsterBmunnBmunizBmunicipalityB	municipalBmunichBmundaneBmundBmunchstrosityBmunchkinBmunchiesBmunchabilityBmunchB	mummifiedBmummenschanzBmumblingBmumblesBmumbaiB	mulvaneysBmulvaneyB	multitermBmultitaskingB	multitaskB
multispeedBmultiprongedBmultiplyB	multiplexB	multiplesBmultiplayerB
multipacksBmultimillionaireBmultimillionBmultiinstitutionalBmultidisciplinaryB
multicolorBmulletsBmuleingBmuhammedBmuggerB
muffulettaBmuffinBmudslingingB	mudslidesBmucusBmtvsBmtmBmsfBms804Bms13BmresBmpaaBmp3BmpB
mozzarellaBmozartBmoyersBmowingBmowerBmowedBmovingonB
moviegoersBmouthwateringBmouthsB	mouthfulsBmousyBmourdockBmoundB
motörheadBmottoBmotownsB	motorheadBmotorcyclistBmotivesBmotivationsB
motivatingBmotivateBmothertobabyBmotherinlawB
motherfkerBmothBmotelsBmosulsBmoststreamedBmossBmosquitoborneBmosesBmoselBmortonB
mortgagingBmortalBmorphBmoroccanBmorninBmormonsBmorenoBmorbidBmorassBmoranisBmoranBmoralsBmoralesBmooseB	moonwalksBmoonvesBmoonsBmoonlitB	moonlightBmoodyBmoochBmoocB	montrealsBmontrealB	monthlongB	monteithsBmonteithBmonteBmonstrouslyB	monstrousB	monsantosBmonroesBmonroeeBmonroeBmonopolizingBmonogrammedB
monogramedBmonogamyBmonoclewearingBmonocleBmonksBmonkeysBmonkBmonizB
monitoringB	monitoredBmoniqueBmongolB
moneypennyB
monetizingBmonetaryB
monemvasiaBmonarchyBmonarchBmonaghanBmonacoBmomtobeBmoltzvahBmoltingBmoltenBmolotovBmollyB
mollifyingBmollieB	molestistBmolestationproofBmolestBmoldingBmoldBmoinesBmohawkB	mohapatraBmohammedBmohammadBmohamedB	mogadishuBmodifyBmodiB	modernizeBmodernizationB	modernityB	moderatesBmodeledBmodclothBmockumentaryB	mockumentBmobydickBmobyBmobilizeBmmsBmmBmlksB
miévillesBmixtapeBmixesB	mixedraceBmixcdBmixalotsBmixalotBmitzvahBmittyBmitthewB
mitsubishiBmitesBmiterBmisusingBmisuseBmisunderstoodBmistyBmistsBmistreatingBmisterBmisspokeB	misspeaksBmissionsB	mispimpedB
misophoniaBmisogynisticB
mismatchedB	misjudgedBmishrasB
mishandledBmisdirectionBmisdemeanorsBmisconceptionsBmischievousBmischaBmiscastBmisbuttonedBmisbehaviorBmisappropriationBmisappropriatedBmisappropriateBmirjanaBmirenaBmiredB
miraculousBmintsBminterBminsonB	minotaursBminotaurBminorsBminkB
miniwheatsB	minisurgeBministryBminiskirtwearingB
miniseriesBminisBminimumwageBminimumsB
minimizingBminimeBminimarathonB	minidressBminhajBminglesBmingB
minestroneBmineralBminerBmindyBmindreadingBmindnumbingBmindingB
mindhunterB	mindfreakBmindbogglingBmindbodyBmindanaoBmincedBmimicBmiltonB	milosevicBmillyB	millionthBmillionsmarchsfBmillingB	millenialBmillardBmilkyB
milkshakesB	milkshakeBmilksB
militiamanB	militancyBmileageBmildmanneredBmildlyB	mildfiresBmilanosBmikhailBmike4763B	migrationB	migratingB	migrainesBmightyBmightveBmifflinBmientusBmidwifesB
midwesternBmidwestBmidwayBmidsizeBmidsexBmidriffBmidrangeBmidpanicBmidgetsB	midflightBmidfebruaryBmiddlesBmiddleagedschmoviesB
midconcertBmidasBmidairB
microwavesB
microfiberBmicroaggressionsBmichiganstyleBmichiganbornBmichelangelosBmichalakBmiamisB	miamidadeBmh370BmexicanthemedBmexicanfoodBmewtwoBmettaBmetsBmetrosBmetropolitanBmetlifeB
meticulousB
methushaelBmethamphetaminesB	methadoneBmethBmetersBmeterBmeteorBmetallurgistsB
metabolismBmessiahB	messengerBmessedBmesquiteBmervBmerryBmerronBmerleBmerkleyBmerkelsBmeritsBmeritBmergesBmeredithBmereB	mercurialBmerckB
mercifullyBmercatorBmerantiB
meownisotaBmeowingBmenusBmenudoBmentorsB	mentionedBmenswearBmenstruatingBmenstruatedB
menstruateB	menopauseBmenksB
meningitisBmendesBmenacedBmenaBmemorizationB	memorialsB
memorandumBmemorabiliaBmemesBmembershipsBmeltyBmeltdownBmelosBmeloniB
mellencampBmeleeB	meldoniumBmelanomaBmelaniasBmekasBmeinB	megamallsBmegamallBmegahitB	megadonorB	megadethsBmegachurchgoerBmeetandgreetB	meenakshiBmeeklyBmeekerBmeekBmedvedevBmeditationsB
meditatingB
mediocrityBmedievalBmedicrueltyB
medicalertB
mediasavvyBmediasBmediaobsessedB	mediaevalBmedalsBmedalistB
mechanicalBmeatyB
meatrightsBmeatonthebottomB
meatlovingBmeat14B	measuringB
measurablyBmeaslyB	meanwhileB
meanttobesB
meanderingBmealymouthedBmealkitsBmeadowsBmeadowBmdsBmcveighsBmcnuggetB	mcmuffinsBmckinseyBmckinneyB	mckinleysBmckessonBmckellenBmcgovernBmceneryBmcdreamyBmcdougalB
mcdonnellsB	mcdermottBmccullenB	mcchickenBmccartyB
mccartneysBmccabeBmbtaBmayweathermcgregorBmayimBmayhewBmayflysBmayfieldBmaycharitableB
maybellineBmaximumsecurityBmaximumBmaximBmavenBmaulsBmaulingB
mattressesB
matteblackBmatronBmatlinBmathisBmathewBmathematicalBmaternalB	materialsBmaterializeBmaterialisticBmaterialismB
matchmakerBmatchedBmatchcomBmatchboxBmasturbatoryBmasturbatesBmastiffeagleBmastiffB
masterworkBmasterstokeBmastermindsBmastermindedB
mastermindB	masteringBmasterfullyB	masterfulBmasteredB
mastercardB	massivelyBmasseuseBmassesBmassedB	massagingBmassagesB	massacredBmasqueradingB
masondixonBmasonBmasochisticBmaskingtapedBmaskingBmashedBmashBmascotsBmascaraBmaríaBmarysBmarykateBmarwatB	marvelingBmarvBmartyredBmartinsBmartiBmarthaapprovedBmartensBmartBmarshalB	marseilleBmarsaBmarryyourrapistBmarrowB	marrakeshBmaroulisBmaroonedBmarmontBmarleyBmarleeBmarlboroBmarkpaulBmarketedBmarkellBmariotaBmarinaraBmarinaB	marilindaBmarielBmarianaBmargotBmarginsBmargaritavilleBmarcusB	marcottesBmarcomentumBmarchesBmarchedB	marcellusBmarcelBmarcBmarbleB	maraudingBmarBmapplethorpeBmappingB	mapmakersBmaoBmanzielB
manyheadedB	manvendraBmanuscriptsB
manuscriptBmanufacturesBmanufactureBmanuelBmanualBmantrasBmantraBmantleBmantisBmantelBmansplainedBmanpowerBmannyBmannerB
mannequinsBmannedBmanipulatingB	manifestoBmanicBmaniaBmanhuntBmangyB	mangoblinBmanglingBmanglesBmanfightingB	maneuversBmaneuverB	maneatingBmandyB	mandolinsB	mandiblesBmandelasBmandatesBmancrushBmanciniBmanchildBmanageBmammothB
mammogramsBmamanBmaltaBmaltBmaloneB	malleableBmalickBmalibuBmaliasBmalfunctioningBmalenessB	malaysianBmalawiB	makeshiftBmakeoutBmakeareasonablerequestBmajorsBmajesticBmaintenanceBmaintainingBmainsBmainlandBmainesB	mainbraceBmaimedBmailmanBmailingBmailedB	maidstoneBmaidsBmahoneyB	maharishiBmagsBmagpieBmagnificentBmagneticBmagnateB	magicallyBmaggotBmaggieB	magdaleneBmagaBmagBmafiaBmaerskB	maelstromBmaduroBmadridBmadrassaBmadonnasBmadoffBmadmenBmademoiselleBmadelineB	madeleineBmadefromscratchBmadeaBmaddBmadayaB
madagascarBmacronBmaconB
macklemoreBmackBmaciBmachoB	machineryBmachadoBmaceB	macdowellB	macdonaldBmacbookBmacaulayBmacauBlyricistBlypsinkaBlyndonBlyndeB	lynchingsBlyingaroundalldayBlyfeBlydiaBluxurycravingBlutheranBlurksBlurkBlungingB	lunderganBlunchboxB
lunchablesBlunaticsBlunasBlunaBlumbersexualB	lumberingBlumberB	lululemonBlulledBlukewarmBluisBluggageBlugeBlugarB
luftwaffleBlucyBluckiestBlucidityBlucicbaroniB	lubricantBlubitzsBlubeBluauBltBlsuBlsdB	loyalistsB
lowtrafficBlowsBlowriskBlowfatB	lowenergyBlowcostB	lowcarbonB
lowcalorieB	lowbudgetBlovinB
lovetesterB
lovestruckBlovelornBlovellBlovelessBloureaBlourdBloungedBlouisdreyfusBlouisaB	loughlinsBloughlinBloudspeakerBlouB
lotsofpulpBlotionsBlotionBlossoffBlossesBlosingpowerballnumbersBlosermanBloréalBlorneBlornaBloretoBlordesBlordeBlopezsBlooptheloopBloopsB	loopholesBloopholeBloomB
longvacantB
longsilentBlongshotB	longrangeBlongplannedBlongoverdueBlonglostBlonghornBlonggoneB	longevityBlonesomeBlonersBlonerB
londonareaBlolBloisBlohansBlogsBlogitechB	logicallyBlogansBloganBloftsBloewsBloeffelmacherBlockheedBlocketBlockdownBlochBlocdB	localnewsB
lobstermanB
lobsterbibBlobsBlobeBlobbyistonlawmakerBlobbiesBloathingBloafersBloafBloadbearingBloBlngBllcBlizardsBlizardBlizBlivestreamsBlivestreamingB	livestockB	liverpoolBlivenedBlivelysBliveinBlivebloggedBlivableBliuBliturgyBlittleknownBlithgowBlitersBliteBlitanyB	listerineBlisteriaBlistedBliquorsB	lipsticksBlipstickBliposuctionBlipitorBlipinskiBlipbalmBlionsBlinuxBlinusBlintB	linkedinsBlinkedinBliningsBlingersBlingerBlinenBlineitemBlinehanBlincolnsBlimpB	limitlessBlimitedBlimestonebasedBlimbsBlimboB	limbaughsBlimaBlilyBlilliputianBlilithBlikenessB
lightyearsB	lightyearBlightweightsBlightweightBlightupBlightskinnedBlifespanB
lifesavingB
lifesaversBlifelineB	lifehouseBlifeguardingBlifechangerBlievBliegeB
liebermansBlidsBlickingBlickBlichtBlichenBlibyasBlibyansBlibtardB
librariansB	librarianBlibertysB	libertiesBliberianB
liberationB
liberatingBliberaceBlibelBlibbyBliableBliBlhababBlgbtfriendlyBlgBlexiconBlewdBlewandowskiBlewB	levitatesBlevisB	levinsohnBlevinB	leviathanBleviB
leveragingB	leveragesBleverageBlevelheadedBleveeB	letterboxBlesserBlesleyBleprosyBleppardBleotardwearingBleotardsBleonBlentBlensBlenosBleniencyBlengthsBlendsBlendBlemonyBlemmyBleisureBleiaBlegosB
legitimacyBlegitB
legislatorBlegislatingB
legislatedBlegionsBlegenoB
legalizingBleftistBleeumBleeryBleechingBledgerBledeckysBlecternBlebanonsBlebaneseBleatheryBleatherjacketedBleathercladBleashBleaseBlearyBleapsBleansBleanedBleanBleakyBleakingBlbjBlazygirlBlazierBlazboyBlayoverBlayersBlaxB	lawrencesB	laureatesBlaurasBlauperB
launderingB	laughableBlauersBlaudedBlaudeBlattesBlatteBlateworkingBlatefebruaryB
latecareerB
lastsecondBlassoBlasordaBlasikBlarvaBlarsonsBlarsonBlariosBlaramiesBlaraBlapsesBlapseBlapelBlaosBlanyardwearingBlanyardB	lanthanumBlanternBlangplusBlangBlanesB	landslideB
landscapesBlandrieuB
landowningBlandonB	landlinesBlandingsBlandfallBlancetBlanaBlampreyBlampoonsB
lamontagneBlamontBlamenessBlameloBlamechBlameassBlambBlamarsBlalanneBlaggingBlady—rememberB
ladykillerBladyinwaitingBladybugBladsBladBlabyrinthianB	labyrinthBlabradorBlabourBlaborsBlaboriouslyBlaborerBlabeoufBlabeledBkyotoBkyloBkwonB	kwatinetzBkwanzaaBkuwtkBkuwaitBkushnersBkusamaBkurrencykookcomB	kurdistanBkungfuBkumbayaBkukorsBkudlowB	kucinichsBkryptonBkrogerBkritzerBkristoffersonBkristinBkrispyBkrilleatingBkrillBkriegerBkremlinBkremeBkpopsBkowtowBkowalskiB
kournikovaBkoudelkaBkotexBkoteasBkotbBkosmiderBkosherBkorraBkoranBkoolBkontikiBkonoBkonnerB	kongmalaiBkondoBkomenBkohlsBkohlBkofiBkoenigBkodakBkodB
kochfundedBkobesBkobaniBkoalaBknudsenBknowshonBknowlesBknowledgeableB	knowinglyBknotBknopflerBknockoffBknockerBknockedoverB
knockedoutBknobbyfacedBknivesBknittingB
knifepointB	knifelikeBknievelBknackBklutzBklumBklugmanB	klobucharB	klinsmannBklepperBklemkeBkleenexBkkkBkiyokoBkitschreferenceB
kitchenaidB	kissingerBkisserBkirschsoakedBkirksBkirkBkirbyBkipBkioskBkinneyBkinksBkinkiBkingsizeBkingpinsBkingpinBkindredBkindlyBkindleBkindergartnersBkindergartensBkindergartenerBkinderBkindaBkimoraBkimmelsBkillersBkilbornBkilaueaBkievBkidzB0kidswithpreexistingconditionscangofuckthemselvesBkidnappingsB
kidnappingBkidnapBkidmanBkiddieBkickinBkickersB	kickaboutBkiBkhrushchevsBkhloéBkhansBkhameneiB	khalilzadBkhalifaBkhaledBkhakisBkhadrB	keystrokeBkeynoteBkeyesBkeychainBkesslerBkerryprimaryBkerriganBkernelsBkermitB	kerfuffleBkeqiangBkeplerBkenyasBkenobiBkennelBkennedysB	kendricksBkenanBkemperBkellysBkellenBkehlaniBkeffiyehcladBkeenBkeeblerBkeatonsBkearneyBkeanuBkciBkcBkbeautyBkayboardBkayBkavoliusBkatweBkattanBkattBkatrinaBkatifBkathyBkathrynBkathleenBkathieB	katherineBkatehiBkatebBkassigB	kasparovsBkasparovBkashkariBkarzaiBkarmaBkareninaBkappaBkanyesB	kangaroosBkaminskiBkamauBkamBkalingBkaleyBkaleidoscopingBkaleidoscopicBkaleBkalanickBkainesBkailashB	kahnemansBkagenBkaganBkafkaBkaepernicksBkacyB	kabatzinnBjyothiBjwowwBjuulB
justopenedB	justifiedBjurgenBjurassicBjupitersBjuntaBjunotBjunoBjuniorsBjuniorhighschoolBjuniorBjumpsuitB jumpingandtouchingtopsofdoorwaysBjumpersBjumboBjumbledBjumbleBjumanjiBjuliusBjulietteBjuicesBjuicedB
juicebasedBjugglingB
juggernautB	judiciaryBjudgingBjudeBjuarezBjoystickBjoyousBjoyfulBjowlsBjowlBjoviBjourneysBjournalsBjotsBjotBjoséBjostledBjossBjoshuaBjosefBjorgeBjordansBjoplinBjongilBjonesingB	jonbenétBjonahBjokesterB
johnsvilleB
johanssonsBjoggingsuitBjoggingBjoeyBjoelsBjodyBjodieBjockeyBjoannaBjncosBjinxBjinpingsBjinpingBjindalsBjiltedBjillianBjilB	jihadistsBjihadistBjihadismBjihadBjigglingBjianBjhBjewryB	jewmericaBjewessBjewelB	jettisonsBjetlinerBjeterB	jesus—iBjesuslovingBjestB
jerusalemsBjerseysBjerrysBjermaineBjerkoffBjerkedBjeremiahBjepsensBjepsenBjennieBjenniBjengaBjenaBjellyB
jeffreytonBjeffordsBjeevesB
jebbushcomBjeanswearingBjealousyBjawsBjawdroppingBjawaBjavelinBjasmineBjarvisB	jarringlyBjarringBjarrelsBjargonBjapansBjapanesejapaneseBjannaBjameelBjamarBjamaicanBjamaicaB	jalapeñoB	jakrapongBjaipurBjaimieBjahlilBjadenBjacuzziBjacobsBjackolanternBjackmanBjackingB
jackhammerBjackedB	jacarandaBjabsBjabBjaBivorybilledBivankasBiudsBiudBitunesBittBitdBitchingBitchBissBisraelpalestineB
israelitesBisraelisB
israelgazaBisolatedBisolateB	islandersBislamophobeB
isislinkedBisisinspiredBisilBisbellBisabelBisaacBirvinBirresponsibleBirresistibleBirregularitiesB	irregularBiroquoisBironickitschappreciationBirishamericansBirisB
ireportersBirelandsBireBiracemaBiphonefeatures4politiciansBipecacBipadBipBiowasBiowansBiovineBiosBionceoverheardBinſurgencyBinvolvementBinvokeBinvitingBinvitationsBinvisibilityB
invincibleBinvestsBinvestigativeBinvestigationsBinvestigatesBinvertedB
inversionsB
inventionsB	inventionB	inventingBinventBinvadesBinvaderBinuitB	intuitionBintruderBintrovertedB	introvertBintroversionB
introspectB	intrinsicB
intriguingB	intriguesBintrauterineBintoxicationB
intolerantBintimidationBintimidatingBintimidatedB
intimatelyBintheB
intestinalBinterviewersBinterviewedBinterventionsB	intervalsBintertwinedB
interstateBintersectionalB
interruptsBinterrogationsBinterreligiousBinterracialBinterpreterBinterpretedB	interpretBinternetfreeBinternationalizationB
internallyBinterferingB	interfaceBinterculturalBintercontinentalBinterchangeableB	interceptBinteractionsBinteractionBinteractingBinteractB	intensityBintensifyingB	intenselyBintelligentsiaBintelligentlyBintellectualsB	integrateBintegersBintakeB
insurgentsBinsurerBinsurancederegulationbillB	insultingBinsultedB
insulatingB
instrumentBinstructBinstitutionalizedBinstitutionalBinstitutingBinstinctivelyBinstinctBinstateB	instantlyB	instancesBinstallB
instagramsBinstagrammersBinstagrammedB	instadiumBinspoB
inspectionB
insomniacsBinsolesBinsolentBinsleeB	insistingBinsistB
insinuatedBinsignificantBinsigniaB
insightfulB	inshallahBinsertsB	insertingBinsertBinsensitiveBinsecureBinsecticideBinsectB
insatiableBinsanelyBinsBinroadsB
inoperableB	innocenceBinnBinlawBinksBinkjetBinkedBinkB
injusticesB	injusticeBinjureB
injectionsBinjectBinitiativesBinhumanBinhouseBinheritanceB
inherentlyBinhaleB	ingrahamsB	ingeniousBinfringementBinfrequentlyBinformalBinfomercialBinfluencingBinfluencersB
influencerBinfluencedbyadcampaignsBinflightmagazineB	inflictedB	inflatingB
inflatableB
infinitelyBinfiltratedBinfidelB	infestingBinfestedBinfestationBinfertilityBinferiorityB
infectiousBinfantsBinfamyBinexperienceB
inevitablyBinescapableBinertBineptlyBineptBineffectuallyBineffectualBineffectiveB
inebriatedB
industriesBindustrializationBindulgeB
indonesiasB
indonesianB	indonesiaBindividualizedBindividualityB
indistinctBindiscriminationBindiscriminatelyB
indirectlyBindiraBindigoB	indignantBindifferenceBindictsBindictmentsB
indictmentB	indicatorB
indicativeB
indicationB	indicatesBindiansubcontinentBindependentfilmB
indecisionB	indecencyB	incurableB
incumbentsB
incumbencyBincubusB
incubatorsB	incubatorBincrediblesBincorporateBinconveniencingBinconveniencesBinconsolableBinconsistencyBinconceivableBincompatibleBincomparableBincoherentlyBinclusivityBinclinedBinclineB	inclementB
incivilityBincitesB
incitementB
incidencesB	incidenceBinchingB	inchamberBinchB	incessantB
incentivesB
incendiaryBincarceratedBinadequatelyB
inadequateBinactionBinaccuraciesB	impulsiveBimpulsesBimprovementsBimproprietyB
improperlyB	impromptuB
improbableBimprisoningB
imprisonedBimpressionsBimpregnatedB
impotentlyB
impossiblyBimposingBimportsBimplyingBimplodesBimplodedBimplicationBimplicatingB	implantedBimplantBimpishBimpersonatesB
impersonalBimpermanenceB	imperioliB	imperiledBimpeachB	impatientBimpassionedB
impassableB	impartingBimpaledBimpalaBimpairedB	impactingBimmunotherapyBimmunizationBimmortalB
immoralityBimmodestBimminentB	immensityBimmeasurableB	imitatingBimitateBimfB	imbalanceBimanB	imaginaryB
imaginableBillwillBillustratorsBillustratesB	illusionsB
illuminatiB
illiteracyBillicitBillegitimateB	illegiblyB
illegalizeBilanaBikeBiiisBiieraB
ihopwaffleBiheartradioBignorantBignitesB	ignatiansBiglesiasBiftttBidrisBidol 2BidolBidlingBidlesBidioticBidfBideologyBideologicalB
identitiesBidentifyingB
identifiesBidealsBiddBidahoanBicymiBicuBickyBice–themedB
iceshavingBicemanBicecreamBicantbreatheBibtihajBibrahimBibizaBibeamsBianBiaBi90BhystericallyBhysterectomyBhypothesizeB
hypothesisBhypocriticalBhypocrisiesB
hypnotizedBhypnoticBhyperactiveBhymnsBhymnBhylandBhygieneBhygenicBhydroponicsBhydrogenBhutsellBhustledBhushBhurtlingBhurtfulBhurryingB	hurriedlyBhurriedBhurlingBhurlBhurdleBhuntsmanBhuntedBhungrilyBhungaryBhunchedforwardB	humongousBhummingbirdsBhummelBhumiliationsB	humiliateB
humidifierBhumblyBhumanrightsB	humanlikeB	humanitysB
humanitiesBhumanitariansB	humanistsBhulusBhugosBhugoBhughesBhuffingBhuertaBhudB	huckabeesBhubbyBhubbardBhsnBhqBhppsBhpBhoyaBhowmanyyearsBhowieBhowdyBhowardrelatedBhoveringBhouthiBhoustonsBhouse–fbiB
housewivesB
houseplantBhousekeepingB
houseguestBhouseelfBhousedB	houseboatB
hourbyhourBhounsouBhoundsBhoughtonBhoudiniBhottiesBhottieBhotterBhotsBhotnessBhotmailBhotelrestaurantBhotdogsBhotcakeBhotbedBhotairBhostingsBhostedBhostagesBhospitalizedBhospitalityBhospiceBhosesBhosedBhortonBhorseyBhorseracingB	horseraceBhorsemanB	horsefaceBhorsBhornyBhornsBhornersBhornerBhornBhorizonsBhorcruxBhoratioBhoppingBhopperB
hopelesslyBhopelessBhopBhooversBhooverBhootieBhoosierB	hooligansBhookupBhoodedBhoochBhonyB	honorableBhonkyBhonkerBhonestyBhonestlyBhonduranBhonchoB
homunculusBhomosexualsBhomosexualistB
homophobesBhomojiBhomoBhominidBhomiesBhomeyBhomeworkBhomesickBhomeschooledB
homeschoolBhomeroomBhomepodBhomepageBhomeopathicB	homemakerB
homecomingBhomecareBhomebuildingBhomebrewingBhomeboysBhomanBholyokeBholtBholocaustdenyingBhollowpointB	hollisterBhollerBhollandBholiestBholidaythemedBholeinthewallBholdoutBholdersBhokeyBhohohorowitzB	hogsmeadeBhofnerBhoffmansBhoffaBhodorsBhodaBhocusBhocksBhochuliBhobbitBhobbesBhoagieBhitlersBhitlerBhitechB
hitchhikesBhitchhikersB
hitchhikerBhitchB	hitandrunBhissyBhirschB	hiroshimaBhipstersBhippothemedBhippocraticBhippocratesBhintingBhingingBhindusB	hindsightBhindersB	hillshireBhillaryhumaBhillarybashingBhilariaBhikerBhijabwearingBhijabsB	hijabistaBhightechB
highstakesBhighsBhighrollingB	highrisesBhighriseBhighresolutionBhighresistanceBhighqualityBhighprofileB
highflyingBhighfatBhighestrankingBhigherpricedBhidBhickBhiceBhibernationBhiBhhsBheyersBhewnBhestonsB
hesitantlyBher—asBhersheysBherpetologistsBherosB
herointownBheroineBheroinaddictedBherndonBhermitsBhermitBhermanBherdBherbieBherbB	hendricksBhenchmenB
hemsworthsBhempwearingBhemophiliacBhelmutBhelmetsBhelmB	hellscapeBhellsBhelloBhellishB	hellermanBheliumBhelbergBheistsBheismanBheirsBheirloomBheirBheinzBheimlichBheiglB	heightensBheftyBheffernBheelBheedingB	hedgehogsBhecticBheckledBheckleBhecheBhebrewBheaviestBheavensBheatedBhearttoheartBheartstringsB	heartlessB	heartbeatB	heartacheBhearingsBheapBhealthylookingBhealthfoodstoreBhealthcaregovBhealsBhealersBhealedBheadsupBheadphoneswearingB	headlinerB
headinsandBheadhuntersB	headfirstB	headdressB	headbuttsBhbcusBhbB
hazmatsuitBhazmatBhazenB	hazardousBhazardBhaydenBhawnBhawksBhawkingsBhawkesBhawkeBhavenBhavanaBhauntsB	hatewatchBhateinspiredB	hatecrimeB
hatchimalsBhatchetBhatchesBhatchersBhastyBhassleBhassanBhaslemBhashashaBhasanBharwardBharvestsB	harvestedBharvardsBhartnettB	hartfordsBharshestBharrysB
harringtonB
harrelsonsBharpoonsBharpiesBharmsBharmonBharmlessBharmingBharmedBharleyBharlemBharemBhardyBhardworkB
hardlinersBhardingBhardensBhardenedBhardenBhardeesBhardchargingB
hardboiledBhardballBharcourtBharborsB	harboringB	harassersBharasserBharassBharambesBharamBhappylookingBhaphazardlyBhapaBhansonBhanselBhannitysBhangoverBhangnailBhanginBhangerBhandyBhandwrittenB	handwriteB
handsomelyBhandsomeBhandsoffB	handsfreeB	handmouthBhandmadeBhandlersBhandjobBhandilyBhandicappedaccessibleBhandicappedBhandicapBhandgunBhandelsBhandedB
handcuffedBhandcraftedBhandbagB	hamstringBhamstersB
hampshiresBhammersmithB	hammeringBhammerinducedB
hammerheadBhammelBhammBhamletBhamiltoninspiredBhaltingBhalogenBhaloBhallsBhalloweinerB	hallmarksBhalleBhallburtonsB	halfstaffBhalfmastBhalfhourBhalfheartedBhalffullBhalffinishedBhalffeatheredB	halfemptyBhalfdressedB	halfbuiltB
halfasleepBhalenBhalcyonB
hairstylesBhairsBhairdoBhairbrushesBhailedBhailBhaikuBhagarBhaegueBhadersBhaderBhaddishBhackerB
hackathonsBhachetteB	habitableBhaazBhB
gyrocopterBgypsyBgynoB
gymnasticsBgyllenhaalsBgwBguzmanBgutwrenchingBguttersBgutterBgutsyBgutsB	gutierrezBguthrieBgutBgushBgusBguruBgurneyBgurleyBgunshotsBgunshotBgunpointBgunningBgunnerBgunnBgunmenBgunfreeB
guncontrolBguncheckBgummyBgummisBgummiBgumbyBgumbelBgulagthemedBguitarinstructionBguiltriddenB
guillotineB	guillermoBguillenBguildBguidingB
guidelinesBguidedB	guidebookBguguB
guggenheimBguestappearanceBguessingB	guerrillaB	gudmunsenBguccisB
guatemalanB	guardrailBguardingBguardianB	guaranteeBguantanamosBguacamolemakingBgtaBgspotBgrumblethorBgruffBgrudgeBgrrrlBgrowlsBgrowersB	grovelingBgroutB
groundworkBgroundskeeperB	groundhogBgrossestB
grossedoutBgrossedBgropeBgroovinBgrootBgroomsBgroinBgroggyBgrocerystoreBgroansBgrizzledBgritBgripsBgrippingBgripBgrindBgrimsbyBgrimmieBgrimmBgrimlyB	grimacingBgrillingBgrilledBgriftersBgriffithBgrieveBgriecosBgridironBgretelBgrenadeBgreitensB	gregoriosB	greetingsBgreeterBgreetedB
greenwoodsB	greenwoodB
greenhouseB
greenbuildBgreedyBgreedBgreatsBgreatgrandsonBgreatgrandmotherBgreatgrandchildrensB	greasedupBgreBgravyBgravitatingB	graveyardBgravesBgratuityB
gratuitousB
grassrootsBgraspsBgrasBgrapplesB	grapevineB	grapesodaBgrapesB
grapefruitBgrannysBgrandpasBgrandparentingBgrandesBgranddaughterB
grandchildB	grandbabyBgrammaticalBgrainsB
graffitiedB	graduallyBgradingBgradesBgradersBgradeaBgradBgrabbiesBgrabbedBgpaBgoyaBgowdyBgovtBgovernmentpublicationsBgovernmentfundedBgovernmentengineeredB	governingB	governessBgougesBgottaBgotoB	gothamistBgothBgossipB	gosselaarBgortonsBgorsuchsBgorskyBgornickBgorkaBgorillagramBgorgeBgoresB	gorbachevBgoproBgopledBgoperBgopcontrolledBgooseBgooniesBgoonBgooglingBgoofyBgoofsBgoofballBgoodyearBgoodyB	goodnightBgoodnessBgoodmansBgoodingBgoodiesBgoodieB
goodfellasBgoodeBgonzalezBgonzagaBgonerB	gondolierBgolinBgolfingBgolemB	goldsteinBgoldieBgoiterBgoingoutofbusinessBgohilBgogoBgoghB	godmotherBgodlikeBgoddamBgodawfulBgobiBgobblerBgobagBgoateeBgoatB	goalpostsBgoaheadBgnarledBgmsBgmailB
glutenfreeBglueBglovedBglossB
gloriouslyB
glorifyingBgloriaBglobsBglobalwarmingBgloballyBglobBgloatingB	glenbrookB	gleefullyBgleeBglazerBglassencasedB	glassdoorBglasgowB	glandularBglandsBglanceBglamourB	glamorizeBglamBgladysBgladwellBgladnessB	gladiatorBgladhandingBgizmosBgiverB	giulianisBgiudiceBgitmoBgirlyB
girllikingBgirlbossBgirdersBgiraffesBgiraffeBgingerlyBgimpBgimmeB	gilligansBgilliganB
gillespiesBgildedBgigglingateverythingBgigglesBgiftsforBgiftingBgiffordsBgiffordBgifdBgiddyBgiddilyBgibsonBgibbsB	gianforteBghoutaBghoulishBghostwritersBghomeshiBghaniBghanaianBgeyserBgeunhyeBgetgoB	gesturingBgesturesB	gestationB	gershwinsBgerrymanderedBgerbilsBgerardBgeopoliticsBgeologicBgeodesBgeodeBgeoB	genuinelyBgentrifyingBgenrecrossingBgenreBgenomicB	genitaliaBgenieBgenesB
generatorsB	generatorBgenerationalBgenerateBgeneralsBgenealogistsBgenderbendingBgenderaffirmingBgenBgemsBgellerBgellarBgeithnerBgeistBgeilsB	gefloigelBgeffenBgeeseBgeddyBgedBgearsBgearedB	gchattingBgchatsBgazingB	gaziantepBgazesBgaypreventativeBgaynarBgawkersBgavriloBgavinsBgavelingBgaullesBgauguinB
gatlinburgBgatewayBgatedBgassyBgasfaceBgasesBgaseousBgaselectricBgarthBgarryBgarofalogriffinB	garneringBgarmentBgarlandsBgarishBgargoyleB	gardeningBgardBgarcíaBgarciasBgangingBgangedBgandhiBgandalfBganBgamgamB
gamewinnerBgamestopBgamedB	gamecocksBgambinoB	gallstoneBgallonB	galleriesBgalenBgaleckiBgainesBgainedBgagsBgagprojectsBgagasBgagBgafferBgaetzBgadgetsBgadgetBgadflyBgadB	gabriellaBgaborBgabbyBgabbanaBg7Bg41Bg4BgBführerBfyreBfxsB
futuristicBfutonBfutilityBfusesBfuseBfurriesB	furloughsB
furcoveredBfunniesBfunneledBfunkyBfuneralsBfundamentalistB	functionsBfunctionlessBfumingB	fumigatedBfumigateBfumblereturnBfumbleBfullyencryptedB	fullsizedBfullnessBfullestB	fullcourtB	fullcolorBfullbodyB	fulfilledBfugooBfueledBfudgetasticBfudgeBfuckfiancéB	fuckbuddyBfuckableBfttpBfsusBfryingBfrustratingB	frustrateBfrumpyB	fruitvaleBfruitsBfrpxk5jeoc4ne5dnBfrozenthemedBfrownBfrothmouthedBfrostyBfrostingBfrontrunnersB	frontlineBfrontierBfrontendBfrogmenBfrockedBfritzBfritterBfritosBfritolayboratoryBfriskingBfrisbeeBfrillyBfrillsBfrigginBfriendshipsBfriendliestB
friendlessBfriedanBfriarBfreydaBfreudianBfretsB
freshwaterB	freshnessBfreshmenBfrescoBfrescaBfrequentBfrenziedB	frenchmanBfrenchieBfreightBfreidaBfreezesBfreezersBfreethinkingB
freestylesB	freestyleBfreesB	freerangeBfreemansBfreemanBfreeloadingBfreelancersBfreeheldBfreefallBfreedomwieldingB
freedomingB
freebakersB
fredericksBfreakylookingBfreakishBfreakinBfrazzledB
fraudulentB
fraudstersB
fratricideBfraserBfrappBfranzBfranksBfranklyB	frankfestB
franchescaBframersBframedBfrailtyB	fragmentsBfragileBfraggleB
fracturingB	fracturedBfractionBfracasBfoxxBfoxsBfoxesBfourthgraderBfoursB	fourpoundBfourplayingB	fountainsBfountainBfoundartBfoulestBfostersBforwomenBfortressBforthBforrestB	formulateBformulaBformfittingBformerlyBformatBforkBforgoingBforgoesBforgivesBforgivenB	forgetfulBforgesBforgeryBforgeBforgaveB	foretellsBforestsB
foreseeingB
foremanaliB	foreheadsB
forebodingB
forcefieldBforcedretirementBforbusinessB
forbiddingBforbearanceBfootwideB	footstepsBfoolsB	foolproofB	foolishlyBfoolishBfoolingB	foolhardyBfooledBfoodserviceBfoodpreparationB	foodcrimeB	fondationBfondaBfomoBfollyBfolksyBfolkBfoleyBfoldingBfolderBfoilsBfoieBfogleB	fogelbergBfoesB
focusgroupBfmrBflyoverBflynnsB	flyingcarBflyboyB
flutteringBflustrickenBflusherBfluorescentBflulikeBfluidityBfluentBfluctuatingBflubsBflowingBflourishBflounderBflotusBfloridasBfloralBflorBflopsBfloppyarmedBfloppyBflopBflooredBfloorboardsBflonaseBfloggedBflockingBfloBflirtsBflirtBflippingBflippinBflippedBflipfloppingBflipfloppedBflipflopBflipbookBflintstonesBflingsBflinchedB	flightersBflierBflickingBflickBflexBfletchBfleshlighthouseB	fleischerB
fleetinglyBfleetBfleaBflayB
flawlesslyBflawedBflawB
flavorlessB	flavorfulBflavorblastedBflauntsBflauntedB	flattenedBflattenB	flatbreadBflashyBflashmobBflasherBflashedBflashanimatedBflappingBflapperBflapBflankedBflandersthemedB	flandemicBflamethrowersBflamethrowerBflameBflailsBflagshipBflabbergastedBfkaBfixesBfivethirtyeightB
fivedecadeBfitzpatrickBfittingBfittedBfitnessmindedBfistshakingBfistpumpingBfistingBfistBfishoilBfisherpriceB	fishermenB
fishermansBfischerBfisaB
firststoryBfirstpersonB	firstlookB
firstlevelB
firstgradeB	firstbornBfirmsBfirenzeBfiremanBfirefoxBfireflyB	firefliesBfireeyeB	firebrandB	firebasedBfireballBfiosBfinlandB	finishingB	fingertipBfingerprintsBfingerprintingB
fingernailB	fingeringBfingeredBfinerBfineoBfinedB	financingBfinalesB	filthiestBfiltersBfilm revealsB	filmgoersBfillmoreBfillingsaturatedBfilipinoBfilibustersB	figurinesBfigBfifthofasecondBfieryBfiennesB	fieldtripBfieldsB	fictionalBficosBficoBfiatBfiancésBfiancéBfianceB
feverishlyBfeudsB
feudalistsBfettyB
fetishistsB	fetishistBfetidBfeteBfetchingBfetalBfestsBfestiveB	festeringBfesBferryBferriesBferranteB	fernandezBfernBfermentB	fergusonsBfergieB	ferdinandBferalBfentanylBfengBfenderBfencingBfencersBfencedinBfemurBfemstatBfemicideBfemalesBfemalelibidoenhancingBfeloniesBfelipeBfelineBfeistyB	feingoldsBfeijoadaBfeesBfeelersBfeedbackBfeebleBfeds responseBfedexedB
federationB	federallyBfecesthrowingB	februarysBfeathersB	featheredBfeastsBfeasibleBfearsomeBfearfulBfeBfdasBfcaBfbombsBfaçadeBfaxBfawnsBfavreauBfavreB	favorablyB	favorableBfavorabilityBfavesBfaultyBfaucetsBfatwaBfattyBfattestB
fatshamingBfatherinlawsBfatherinlawB
fatherhoodBfathergrillBfatheredB	fasttrackBfastlearningBfastingBfastestrisingB
fastcasualBfastballBfasoBfashionsBfashionistasBfashionforwardBfartingBfartherBfarrowBfaroffBfaroeB
farmworkerBfarmtoschoolBfarmsB	farmlandsBfarleysBfarleyBfarleftBfarkBfarinaBfarhadiB	farewellsBfareedBfareBfarcBfarallonBfaqsB	fantasiesBfanfavoriteBfancyclothesBfanaticsBfanaticallyBfamineBfalwellBfaltersBfalsifyB
falsehoodsBfallujahB
fallthemedB
fallingoutBfallibleBfalafelBfakingBfakerBfakedBfakebookB	fakeawishBfaithsBfairsBfairiesBfaireysBfaintsBfaintBfaildB
fahrenheitBfagBfafsaBfaerieBfadsBfadingBfadesBfacultyBfactualB	factoriesBfactorBfactoidsBfactoB	facinelliBfacilitatesBfacilitatedBfacetimeB
faceshieldBfacereadingBfacedownBfacadeBfabricBfabledBfableBfabioBf150BezellBeyewhiteningBeyesoreBeyelidBeyelashBeyedBeyebrowsBexwifesB
extrovertsBextrovertedB	extrovertB	extremismBextrastrengthBextraspookyBextrasloppyBextramaritalB
extralegalB
extralargeBextraditingB
extractingBextracrispyBexterminatorBexteriorBextentBextensivelyB	extendingB
extendableBexstarbucksB	exquisiteB
expressionB	expressedBexpresidentsBexposéBexposerBexportedBexportBexpolicemansBexpmB
explosionsBexploredBexplorationB	exploitedBexploitBexplodedB
expletivesBexplainthe90sin4wordsB	explainerBexpiredBexpireB
expirationBexpertlyBexperimentingBexpenseaccountBexpendablesBexpelsB	expellingBexpelledBexpelB	expeditedBexpectationB
expatriotsB	expansiveBexoskeletonBexorcismBexodusBexmayorBexloverB	exiranianBexilesBexileB	exhostageBexhilaratingBexhilaratedBexhibitionistB
exhaustiveB
exhaustionB
exhaustingBexgayBexertionB
exemptionsB	exemptionBexemptB
exemployeeBexecutionerBexcusingBexcusesBexcruciatingBexconBexcludesBexcludeBexcitesBexciaBexchiefB	exchangesB
exceptionsBexceptionallyBexceptionalBexcellenceincaptionpunB
excellenceBexcelB
excavationBexaminerBexaminationBexaideBexaggeratedB
exaggerateBewwwBewokBewenBevolvesBevolutionaryBevokesBevoBevillookingBevictedB	everytownB	evergreenBevenlyBeveningsB
evenhandedB
evaporatesB
evansvilleBevansBevaluationsB
evaluationBevaluateBevadesBevadeB
evacuatingB	evacuatesBeuphoricBeulogyB	eulogizesBeugenicsB	eucharistB
eucalyptusB	ethnicityBethiopiaBethicB	etheridgeBeternityBetcB	estrangedBesteemBestablishmentsBestablishmentbackedBestablishedBessenceBessaysBespressoBespositoBesportsBesperoBesmokerBeslBescobarBescapeeB
escalatorsB	escalatorBescalateBesaBesBerykahBeruptionBerrantBerrandsBerlichBerivosBerivoBeritreanBerinBerikaBericsBericksonBerickBerectsBerectileBerdoganBerasedBeraseBeradicatingB	eradicateB
equivalentBequivalencyBequivalenceBequippedBequineB
equestrianBequationBeptBeppersonBepiscopaliansBepiphanyB
epiphaniesBepipenBepiduralBenzymebasedBenzymeBenvoyB	envisionsBentreesBentranceBentomologistBentityBenthusiastsBenthrallingBentertainmenthistoryBentertainmentfreeBentertainedBenterprisingBententeBentanglementsB	enslavingBensembleBenronBenrolledBenrollBenriqueBenquirerBenochBennisB
enlightensB	enjoymentB	enjoyableB	enigmaticBenhancedBengulfsB	engulfingBengulfBenglishlanguageBenglandB	engineersBengagingBengagesBengageB	enforcingBenforcerBenergyefficientB	energizedBenergiBenemysBenduringBenduresBenduredBendometrialBendofepisodeB	endlesslyBendingsB	endeavourBendeavorB	endearingB	endangersBencyclopedicBencyclopediaBencouragementB
encountersBencounteredBencoreB
enclosuresB	enclosureB
enchiladasBenchantsB
enchantingB	enchantedB	enbridgesBenactingBenactedBenactBenableBenBemptythreatB	emptynestB	emptinessBemptierBempowermentB	empoweredBemployees newbornBemployedBemployB
emphasizesB	empathizeBempBemotionallyBemotionBemoticonBemojisinthewildBemmettBemmerichB
emmanuelleBemitsBemiratesBemirBemileBemeritusBemergenciesB	emergenceBembryosB
emboldenedB
embodimentBembellishingBembellishedBembarrassinglyBembarksBembargoB
embalmingsBembalmBemanuelsBemancipationBemancipatedBemanatesBelwesBelvesBelsesBelmoB
ellipticalBelliottBelleBelitesBeliminatingB
eliminatesB
eliminatedBeligibleBelieBeliasBeliBeleganceBelectronicbibleverseBelectrifiesBelectricslideBelectriciansBelectricbillB
electorateBeleanorBelbaBejaculationB	eisenbergBeileenBeightyBeighthgraderBeiffelBeidBeiaBehB	egyptiansBeffingBeffigiesBefficientlyBeffectivenessBeerilyBeelBedwards2016comB	educatorsBeducationalBeducateBedtechBedsBedmBeditingBedictBedgingBedenB
ecuadorianBecuadorB
ecowarriorB
ecosystemsB	economiesBecointegrityBecofriendlyBecoconsciousBeclairsBecigarettesBecigBeccentricitiesBebooksBebonyBeavesdroppedBeatingdisorderBeatersBeastwoodBeastonBeaselBearthquakesBearthlyBearthenwareBearringsBearringB	earphonesBearningsBearningB	earnhardtBearnestsBearnestBearnedBearmarksB
earlymarchBearleBearbudsBe3BdéjàBdéjaBdécorBdzhokharBdzhokarBdysonB
dysmorphiaBdynamicsBdyllanBdylannBdyerBdyedBdwyaneBdwtsBdwellingBdwarvishBdwarvenBdwadeB	duvernaysBduvallB	dutifullyBdutertesBdustyBdustpanBdustedBduskBdurovBdurningBduressBdurbinBdurationBdupriBdupingBduoBdunstBdunkBdunhamsBdunbarBdumplingBdumbshitB
dumbledoreBdumbfoundingBdumbedBdullardBdukakisBduiBduggarBduffsBduettingBduetBduesBduelingBduelBdudleyBdudesBdudBductsBductBducklingBduchovnyBduchenBduchampBducaBdubsBduboseBduBdslrBdslBdryingBdryersB
drycleanerBdrunkdrivingB
drumsticksBdrummersBdruidB	drugstoreBdrugsniffingBdrugresistantBdrugrelatedBdruggingBdruggiesBdruBdrowsyBdroseBdropoffBdropletBdroopyBdroolingBdroogsBdroegeBdrixoralBdrivinginacircleBdrippingwetBdrippedBdrinkerBdriftsBdriftingBdriftedBdriedBdreyfussBdrexelB	dressbarnBdredgingBdredgedBdrearyB
dreamworksBdreamilyB	dreamgirlBdreamerBdreadlockedBdraymondBdrapesBdrankB	dramatizeBdramaticallyBdrainedBdragonsBdragonridersBdragonBdraftsBdraftedB	draconianBdozingBdozesBdownsideBdownplayBdownhillB
downgradedB	downgradeBdownedB
downballotBdowdBdowagerBdousingBdousedBdoughnutBdoughboyBdoughBdoucheyBdoubtfulBdoubterBdoubtedB
doublestufBdoublequickBdoublejointedBdoubleentendreBdosesBdoseBdosageBdosBdornersBdornerBdormantBdorasBdoppelgängerBdopamineaddictedB
doortodoorB	doorstopsBdoorstopBdoorknobBdoorblockerBdoomingBdoofusBdoodlesBdonutshapedBdonutlickingBdontsBdontchaBdonsB
dominicansB	dominicanB
dominationBdominantBdomesticatingBdomeniciBdolphinsoul60sBdoloresBdolingBdolezalsBdolezalBdolceBdolansBdolanBdolBdokkenBdojsBdojosBdojoBdoinBdogurineBdoggB	dogfightsBdoeuvresBdodgerBdodgedBdodgeBdodBdockedBdockBdocileBdocBdobrevBdobkinBdobbyBdoableBdnainfoBdmvBdlistBdjsBdjimonB	dizzinessBdixonsBdixonB	dixielandBdixieB	divorcéeBdivorcesBdivorceeBdivolB	divisionsBdivineBdividesBdivesBdivertedBdiversBdivebombingB	disturbedBdistrictwideB	districtsBdistributorB
distributeB	distractsBdistractB
distinctlyB	dissolvesBdissolveBdissesB
dissentingB
dissentersBdissectBdissB
disruptingBdisrespectfullyBdisrespectfulB	disrepairB	disregardBdisqualifiedB
disprovingB	disprovenB
displeasedB	displayedB	displacedB	dispensesB	dispensedB
dispensaryB
dispellingBdispatchB
disorderlyBdisneylucasfilmBdismissB	dismemberBdismantlingBdislodgeBdislikesBdisksB
disinvitedB
disinvestsBdisingenuousBdisicksBdishonorablyBdishonorableBdishonorB	dishonestB
disheveledBdishBdisgustipatingBdisgustB	disguisedBdisgruntledB	disgracedBdisgraceBdisengagementB
disengagedBdisenfranchiseBdiseasecausingBdisdainsBdisdainBdiscriminatoryBdiscriminatingBdiscreditedBdiscouragesBdiscouragedBdiscontinuedB
disconnectBdisconcertedB
disclosingB	disclosedBdisciplinarianB
dischargedB	dischargeBdiscernibleB	disbursesB	disbeliefBdisbandBdisavowsB
disavowingBdisastrouslyB	disastersBdisarmBdisapprovingBdisapprovesBdisapprovalB
disappointB	disagreesBdisagreementsBdisaffectedBdisadvantagedBdisableBdirtbagBdirectvB
directressB	directiveB	directingB	diplomatsBdiplomatBdiplomasBdipBdiousBdionneBdintyBdinosaurB
dinnerwareB
dinnertimeBdingdongBdinaBdimonBdimlyB
diminishedB	dimensionBdimeBdiluteBdildoshapedB	dignitaryB	digitallyBdigitalhealthBdiggerB	digestingBdigestedBdifficultiesBdifferentiationBdifferBdietingBdietaryB
dieselgateBdieoffBdiddyB
dictionaryBdictatorshipBdictatorBdictateBdicksBdiceBdibsBdiarrhearugBdiariesBdiapersBdianeBdialsBdialBdiagonB
diagnosingBdiabeticBdeweyBdewBdevryBdevoutB	devouringBdevourBdevotionBdevolvesBdevoeBdevitoBdevisedBdevilsBdevelopmentalB
developersB	developerBdevastationB
devastatesB	devastateBdeuxBdeutschBdetroitsBdetroitareaB
detractorsBdetoxBdeterminingBdeterioratingB	detergentB	detectionB
detanglingBdetainsBdetaineeBdetachedBdestructiveBdestressB
despicableBdesperationBdesolateBdesiresBdesiloBdesignationsBdesignatingB	deservingB	desertionB	desertersBdeserterBdesensitizedBdeseB	describedBdescribeBdescendsB	descendedBdescendBdesantisBderuloBderrickBdernBdermatologistsBdermatologistBderivingBderivesBderivedB
derivativeBderezzedBderegisteredBderbyBderayB	derailingBderailedBderailBderB	deputizesBdepthBdeprivationBdepressinglyBdepressBdeppBdepositionsB	deportingBdeportersinchiefBdeportedBdeportationsBdepopulatedB	deployingBdepletesBdepleteBdepictsB	depictingBdepictedBdepictB
dependencyBdepartB	deodorantBdenzelBdenversBdentistsBdentalofficeBdensityB
denouncingBdenouncementB	denouncedBdenounceBdenmarkBdeniabilityBdenBdempseysBdempseyBdemonstratorsBdemonstratorBdemonstrationBdemonstratingBdemonsB	demonizesBdemonicallyBdemocratrepublicanB
democracysBdementiaBdementedB	demagogueBdemBdeloitteBdellaBdellBdeliverymanB	delistingB	deliriousB
delightingB
delightfulBdelightBdeliciouslyB
delicatelyBdeliberationsBdeliberatelyBdelhiB
delevingneBdeletionBdelegitimizeBdelawareBdelariaBdelargeBdekkersBdejectedBdeityBdeignB	degradingBdegeneratesBdegasBdefyBdefundedBdefunctBdeftlyB	defrostedB	defraudedBdeformedB	deflectedBdeflatesBdeflateBdefinitivelyBdefinitionsBdefinedBdefiedBdeficienciesBdeferredB
defermentsBdefensesectorBdefenselessBdefectsB	defectiveBdefectB	defeatingB
defaultingBdefangedBdefameBdefBdeeuphemizedBdeetsB	deepwaterBdeepfakeBdeepestBdeemphasizeBdeedsBdeedeeBdeedBdeeBdeducedB
dedicationBdecryBdecriminalizingBdecriminalizeBdecreesB
decreasingB
decorativeBdecorationsBdecorBdecompressionBdecompositionBdeclinedBdeclassifiesBdeclassifiedB	declaringBdeclaredBdecksBdeckerBdecisiveBdecisionmakingB
decimatingB	decimatedBdecimalBdeceptivelyB	deceptionB	decembersBdecayingBdecayedBdecapitationsBdecafBdecadeslongBdecadentBdebunksB	debunkingBdebunkedBdebtsBdebtreductionBdebtfreeBdebriefsBdebraBdebitBdebatingBdebatedBdebBdeavereBdeaverBdeathrowBdeasBdeansBdeadpoolBdeadpanBdeadonarrivalB
deadlockedB	deadlinesBdeadlierBdeadeyedBdeadbeatBdeaBdckBdcccBdazzleBdazeBdaytonBdaylongBdaylewisBdaydreamingBdaxBdawsonsBdawkinsBdawgBdavissBdavesB	davenportBdavanzoBdatedBdatasB	dataentryB
datadrivenB	databasesBdashingBdashesBdashaBdashBdaschaBdasaniBdarylBdarthBdartBdarrelleBdarrellBdarlaBdarklyBdarkestBdariusBdargersBdarfurbasedBdaredBdarcyBdaqneeshBdapperlyBdapperBdaplBdaphneBdanzasBdanzaBdanubeBdansonBdanishesBdanishBdanicaBdanglingBdangeloBdaneBdancyBdancesBdancedB	danceclubBdanaBdamsBdamoresBdamonsBdamnsBdamnedBdamagedBdalvinBdalitBdalisBdaleysBdakotansBdagestanBdaftBdafoeBdadpopBdadaBcüneytBcystBcynicsBcynicismBcyndiBcylindricalB	cylindersBcyclistsBcyclingB
cyberspaceBcybergrannyBcyberbullyingBcyanideBcwsBcvsbrandB	cutthroatB	cutscenesBcutoffBcutletBcutleryBcuterBcutbacksBcutbackB
customizesBcustardBcusslerBcushionBcurtainsBcursorBcursiveBcursingBcursesBcurrysBcurriedB
curriculumBcuringBcurfewsBcuresBcurdledB
cupwearingBcuppedBcupidBcuomosBcuocoB	cunninglyBculturefocusedBcultivatingB	cultivateB	culminateBculkinBcujoBcuisineBcuesBcueBcuddlyBcuddlingBcuddleBcucumberBcuckooB	cuckoldedBcubicleBcubesBcubasBctrlBctoBcteBcsuiteBcsiBcsaBcrüeBcrèmeBcrystalsBcryptographersBcruzsBcrustedBcrushworthyBcrusadesBcrunchyBcrunchinessB
crumpledupBcrumbsB	crumblingBcrullersBcruiserBcruellyBcruelestBcrucifixB	crucifiedBcrowsBcrownsBcrownedBcroweBcrowdsBcrowdfundgineeringBcroutonsB
crotchlessBcrotchBcrostiniBcrossserviceB
crosshairsBcrossfitBcrosscountryBcrosbyBcroppedBcrookBcronyistBcronyBcroniesBcritterB
critiquingBcriteriaBcriteoBcrissBcrispyBcrispBcrippleBcringeworthyBcriminalizesBcrimeanB
cribsstyleBcreteBcrennasBcremeinjectingBcremeB	cremationBcrematedBcreepingB	creepiestBcreedB	creditorsBcreditedBcrediblyBcredibilityBcredentialsB	creationsBcreationistB	creampuffBcreamedBcreakingBcrazybeautifulBcraziestBcraziesBcrayonBcrayolaBcrawlspacesBcrapsB	cranstonsBcranstonBcrankBcranesBcraneB	cranberryBcraggyB	craftsmanB
craftmaticBcraftedBcradlingBcrackleBcrackereatingBcrBcoyoteBcoyneBcoyB
cow—tonyB	cowritingBcoweringBcowellsBcowbellBcovetingBcovertBcoveB	courtsideB	courtshipB	courtroomBcourtorderedBcourteouslyBcoursingBcoursesBcourierB
courageousBcoupletsBcoupledBcountyclerkBcountrysideB	countlessBcountiesBcounterterroristsBcountersBcounterproductiveBcounterpartBcounterintuitiveBcountedBcounselsBcouncilwomenBcoultersBcoulierBcouldveBcoughsBcoughB
couchetardBcottonsBcostlyB	costliestBcostcuttingBcostasBcostaBcosplayBcosmoBcosmeBcosignBcortexBcortegeBcorsetsBcorsetB
corruptingBcorrugatedcardboardrelatedBcorrugatedcardboardBcorroborateB	corridorsBcorrectnessBcorralBcorpsesBcoronerBcoronaryBcoronaBcornyBcornrowBcornnutsBcornersB
cornerbackBcornelBcornedBcormacBcorleoneBcorkerBcorettaB	corduroysBcordlessB	corbusierBcorbettBcopyingBcopyeditingBcoppsBcopiedBcopelandBcopedBcoparentingBcop21Bcop20BcoordinatorBcoordinationBcoordinatesBcooptingBcoopersBcooperativeBcooperatingBcoopBcoolnessBcoollookingBcoolioBcookoutBcookedBcooglerBcooBconyersBconwaysB
convulsingBconvoyBconvincinglyBconvictsBconvictionsBconveyedBconvertsB	convertedBconverseBconversationalistBconvergenceBconventionsBconventiongoerBconvenientlyB	conundrumBcontrolsBcontrollableBcontributorBcontributesB
contributeB
contrarianBcontradictionB	contortedBcontortBcontinuouslyB
continuityBcontinuallyB
continentsB	continentBcontextlessBcontextdrivenBcontessaBcontentmentB
contentionB	contentedBcontendsB
contendingB	contenderBcontemptibleBcontemplatedBcontaminationBconsultsBconsultantsBconsulsB
constructsBconstructionistBconstrictiveBconstitutionsBconstituentB	constableB
conspiringBconspireBconspiraciesBconsolidationBconsolidateBconsistentlyBconsiderationsBconsiderableBconservatismBconservationsBconservationistB
conscienceBconsBconquersBconorBconnieBconneryBconnersBconnectsBconjureB	conjoinedBcongressawarenessBcongregationsBcongregationBcongregantsBcongratulationsBcongratulatesBcongratsBcongoBcongenialityB	congalineB	confoundsBconflictingBconfiscatedB
confirmingB	confidingBconfidentlyB
confessionBconfederacyBconesB
coneflowerBconeBconductor—reallyBcondoBconditioningBconditionersBcondescendinglyBcondescendingBcondenseB
condemningB	condemnedBcondemnationBconcursBconclusionsBconcludeBconciseBconcertgoerB
conceptualBconcentratesB
conceivingBconceivableB	concedingBconcedeBconairBcomriesBcomrieB	computersBcomptonBcompoundBcomposesB	composersBcomposerBcomposeB	complyingBcomplyB	complicitB
complicateBcompletistsB
completingBcomplainingB
complainedBcompilesBcompilationsBcompilationBcompetitorsB
competitorBcompetitivenessBcompetitionsB	competingBcompetenciesB
compendiumB
compellingBcompatriotsB
compatibleBcompassionateBcompassB
comparisonBcomoBcommuterBcommunitybasedBcommunisteraBcommonwealthBcommoditiesB
committingB
committeesBcommissionersBcommishBcommentatorB
commentaryBcommenceBcommemoratingBcommemoratesBcommemoratedBcommasBcommandmentB	comicbookBcomicalBcomfyBcomethBcometBcomedysBcomcastBcombosBcomboB	combiningBcombinedBcombineB
combattingBcombatsBcombBcoltsBcoltonBcoltBcolossalB	colorizedBcolorismBcoloredsBcoloreditingB
colorblindB
coloradansBcolonoscopyBcolonialismBcolonelB	colombiasBcolognedBcologneBcollieBcollectsB
collectorsB	collectedB
collapsingBcollaboratorBcollaboratingBcollaborateBcolitisBcoliseumBcoliBcolgateBcolesBcolemanBcoleadBcoldplayBcoldbloodedBcolaflavoredBcolBcokesBcokedoutBcoincidenceBcohostsBcohostBcohnsBcohnBcoherentBcohensBcogBcoffersB
coffeeshopBcoercingBcodepinkBcodependentBcodB	cocreatorBcocoonedBcocoaBcocoBcocktailpartyBcocktailnationcrazeBcocksuckersB
cocksuckerB	cockinessB	cockatielBcockBcobwebcoveredBcobraBcobblestoneBcobbledBcobbleBcobbBcobainBcoaxedBcoaxBcoatsBcoatlessB	coatcheckBcoastsBcoanchorBcoachsBcoachellagoersBco2BcnncomBcnncnnBclutchBclustersBclusterBcluesBclownsBcloutBcloudsBclottingBclothBclosuresBclosingsBclosedmindedB	closedmicBcloneyBclogsBclogBclockedBcloakedBcloacaBclivenBcliveBclipsB	clippingsBcliponBclinicalBclingsBclinchesBclinchBclimbingBclimbersBclimaxBclimaterelatedBcleverlyB	cleopatraBclenchesBclenchedBclemsonBclementinesBcleftBcleatsBclearingBclearerB
clearancesBcleanupBcleansedBcleanseB
claymationBclawsBclawBclausesBclauseBclaudeBclasssB
classroomsB	classiqueBclassifiedsB	classiestBclassicallyBclaritinBclarinetBclarifyBclaptonBclappingBclankBclandestineBclancyB	clamshellBclampsBclamBcksBcivilizationsBcityareaBcitrixB	citizenryBciteB	citationsB	cisgenderBcircumstantialBcircumcisionBcircuitBcirclesBcinnabonB
cinephilesBcinemaxBcinemarkBciminoBcilantroBcignaBcigarsBcigarettesmokingBcigarB	cicillineBciasB	ciarlelliBcianciBcialisBchuyB
churchillsB	churchillBchurchgoingBchunkingBchunkBchumpsBchummyBchumB	chucklingBchryslerB
chroniclesB	chronicleB
chromecastBchromatB
christopheBchristmas”BchristenBchoudaryBchoseBchorusBchoresBchoreographingBchoreographerBchordBchoppersBchongsBchongBchomskyBcholesterolBcholeraBchokedBchoirBchocolatesaucefilledBchocobastardBchloëBchlorineBchloeBchixxBchirpingBchiropractorBchipperB	chipmunksBchingBchinesemadeBchineseamericanBchimeB
chillinglyBchilisB	childlikeBchildishBchikfilaBchihulyB	chihuahuaBchidesBchicosBchicksBchickenonchickenB
chickeningB
chickadeesBchicagoareaB
chicagoansBchiaBcheyenneBchexBchevronBchevalB
chessboardBcherubsBcherriesB
cherishingBcherishBcheneysBchenBchemoBchemicallyfreeB
chekhovianBchefsBcheezburgerBcheetahBcheesestuffedBcheeserelatedBcheeseburgerstuffedBcheerleadersBcheeriosBcheeksBcheckupBcheckinBchechnyaBchechensBcheatingBcheatedBcheapassBchatterBchatrouletteBchatmanB	chastisesB	chastisedB
chartreuseBcharthBcharmsBcharmedBcharltonB
charlottesBcharleyhorseBcharlaB	charitiesB
charitableBcharismaticBcharismaBchargeyouatwhimBchargerB	chappelleBchaposBchapmanBchaplevB	chaplainsBchapecoenseBchanzuckerbergBchansB	channingsBchannelsurfingB
channelingB	channeledBchangsBchangedforthebetterBchangB
chandelierBchampsBchampB	chamomileBchamillionaireBchambersB
challengedBchalametBchakraBchakaB	chainsawsBchainsawBchagasBchafeeBchadBcgiBcftcBcessnaB	certaintyBcernBceremoniouslyBceremoniallyB
ceremonialBcenturiesoldBcentralsBcenteredB
centennialBcentenariansBcentauriBcensustakerBcensorB	cementingBcementedBcementBcellsBcellistBcellarBcelindaB	celestialBcelebrationsB
celebratedBcelebfilledB
celbritansBcedrickBcedarsBcecilyBcecilBcebuB	ceaselessBceaseanddesistBccdBccapBcaymanBcayleeBcavsBcavedBcausticB	cattrallsBcatsuitsB
cathedralsB	cathedralB	catharticBcatfightBcatersBcaterpillarBcateringBcaterinaB
categorizeBcategorizationBcateBcatchupBcatchphraseBcatcherBcatcallsB
catcallersBcatcallB	catatonicBcatastrophicB	catamaranB	catalogueBcataclysmicB
casualwearBcasualtyB
casualtiesBcastrosBcastlesBcassutoB	cassouletBcasinosBcashsBcashiersBcashewB	casamigosBcaryBcarvingBcarvesBcarvedBcarveB	cartwheelBcartsB
cartridgesB
cartoonistBcartographersBcartmanB	cartilageBcartgateBcartersBcartBcarryonBcarriersBcarreysBcarreyBcarreraB	carpetingBcarouselBcarnivorousBcarneysBcarnageBcarmineBcarmexBcarmenBcarmeloBcarlsonsBcarlsonBcarlosBcarloBcarliBcarlessB
carjackersB	carjackerB
caribbeansBcarharttB
caretakersBcaressB	caregiverBcarefreeBcareersB
careerlinkBcareerdefiningBcareensB
cardsstyleBcardiomyopathyBcardiganBcardiacBcardamomBcarbonmonoxideBcarbonbasedBcarboloadingBcaramoorBcaptivatingB	captionedBcapsulesBcapoteBcapnBcapitolsB
capitalistBcapeBcanyonsB
canvassingB	canvasserB	canvassedBcanvassBcanvasBcantorsB
cantaloupeBcansizedB	canonizesBcanonizationsBcanoeingB
cannonballBcandlerBcandlelightBcandidlyB	candidacyBcancunB	cancelingBcanbysBcanardB	canadiansBcamsBcampusesBcampfireB
camouflageBcamilaBcameosBcameltoeB	cambodianBcambodiaBcalvinBcalvesBcalumetBcalorieBcalmsBcalmerBcallingsBcalligraphyBcalleBcaligulaBcaliforniansB	calendarsBcalculusBcalculationsBcalaisBcakeshopBcakedecoratingBcajunBcaineBcainBcagingBcagefreeBcagedB	cafeteriaBcafepresscomBcaesarsBcaesarBcaddyBcadburyBcabletvBcablesBcabinsBcabernetBcabellosBcaBc3posBbébéBbywomenB
bystandingBbyrneBbyrdB
byproductsBbypassBbylawBbyblosB	buzzwordsBbuzzingB	buzzfeedsBbuzzerbeaterBbuzzedBbuttonupBbuttonsBbutteryBbutterworthsBbutterworthBbuttersB	butternutB
buttermilkB	buttercupBbuttercoveredB
buttdialedBbutchBbusybodyBbustlingBbustersBbusterBbustadBbusstopBbussiBbussesBbuskerBbusingBbusinessownedBbusinessmenBbusierBbushnellBbushesBbushedBbuseyBbusesBbuschBbuscemiBbusboyBburyingBburyBburwellBburtnickBburtBburritosBburrellBburqaB	burntdownBburnoutsBburnettBburnersB	burnedoutBburmeseBburmashavestyleB	burlesqueBburkinisBburkiniBburkinaBburgundyB
burgenlandBburenBbuoyantBbuntBbunsenBbunnyBbunkersBbunkerBbunglesBbundlesBbundleBbumpingBbumperBbumpedBbumbumBbumblingBbumblerBbumbleBbumBbullshtBbulliedBbulletproofBbulletinB	bulldozerBbulldogsBbulkBbulimiaBbulgingBbulgesB
bulbheatedBbulbBbuiltinBbuildersB
buildabearBbugnadoBbuglersBbugabooBbuffyBbuffsBbuffoonBbuffetsB
bufferzoneB	bufferingBbuenosBbuellerB	budgetingBbudgetconsciousBbuddhistBbudBbuckwildBbuckleyBbuckingBbuchananBbubblesBbubbaBbtchBbrûléeBbryantsB
brutalizedBbrushesBbrunoBbrunetteBbruisingBbruisedBbrugueraB	brueggersB
brownstoneBbrownribboncampaignB	brownfaceBbrowdersBbrowderBbrouhahaB	brotherlyBbrotherinlawBbrotherhoodBbrosnanB
brookstoneB	brooklynsB	brookingsBbrookeBbrontë–emilyBbrontëBbromanceBbrokeninBbrokenheartedB	brokebackBbrokawBbrodyB	broderickBbrochureBbrochuBbroccoliB	broadwellBbroadcasterBbroachedBbrittonsBbrittleBbrittanyBbritBbrisklyBbrisketBbriskBbrinkleyBbringyouuptodateBbrinegarBbrineBbrimsBbrimleyB	brightestBbrighterBbrigadeBbrienneBbriefsB
briefcasesBbridesmaidsB
bridesmaidBbridalinspiredBbricksBbribingBbribesBbriarBbriannaBbreyerBbrewingBbreweryB	breweriesBbrewBbreuerBbretBbreslinBbrennanBbrendanBbreezyBbreezeBbreesBbreedingBbreedersBbreedBbreathtakinglyBbreathsBbreatherB	breastfedBbreak — focusingBbreakthroughsBbreakthefastBbreakoutB	breakneckB
breakdownsBbreakdancingB
breadstickBbreachesBbreachedB
braziliansBbrazilesBbrazenlyBbraxtonsBbraxtonBbrawlsBbravesBbraunsB	bratwurstB
brangelinaB	brandnameBbrandingBbrandedBbranchesBbralessBbrakesBbrainwashingBbrainwashedBbrainsB
brainpowerB	brainfoodBbrailleBbradysB	bradburysBbracketsBbracketologicalBbracketB	braceletsBbpsBboyntonBboylesBboyhoodBboyegaB	boycottedBboybandBbowiesBboweryBboweBbourbonBboundsBboundingBbouncesBbounceounceBbounceBbouludBboulosBbouldersB
bouillerieBboudoirBbottomupBbottomsBbotoxBbothersBbotchBbotanyB	botanistsBbotanistBbosniaBbosleyBbosemanBboseB	borrowingB	borrowersBborneoBborneBboresBboredomBbopBboozeonmeatwithcheeseBboothBboostsBboostingBboostersBboorBboomerstyleB	bookwormsB	bookshelfBbookoutBbookishBbookclubBboogieBboocowsB
boobytrapsBboobytrappingBboobytrappedBbonusesBbonoboBbonoautographedBbonkersBbonfireBboneshakingBbondinspiredBbondagefetishBbomerB
bombmakersBbombinksBbombieBboltonsBboltingBboltedBboltBbolstersBbollingB	bolivianoBbolivianBbokoB	bojanglesBboitanoBbohemianBbogotáB	bogosiansBbogettisBbogBbodysuitBbodyslamBbodymateBbodymassageBbodyhairmowingB
bodyguardsBbodybuildingBbodybuildersBbodilyBbodBbocceBbocaBbobsledBboatingBboastsBboastB	boardwalkB	boardgameBblvdBbluthsBblurBbluntBblunderBbluffsB	bluetoothB	blueprintB	blowtorchBblownoffBblowholeBblowfishBblottingBblossomB	bloomsdayBbloomsB
bloombergsBbloodsuckingBbloodstreamB	bloodshotB	bloodshedBbloodredB	bloodlustB	bloodlessBbloodiedB	bloodfestBblooddrenchedBbloodcoveredBblondBblomkampBblogsBblogosphereBbloggingBblockbustersB
blockadingBblobsBblmBblizzconBblitzesBblitzersBblitzerBblissfulB
blissedoutBblissB
blingblingB
blindinglyBblindingBblindfaithbasedBblindedBbligeBblendBblemishBbleedsB
blearyeyedB	bleachingBblazingBblazersBblazerBblatterB	blatantlyBblaseysBblaringBblanklyBblankenshipsBblankBblandsB	blanchettBblancB	blamelessBblairsBbladesBbladeB
blackwaterB
blacksmithBblackrubbercladBblackoutBblackonblackB	blacknessB	blackhawkBblackerBblackcappedB
blackberryBblackamericanBblacBbjornB	bizarrelyBbizBbivBbittenBbitsysB
bitohoneysBbitchyBbisquickBbishopsBbishopBbisexualBbiscottiBbirthsB
birthrightBbirthersB
birtherismBbirkenstocksBbirdseedBbirdnapsB	birdhouseBbipolarBbiplanesBbiotechBbionicBbiomomsBbiomomB
biomedicalBbiologyBbiographersB
biographerBbiodegradableBbiochemicalB	binomialsBbingoBbingelisteningB	bingeeatsBbingedrinkingBbinaryB	billowingBbillionnaireBbillieB	billiardsBbillcosbycomBbiliousB
bikinicladBbikesharingBbikesBbikerB	bigscreenBbigotsBbignameBbiggieBbigelowBbiebersBbidingBbidderB	bicuriousB	bickeringBbicentennialBbiceBbibhuBbialikB	bhutaneseBbhpBbhararaBbhangraBbhBbffsBbeyoncesBbeyelerB
bewilderedBbewiggedBbeverlyBbettyBbettingBbetterpayingBbetrayerB
betelgeuseBbetacuckBbetaB
bestsellerBbestowsBbestlaidBbestkeptBbestivalBbestieBbesiegedBbertolliBbertBberserkBberriliciousBberriesB	bernsteinBbernsBberningBberninBberniceB	bernankesB
bernadetteBbermudaBberleBberkusBberatesBberatedBbensonBbennetBbenjaminBbenitoBbenioffBbenhurB
benevolentB	benefitedBbeneficiaryBbendsB	benchmarkBbenatarBbenadrylBbelushiBbeltingB
belongingsB	belongingB
bellwetherBbellkfcB
bellisarioBbelligerentBbellhopBbellesBbelleBbelizeB	belittlesBbelgradeBbelgiumsBbelgianB	belatedlyB	belamidesB	belafonteBbelBbejewelBbeijingbackedBbehindthebackB
beheadingsBbehavingBbeharBbehaivorB	beguilingB	beginnersBbeggarBbegetBbefriendBbeforeandafterBbeetlesB
beethovensBbeetBbeepingBbeelinesBbeeksB
beekeepingBbeefsBbedsoreriddenBbedsideB
bedhoggingBbedbugsBbeckonsB	beckoningBbeckerBbechdelBbebopBbeaverBbeavanBbeauBbeatzBbeattyBbeatlesB	beatifiesB
beatboxersBbeastieBbearorBbearableBbealsBbeaconBbeachinspiredB
beachgoersBbeachedBbbqsBbbBbazookaBbaylorBbayleeBbayhBbayerBbawdylimerickBbavarianB	bautistasBbatumiBbattlegroundBbattlefrontBbattlefieldBbatteryBbattersB	batteringBbatterBbattensBbatshitzaniaBbathtubBbathsBbathroomdisinfectantBbatgirlBbatesBbatboyBbataliBbataclanBbastilleB
bassnectarBbassettBbassetBbasksBbasisBbasicsB	basicallyBbashfulBbasesBbaselB	baseballsBbartonBbarronBbarringBbarracksBbaronsBbarnacleBbarlowBbarleyBbarkingBbarkerB
barinholtzBbargoersBbargingBbargainBbareknuckleBbaredB	barcelonaBbarcaB
barbershopBbarbersB
barbedwireBbarbaricB	barbarianBbarbadosB	baptizingBbaptismBbankruptingBbankrollBbanjowieldingBbanjoBbanisterBbanishedBbangkokBbangerzBbangersBbanfieldB	bandmatesBbandaiBbananaobsessedBbalsamBbalmainBballscopyingBballplayersBballmerBballisticpropulsionBballgownBballetsBballetBballedBballadBbalksBbalesBbalancesBbaklavaBbakingBbakerysBbakeryBbakerBbakedBbajaBbaitingBbaitBbaioBbainBbailsBbailoutBbailiffBbailBbaierBbahrainBbahamaBbahaiBbaggiesBbagelsBbaftasBbaeBbaduB	badtzmaruB	badmouthsBbadmouthingB	badmintonBbadgerBbaconscentedBbaconsB	backyardsB
backwatersBbackwardscompatibleBbackwardB
backtobackBbackpageBbackpackersB
backloggedBbacklogBbackflipBbackfireBbackersBbachataBbacchanaliaB
babyshowerBbabylonB	babyfacedB
baboonfaceBbaboonBbaaaaackBaztecBazoresBazealiaBayurvedaBaynBaykroydsBaykroydBayeshaB	ayahuascaBaxlBaxisBaxingBaxelrodsBaxelBaxactBaxBawokenBawfullyB	awestruckBaweismBawashBaward–nominatedBawardeeB	awakeningBawakenedBavoidedBavidstampcollectorBaviatorwearingBaveryBavertBavengedBavengeBavenattiBaveageB
avalanchesBautumnB
autonomousB
automakersBautographedB	autographB
autoeroticBautoenrolledB
autocraticBautocorrectBauthorpublisherBauthorizingB	authorizeBauthorizationBauthoritarianismBauthoritarianBauthoredBauthenticallyB	authenticBaustriasBaustraliansBaustenB	augmentedBaugerB
auditoriumBauditBaudibleB	audaciousB
auctioningBatttimeB
attributesBattractionsB	attractedB	attorneysBattireBatticBattentivelyB
attendantsBattenboroughB
attainableBattainB
attachmentBattachBatopBatonyBatoneBatonalBatmsBatmBatlantaareaB	atheletesBatatBatariBasylumseekersBasylumsBasyetunreleasedBastronomicalB
astronautsB	astrologyBastrologicalBastridBastrazenecaBastrayB
asthmaticsB	asthmaticBasteroidB	asterisksBasteriskB	assuranceBassortedBassociationsB
associatesB	associateB
assistanceB
assimilateBassignsB	assigningBassetsB
assemblingB	assemblesB
assemblageBassassinatedBassailsBaspirinBaspirationsBasphyxiationBaspcaB	asparagusBaslansBasimoBasiasBasianamericansBashtrayBashtangaBashrafBashoreBashleighB	ashevilleBashantiBasgharBasexualsB	asexuallyBasexualBasceticBascentBasbellBasapBaryaB	artweeklaBartistorBartisticB	artisanalBarticulatedBarthurBarthouseBarthamptonsBarteriesBarsonsBarsonBarsenicBarsenalB	arseholesBarrogantB	arroganceBarrietaBarrhythmicallyB	arrangingBaroldisBarnothBarneBarmysB
armstrongsB	armstrongBarmourBarmoredBarmenianBarmchairBarkinB	arkansansBarkBarizonasBarisesBarielBariBargoBargentinianBareteB
archivistsBarchiveBarchitectureBarchitecturalB
architectsBarchieBarcheryBarchaeologistBarcaneBarcBarbusBaramBarafatsBarabicBaraaBar15Baquatic
??
Const_5Const*
_output_shapes

:ֳ*
dtype0	*͝
valueB??	ֳ"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:       ;      ;      ;      ;      ;      ;      ;      ;      ;      	;      
;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;       ;      !;      ";      #;      $;      %;      &;      ';      (;      );      *;      +;      ,;      -;      .;      /;      0;      1;      2;      3;      4;      5;      6;      7;      8;      9;      :;      ;;      <;      =;      >;      ?;      @;      A;      B;      C;      D;      E;      F;      G;      H;      I;      J;      K;      L;      M;      N;      O;      P;      Q;      R;      S;      T;      U;      V;      W;      X;      Y;      Z;      [;      \;      ];      ^;      _;      `;      a;      b;      c;      d;      e;      f;      g;      h;      i;      j;      k;      l;      m;      n;      o;      p;      q;      r;      s;      t;      u;      v;      w;      x;      y;      z;      {;      |;      };      ~;      ;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;       <      <      <      <      <      <      <      <      <      	<      
<      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <       <      !<      "<      #<      $<      %<      &<      '<      (<      )<      *<      +<      ,<      -<      .<      /<      0<      1<      2<      3<      4<      5<      6<      7<      8<      9<      :<      ;<      <<      =<      ><      ?<      @<      A<      B<      C<      D<      E<      F<      G<      H<      I<      J<      K<      L<      M<      N<      O<      P<      Q<      R<      S<      T<      U<      V<      W<      X<      Y<      Z<      [<      \<      ]<      ^<      _<      `<      a<      b<      c<      d<      e<      f<      g<      h<      i<      j<      k<      l<      m<      n<      o<      p<      q<      r<      s<      t<      u<      v<      w<      x<      y<      z<      {<      |<      }<      ~<      <      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<       =      =      =      =      =      =      =      =      =      	=      
=      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =       =      !=      "=      #=      $=      %=      &=      '=      (=      )=      *=      +=      ,=      -=      .=      /=      0=      1=      2=      3=      4=      5=      6=      7=      8=      9=      :=      ;=      <=      ==      >=      ?=      @=      A=      B=      C=      D=      E=      F=      G=      H=      I=      J=      K=      L=      M=      N=      O=      P=      Q=      R=      S=      T=      U=      V=      W=      X=      Y=      Z=      [=      \=      ]=      ^=      _=      `=      a=      b=      c=      d=      e=      f=      g=      h=      i=      j=      k=      l=      m=      n=      o=      p=      q=      r=      s=      t=      u=      v=      w=      x=      y=      z=      {=      |=      }=      ~=      =      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=       >      >      >      >      >      >      >      >      >      	>      
>      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >       >      !>      ">      #>      $>      %>      &>      '>      (>      )>      *>      +>      ,>      ->      .>      />      0>      1>      2>      3>      4>      5>      6>      7>      8>      9>      :>      ;>      <>      =>      >>      ?>      @>      A>      B>      C>      D>      E>      F>      G>      H>      I>      J>      K>      L>      M>      N>      O>      P>      Q>      R>      S>      T>      U>      V>      W>      X>      Y>      Z>      [>      \>      ]>      ^>      _>      `>      a>      b>      c>      d>      e>      f>      g>      h>      i>      j>      k>      l>      m>      n>      o>      p>      q>      r>      s>      t>      u>      v>      w>      x>      y>      z>      {>      |>      }>      ~>      >      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>       ?      ?      ?      ?      ?      ?      ?      ?      ?      	?      
?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       ?      !?      "?      #?      $?      %?      &?      '?      (?      )?      *?      +?      ,?      -?      .?      /?      0?      1?      2?      3?      4?      5?      6?      7?      8?      9?      :?      ;?      <?      =?      >?      ??      @?      A?      B?      C?      D?      E?      F?      G?      H?      I?      J?      K?      L?      M?      N?      O?      P?      Q?      R?      S?      T?      U?      V?      W?      X?      Y?      Z?      [?      \?      ]?      ^?      _?      `?      a?      b?      c?      d?      e?      f?      g?      h?      i?      j?      k?      l?      m?      n?      o?      p?      q?      r?      s?      t?      u?      v?      w?      x?      y?      z?      {?      |?      }?      ~?      ?      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??       @      @      @      @      @      @      @      @      @      	@      
@      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      !@      "@      #@      $@      %@      &@      '@      (@      )@      *@      +@      ,@      -@      .@      /@      0@      1@      2@      3@      4@      5@      6@      7@      8@      9@      :@      ;@      <@      =@      >@      ?@      @@      A@      B@      C@      D@      E@      F@      G@      H@      I@      J@      K@      L@      M@      N@      O@      P@      Q@      R@      S@      T@      U@      V@      W@      X@      Y@      Z@      [@      \@      ]@      ^@      _@      `@      a@      b@      c@      d@      e@      f@      g@      h@      i@      j@      k@      l@      m@      n@      o@      p@      q@      r@      s@      t@      u@      v@      w@      x@      y@      z@      {@      |@      }@      ~@      @      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@       A      A      A      A      A      A      A      A      A      	A      
A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A       A      !A      "A      #A      $A      %A      &A      'A      (A      )A      *A      +A      ,A      -A      .A      /A      0A      1A      2A      3A      4A      5A      6A      7A      8A      9A      :A      ;A      <A      =A      >A      ?A      @A      AA      BA      CA      DA      EA      FA      GA      HA      IA      JA      KA      LA      MA      NA      OA      PA      QA      RA      SA      TA      UA      VA      WA      XA      YA      ZA      [A      \A      ]A      ^A      _A      `A      aA      bA      cA      dA      eA      fA      gA      hA      iA      jA      kA      lA      mA      nA      oA      pA      qA      rA      sA      tA      uA      vA      wA      xA      yA      zA      {A      |A      }A      ~A      A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A       B      B      B      B      B      B      B      B      B      	B      
B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B       B      !B      "B      #B      $B      %B      &B      'B      (B      )B      *B      +B      ,B      -B      .B      /B      0B      1B      2B      3B      4B      5B      6B      7B      8B      9B      :B      ;B      <B      =B      >B      ?B      @B      AB      BB      CB      DB      EB      FB      GB      HB      IB      JB      KB      LB      MB      NB      OB      PB      QB      RB      SB      TB      UB      VB      WB      XB      YB      ZB      [B      \B      ]B      ^B      _B      `B      aB      bB      cB      dB      eB      fB      gB      hB      iB      jB      kB      lB      mB      nB      oB      pB      qB      rB      sB      tB      uB      vB      wB      xB      yB      zB      {B      |B      }B      ~B      B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B       C      C      C      C      C      C      C      C      C      	C      
C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C       C      !C      "C      #C      $C      %C      &C      'C      (C      )C      *C      +C      ,C      -C      .C      /C      0C      1C      2C      3C      4C      5C      6C      7C      8C      9C      :C      ;C      <C      =C      >C      ?C      @C      AC      BC      CC      DC      EC      FC      GC      HC      IC      JC      KC      LC      MC      NC      OC      PC      QC      RC      SC      TC      UC      VC      WC      XC      YC      ZC      [C      \C      ]C      ^C      _C      `C      aC      bC      cC      dC      eC      fC      gC      hC      iC      jC      kC      lC      mC      nC      oC      pC      qC      rC      sC      tC      uC      vC      wC      xC      yC      zC      {C      |C      }C      ~C      C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C       D      D      D      D      D      D      D      D      D      	D      
D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D       D      !D      "D      #D      $D      %D      &D      'D      (D      )D      *D      +D      ,D      -D      .D      /D      0D      1D      2D      3D      4D      5D      6D      7D      8D      9D      :D      ;D      <D      =D      >D      ?D      @D      AD      BD      CD      DD      ED      FD      GD      HD      ID      JD      KD      LD      MD      ND      OD      PD      QD      RD      SD      TD      UD      VD      WD      XD      YD      ZD      [D      \D      ]D      ^D      _D      `D      aD      bD      cD      dD      eD      fD      gD      hD      iD      jD      kD      lD      mD      nD      oD      pD      qD      rD      sD      tD      uD      vD      wD      xD      yD      zD      {D      |D      }D      ~D      D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D       E      E      E      E      E      E      E      E      E      	E      
E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E       E      !E      "E      #E      $E      %E      &E      'E      (E      )E      *E      +E      ,E      -E      .E      /E      0E      1E      2E      3E      4E      5E      6E      7E      8E      9E      :E      ;E      <E      =E      >E      ?E      @E      AE      BE      CE      DE      EE      FE      GE      HE      IE      JE      KE      LE      ME      NE      OE      PE      QE      RE      SE      TE      UE      VE      WE      XE      YE      ZE      [E      \E      ]E      ^E      _E      `E      aE      bE      cE      dE      eE      fE      gE      hE      iE      jE      kE      lE      mE      nE      oE      pE      qE      rE      sE      tE      uE      vE      wE      xE      yE      zE      {E      |E      }E      ~E      E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E       F      F      F      F      F      F      F      F      F      	F      
F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F       F      !F      "F      #F      $F      %F      &F      'F      (F      )F      *F      +F      ,F      -F      .F      /F      0F      1F      2F      3F      4F      5F      6F      7F      8F      9F      :F      ;F      <F      =F      >F      ?F      @F      AF      BF      CF      DF      EF      FF      GF      HF      IF      JF      KF      LF      MF      NF      OF      PF      QF      RF      SF      TF      UF      VF      WF      XF      YF      ZF      [F      \F      ]F      ^F      _F      `F      aF      bF      cF      dF      eF      fF      gF      hF      iF      jF      kF      lF      mF      nF      oF      pF      qF      rF      sF      tF      uF      vF      wF      xF      yF      zF      {F      |F      }F      ~F      F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F       G      G      G      G      G      G      G      G      G      	G      
G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G       G      !G      "G      #G      $G      %G      &G      'G      (G      )G      *G      +G      ,G      -G      .G      /G      0G      1G      2G      3G      4G      5G      6G      7G      8G      9G      :G      ;G      <G      =G      >G      ?G      @G      AG      BG      CG      DG      EG      FG      GG      HG      IG      JG      KG      LG      MG      NG      OG      PG      QG      RG      SG      TG      UG      VG      WG      XG      YG      ZG      [G      \G      ]G      ^G      _G      `G      aG      bG      cG      dG      eG      fG      gG      hG      iG      jG      kG      lG      mG      nG      oG      pG      qG      rG      sG      tG      uG      vG      wG      xG      yG      zG      {G      |G      }G      ~G      G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G       H      H      H      H      H      H      H      H      H      	H      
H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H       H      !H      "H      #H      $H      %H      &H      'H      (H      )H      *H      +H      ,H      -H      .H      /H      0H      1H      2H      3H      4H      5H      6H      7H      8H      9H      :H      ;H      <H      =H      >H      ?H      @H      AH      BH      CH      DH      EH      FH      GH      HH      IH      JH      KH      LH      MH      NH      OH      PH      QH      RH      SH      TH      UH      VH      WH      XH      YH      ZH      [H      \H      ]H      ^H      _H      `H      aH      bH      cH      dH      eH      fH      gH      hH      iH      jH      kH      lH      mH      nH      oH      pH      qH      rH      sH      tH      uH      vH      wH      xH      yH      zH      {H      |H      }H      ~H      H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H       I      I      I      I      I      I      I      I      I      	I      
I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I       I      !I      "I      #I      $I      %I      &I      'I      (I      )I      *I      +I      ,I      -I      .I      /I      0I      1I      2I      3I      4I      5I      6I      7I      8I      9I      :I      ;I      <I      =I      >I      ?I      @I      AI      BI      CI      DI      EI      FI      GI      HI      II      JI      KI      LI      MI      NI      OI      PI      QI      RI      SI      TI      UI      VI      WI      XI      YI      ZI      [I      \I      ]I      ^I      _I      `I      aI      bI      cI      dI      eI      fI      gI      hI      iI      jI      kI      lI      mI      nI      oI      pI      qI      rI      sI      tI      uI      vI      wI      xI      yI      zI      {I      |I      }I      ~I      I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I       J      J      J      J      J      J      J      J      J      	J      
J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J       J      !J      "J      #J      $J      %J      &J      'J      (J      )J      *J      +J      ,J      -J      .J      /J      0J      1J      2J      3J      4J      5J      6J      7J      8J      9J      :J      ;J      <J      =J      >J      ?J      @J      AJ      BJ      CJ      DJ      EJ      FJ      GJ      HJ      IJ      JJ      KJ      LJ      MJ      NJ      OJ      PJ      QJ      RJ      SJ      TJ      UJ      VJ      WJ      XJ      YJ      ZJ      [J      \J      ]J      ^J      _J      `J      aJ      bJ      cJ      dJ      eJ      fJ      gJ      hJ      iJ      jJ      kJ      lJ      mJ      nJ      oJ      pJ      qJ      rJ      sJ      tJ      uJ      vJ      wJ      xJ      yJ      zJ      {J      |J      }J      ~J      J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J       K      K      K      K      K      K      K      K      K      	K      
K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K       K      !K      "K      #K      $K      %K      &K      'K      (K      )K      *K      +K      ,K      -K      .K      /K      0K      1K      2K      3K      4K      5K      6K      7K      8K      9K      :K      ;K      <K      =K      >K      ?K      @K      AK      BK      CK      DK      EK      FK      GK      HK      IK      JK      KK      LK      MK      NK      OK      PK      QK      RK      SK      TK      UK      VK      WK      XK      YK      ZK      [K      \K      ]K      ^K      _K      `K      aK      bK      cK      dK      eK      fK      gK      hK      iK      jK      kK      lK      mK      nK      oK      pK      qK      rK      sK      tK      uK      vK      wK      xK      yK      zK      {K      |K      }K      ~K      K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K       L      L      L      L      L      L      L      L      L      	L      
L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L       L      !L      "L      #L      $L      %L      &L      'L      (L      )L      *L      +L      ,L      -L      .L      /L      0L      1L      2L      3L      4L      5L      6L      7L      8L      9L      :L      ;L      <L      =L      >L      ?L      @L      AL      BL      CL      DL      EL      FL      GL      HL      IL      JL      KL      LL      ML      NL      OL      PL      QL      RL      SL      TL      UL      VL      WL      XL      YL      ZL      [L      \L      ]L      ^L      _L      `L      aL      bL      cL      dL      eL      fL      gL      hL      iL      jL      kL      lL      mL      nL      oL      pL      qL      rL      sL      tL      uL      vL      wL      xL      yL      zL      {L      |L      }L      ~L      L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L       M      M      M      M      M      M      M      M      M      	M      
M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M       M      !M      "M      #M      $M      %M      &M      'M      (M      )M      *M      +M      ,M      -M      .M      /M      0M      1M      2M      3M      4M      5M      6M      7M      8M      9M      :M      ;M      <M      =M      >M      ?M      @M      AM      BM      CM      DM      EM      FM      GM      HM      IM      JM      KM      LM      MM      NM      OM      PM      QM      RM      SM      TM      UM      VM      WM      XM      YM      ZM      [M      \M      ]M      ^M      _M      `M      aM      bM      cM      dM      eM      fM      gM      hM      iM      jM      kM      lM      mM      nM      oM      pM      qM      rM      sM      tM      uM      vM      wM      xM      yM      zM      {M      |M      }M      ~M      M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M       N      N      N      N      N      N      N      N      N      	N      
N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N       N      !N      "N      #N      $N      %N      &N      'N      (N      )N      *N      +N      ,N      -N      .N      /N      0N      1N      2N      3N      4N      5N      6N      7N      8N      9N      :N      ;N      <N      =N      >N      ?N      @N      AN      BN      CN      DN      EN      FN      GN      HN      IN      JN      KN      LN      MN      NN      ON      PN      QN      RN      SN      TN      UN      VN      WN      XN      YN      ZN      [N      \N      ]N      ^N      _N      `N      aN      bN      cN      dN      eN      fN      gN      hN      iN      jN      kN      lN      mN      nN      oN      pN      qN      rN      sN      tN      uN      vN      wN      xN      yN      zN      {N      |N      }N      ~N      N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N      ?N       O      O      O      O      O      O      O      O      O      	O      
O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O      O       O      !O      "O      #O      $O      %O      &O      'O      (O      )O      *O      +O      ,O      -O      .O      /O      0O      1O      2O      3O      4O      5O      6O      7O      8O      9O      :O      ;O      <O      =O      >O      ?O      @O      AO      BO      CO      DO      EO      FO      GO      HO      IO      JO      KO      LO      MO      NO      OO      PO      QO      RO      SO      TO      UO      VO      WO      XO      YO      ZO      [O      \O      ]O      ^O      _O      `O      aO      bO      cO      dO      eO      fO      gO      hO      iO      jO      kO      lO      mO      nO      oO      pO      qO      rO      sO      tO      uO      vO      wO      xO      yO      zO      {O      |O      }O      ~O      O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O      ?O       P      P      P      P      P      P      P      P      P      	P      
P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P      P       P      !P      "P      #P      $P      %P      &P      'P      (P      )P      *P      +P      ,P      -P      .P      /P      0P      1P      2P      3P      4P      5P      6P      7P      8P      9P      :P      ;P      <P      =P      >P      ?P      @P      AP      BP      CP      DP      EP      FP      GP      HP      IP      JP      KP      LP      MP      NP      OP      PP      QP      RP      SP      TP      UP      VP      WP      XP      YP      ZP      [P      \P      ]P      ^P      _P      `P      aP      bP      cP      dP      eP      fP      gP      hP      iP      jP      kP      lP      mP      nP      oP      pP      qP      rP      sP      tP      uP      vP      wP      xP      yP      zP      {P      |P      }P      ~P      P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P      ?P       Q      Q      Q      Q      Q      Q      Q      Q      Q      	Q      
Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q      Q       Q      !Q      "Q      #Q      $Q      %Q      &Q      'Q      (Q      )Q      *Q      +Q      ,Q      -Q      .Q      /Q      0Q      1Q      2Q      3Q      4Q      5Q      6Q      7Q      8Q      9Q      :Q      ;Q      <Q      =Q      >Q      ?Q      @Q      AQ      BQ      CQ      DQ      EQ      FQ      GQ      HQ      IQ      JQ      KQ      LQ      MQ      NQ      OQ      PQ      QQ      RQ      SQ      TQ      UQ      VQ      WQ      XQ      YQ      ZQ      [Q      \Q      ]Q      ^Q      _Q      `Q      aQ      bQ      cQ      dQ      eQ      fQ      gQ      hQ      iQ      jQ      kQ      lQ      mQ      nQ      oQ      pQ      qQ      rQ      sQ      tQ      uQ      vQ      wQ      xQ      yQ      zQ      {Q      |Q      }Q      ~Q      Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q      ?Q       R      R      R      R      R      R      R      R      R      	R      
R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R      R       R      !R      "R      #R      $R      %R      &R      'R      (R      )R      *R      +R      ,R      -R      .R      /R      0R      1R      2R      3R      4R      5R      6R      7R      8R      9R      :R      ;R      <R      =R      >R      ?R      @R      AR      BR      CR      DR      ER      FR      GR      HR      IR      JR      KR      LR      MR      NR      OR      PR      QR      RR      SR      TR      UR      VR      WR      XR      YR      ZR      [R      \R      ]R      ^R      _R      `R      aR      bR      cR      dR      eR      fR      gR      hR      iR      jR      kR      lR      mR      nR      oR      pR      qR      rR      sR      tR      uR      vR      wR      xR      yR      zR      {R      |R      }R      ~R      R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R      ?R       S      S      S      S      S      S      S      S      S      	S      
S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S      S       S      !S      "S      #S      $S      %S      &S      'S      (S      )S      *S      +S      ,S      -S      .S      /S      0S      1S      2S      3S      4S      5S      6S      7S      8S      9S      :S      ;S      <S      =S      >S      ?S      @S      AS      BS      CS      DS      ES      FS      GS      HS      IS      JS      KS      LS      MS      NS      OS      PS      QS      RS      SS      TS      US      VS      WS      XS      YS      ZS      [S      \S      ]S      ^S      _S      `S      aS      bS      cS      dS      eS      fS      gS      hS      iS      jS      kS      lS      mS      nS      oS      pS      qS      rS      sS      tS      uS      vS      wS      xS      yS      zS      {S      |S      }S      ~S      S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S      ?S       T      T      T      T      T      T      T      T      T      	T      
T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T      T       T      !T      "T      #T      $T      %T      &T      'T      (T      )T      *T      +T      ,T      -T      .T      /T      0T      1T      2T      3T      4T      5T      6T      7T      8T      9T      :T      ;T      <T      =T      >T      ?T      @T      AT      BT      CT      DT      ET      FT      GT      HT      IT      JT      KT      LT      MT      NT      OT      PT      QT      RT      ST      TT      UT      VT      WT      XT      YT      ZT      [T      \T      ]T      ^T      _T      `T      aT      bT      cT      dT      eT      fT      gT      hT      iT      jT      kT      lT      mT      nT      oT      pT      qT      rT      sT      tT      uT      vT      wT      xT      yT      zT      {T      |T      }T      ~T      T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T      ?T       U      U      U      U      U      U      U      U      U      	U      
U      U      U      U      U      U      U      U      U      U      U      U      U      U      U      U      U      U      U      U      U      U       U      !U      "U      #U      $U      %U      &U      'U      (U      )U      *U      +U      ,U      -U      .U      /U      0U      1U      2U      3U      4U      5U      6U      7U      8U      9U      :U      ;U      <U      =U      >U      ?U      @U      AU      BU      CU      DU      EU      FU      GU      HU      IU      JU      KU      LU      MU      NU      OU      PU      QU      RU      SU      TU      UU      VU      WU      XU      YU      ZU      [U      \U      ]U      ^U      _U      `U      aU      bU      cU      dU      eU      fU      gU      hU      iU      jU      kU      lU      mU      nU      oU      pU      qU      rU      sU      tU      uU      vU      wU      xU      yU      zU      {U      |U      }U      ~U      U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U      ?U       V      V      V      V      V      V      V      V      V      	V      
V      V      V      V      V      V      V      V      V      V      V      V      V      V      V      V      V      V      V      V      V      V       V      !V      "V      #V      $V      %V      &V      'V      (V      )V      *V      +V      ,V      -V      .V      /V      0V      1V      2V      3V      4V      5V      6V      7V      8V      9V      :V      ;V      <V      =V      >V      ?V      @V      AV      BV      CV      DV      EV      FV      GV      HV      IV      JV      KV      LV      MV      NV      OV      PV      QV      RV      SV      TV      UV      VV      WV      XV      YV      ZV      [V      \V      ]V      ^V      _V      `V      aV      bV      cV      dV      eV      fV      gV      hV      iV      jV      kV      lV      mV      nV      oV      pV      qV      rV      sV      tV      uV      vV      wV      xV      yV      zV      {V      |V      }V      ~V      V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V      ?V       W      W      W      W      W      W      W      W      W      	W      
W      W      W      W      W      W      W      W      W      W      W      W      W      W      W      W      W      W      W      W      W      W       W      !W      "W      #W      $W      %W      &W      'W      (W      )W      *W      +W      ,W      -W      .W      /W      0W      1W      2W      3W      4W      5W      6W      7W      8W      9W      :W      ;W      <W      =W      >W      ?W      @W      AW      BW      CW      DW      EW      FW      GW      HW      IW      JW      KW      LW      MW      NW      OW      PW      QW      RW      SW      TW      UW      VW      WW      XW      YW      ZW      [W      \W      ]W      ^W      _W      `W      aW      bW      cW      dW      eW      fW      gW      hW      iW      jW      kW      lW      mW      nW      oW      pW      qW      rW      sW      tW      uW      vW      wW      xW      yW      zW      {W      |W      }W      ~W      W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W      ?W       X      X      X      X      X      X      X      X      X      	X      
X      X      X      X      X      X      X      X      X      X      X      X      X      X      X      X      X      X      X      X      X      X       X      !X      "X      #X      $X      %X      &X      'X      (X      )X      *X      +X      ,X      -X      .X      /X      0X      1X      2X      3X      4X      5X      6X      7X      8X      9X      :X      ;X      <X      =X      >X      ?X      @X      AX      BX      CX      DX      EX      FX      GX      HX      IX      JX      KX      LX      MX      NX      OX      PX      QX      RX      SX      TX      UX      VX      WX      XX      YX      ZX      [X      \X      ]X      ^X      _X      `X      aX      bX      cX      dX      eX      fX      gX      hX      iX      jX      kX      lX      mX      nX      oX      pX      qX      rX      sX      tX      uX      vX      wX      xX      yX      zX      {X      |X      }X      ~X      X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X      ?X       Y      Y      Y      Y      Y      Y      Y      Y      Y      	Y      
Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y      Y       Y      !Y      "Y      #Y      $Y      %Y      &Y      'Y      (Y      )Y      *Y      +Y      ,Y      -Y      .Y      /Y      0Y      1Y      2Y      3Y      4Y      5Y      6Y      7Y      8Y      9Y      :Y      ;Y      <Y      =Y      >Y      ?Y      @Y      AY      BY      CY      DY      EY      FY      GY      HY      IY      JY      KY      LY      MY      NY      OY      PY      QY      RY      SY      TY      UY      VY      WY      XY      YY      ZY      [Y      \Y      ]Y      ^Y      _Y      `Y      aY      bY      cY      dY      eY      fY      gY      hY      iY      jY      kY      lY      mY      nY      oY      pY      qY      rY      sY      tY      uY      vY      wY      xY      yY      zY      {Y      |Y      }Y      ~Y      Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      ?Y      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_14287
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_14292
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?&
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?&
value?&B?& B?&
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
z
'iter

(beta_1

)beta_2
	*decay
+learning_ratemVmW mXvYvZ v[*

1
2
 3*

0
1
 2*
* 
?
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

1serving_default* 
7
2lookup_table
3token_counts
4	keras_api*
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

D0
E1*
* 
* 
* 
R
F_initializer
G_create_resource
H_initialize
I_destroy_resource* 
?
J_create_resource
K_initialize
L_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	Mtotal
	Ncount
O	variables
P	keras_api*
H
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

M0
N1*

O	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Q0
R1*

T	variables*
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsdense/kernel
dense/bias*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_14172
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst_6*!
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_14383
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_14450??
?e
?
@__inference_Dense_layer_call_and_return_conditional_losses_13914
input_1Y
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	$
embedding_13904:س?
dense_13908:	?
dense_13910:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2a
 text_vectorization_1/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13904*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13677?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13610?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13908dense_13910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13693u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
,
__inference__destroyer_14252
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13610

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_13677

inputs	+
embedding_lookup_13671:س?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_13671inputs*
Tindices0	*)
_class
loc:@embedding_lookup/13671*,
_output_shapes
:??????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/13671*,
_output_shapes
:???????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_restore_fn_14279
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?O
?
!__inference__traced_restore_14450
file_prefix:
%assignvariableop_embedding_embeddings:س?2
assignvariableop_1_dense_kernel:	?+
assignvariableop_2_dense_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: "
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: D
/assignvariableop_12_adam_embedding_embeddings_m:س?:
'assignvariableop_13_adam_dense_kernel_m:	?3
%assignvariableop_14_adam_dense_bias_m:D
/assignvariableop_15_adam_embedding_embeddings_v:س?:
'assignvariableop_16_adam_dense_kernel_v:	?3
%assignvariableop_17_adam_dense_bias_v:
identity_19??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:8RestoreV2:tensors:9*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ^

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0^

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_adam_embedding_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_dense_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_dense_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)	%
#
_class
loc:@MutableHashTable
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_14199

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_14172
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:س?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_13600o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?p
?
 __inference__wrapped_model_13600
input_1_
[dense_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle`
\dense_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	6
2dense_text_vectorization_1_string_lookup_1_equal_y9
5dense_text_vectorization_1_string_lookup_1_selectv2_t	;
&dense_embedding_embedding_lookup_13585:س?=
*dense_dense_matmul_readvariableop_resource:	?9
+dense_dense_biasadd_readvariableop_resource:
identity??"Dense/dense/BiasAdd/ReadVariableOp?!Dense/dense/MatMul/ReadVariableOp? Dense/embedding/embedding_lookup?NDense/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2g
&Dense/text_vectorization_1/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
-Dense/text_vectorization_1/StaticRegexReplaceStaticRegexReplace/Dense/text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
"Dense/text_vectorization_1/SqueezeSqueeze6Dense/text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????m
,Dense/text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
4Dense/text_vectorization_1/StringSplit/StringSplitV2StringSplitV2+Dense/text_vectorization_1/Squeeze:output:05Dense/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
:Dense/text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
<Dense/text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
<Dense/text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
4Dense/text_vectorization_1/StringSplit/strided_sliceStridedSlice>Dense/text_vectorization_1/StringSplit/StringSplitV2:indices:0CDense/text_vectorization_1/StringSplit/strided_slice/stack:output:0EDense/text_vectorization_1/StringSplit/strided_slice/stack_1:output:0EDense/text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
<Dense/text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>Dense/text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>Dense/text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6Dense/text_vectorization_1/StringSplit/strided_slice_1StridedSlice<Dense/text_vectorization_1/StringSplit/StringSplitV2:shape:0EDense/text_vectorization_1/StringSplit/strided_slice_1/stack:output:0GDense/text_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0GDense/text_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
]Dense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast=Dense/text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
_Dense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast?Dense/text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
gDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeaDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
gDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
fDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdpDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0pDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
kDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
iDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateroDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0tDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
fDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastmDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
iDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
eDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxaDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
gDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
eDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2nDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0pDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
eDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuljDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0iDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
iDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumcDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0iDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
iDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumcDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0mDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
iDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
jDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountaDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0rDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
dDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_Dense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumqDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0mDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
hDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
dDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_Dense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2qDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0eDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0mDense/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
NDense/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2[dense_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle=Dense/text_vectorization_1/StringSplit/StringSplitV2:values:0\dense_text_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
0Dense/text_vectorization_1/string_lookup_1/EqualEqual=Dense/text_vectorization_1/StringSplit/StringSplitV2:values:02dense_text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
3Dense/text_vectorization_1/string_lookup_1/SelectV2SelectV24Dense/text_vectorization_1/string_lookup_1/Equal:z:05dense_text_vectorization_1_string_lookup_1_selectv2_tWDense/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
3Dense/text_vectorization_1/string_lookup_1/IdentityIdentity<Dense/text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????y
7Dense/text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
/Dense/text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
>Dense/text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor8Dense/text_vectorization_1/RaggedToTensor/Const:output:0<Dense/text_vectorization_1/string_lookup_1/Identity:output:0@Dense/text_vectorization_1/RaggedToTensor/default_value:output:0?Dense/text_vectorization_1/StringSplit/strided_slice_1:output:0=Dense/text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
 Dense/embedding/embedding_lookupResourceGather&dense_embedding_embedding_lookup_13585GDense/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*9
_class/
-+loc:@Dense/embedding/embedding_lookup/13585*,
_output_shapes
:??????????*
dtype0?
)Dense/embedding/embedding_lookup/IdentityIdentity)Dense/embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@Dense/embedding/embedding_lookup/13585*,
_output_shapes
:???????????
+Dense/embedding/embedding_lookup/Identity_1Identity2Dense/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????w
5Dense/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
#Dense/global_average_pooling1d/MeanMean4Dense/embedding/embedding_lookup/Identity_1:output:0>Dense/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
!Dense/dense/MatMul/ReadVariableOpReadVariableOp*dense_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
Dense/dense/MatMulMatMul,Dense/global_average_pooling1d/Mean:output:0)Dense/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"Dense/dense/BiasAdd/ReadVariableOpReadVariableOp+dense_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Dense/dense/BiasAddBiasAddDense/dense/MatMul:product:0*Dense/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
Dense/dense/SigmoidSigmoidDense/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityDense/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^Dense/dense/BiasAdd/ReadVariableOp"^Dense/dense/MatMul/ReadVariableOp!^Dense/embedding/embedding_lookupO^Dense/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2H
"Dense/dense/BiasAdd/ReadVariableOp"Dense/dense/BiasAdd/ReadVariableOp2F
!Dense/dense/MatMul/ReadVariableOp!Dense/dense/MatMul/ReadVariableOp2D
 Dense/embedding/embedding_lookup Dense/embedding/embedding_lookup2?
NDense/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2NDense/text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_dense_layer_call_fn_14208

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13693o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference__initializer_142327
3key_value_init1297_lookuptableimportv2_table_handle/
+key_value_init1297_lookuptableimportv2_keys1
-key_value_init1297_lookuptableimportv2_values	
identity??&key_value_init1297/LookupTableImportV2?
&key_value_init1297/LookupTableImportV2LookupTableImportV23key_value_init1297_lookuptableimportv2_table_handle+key_value_init1297_lookuptableimportv2_keys-key_value_init1297_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1297/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :ֳ:ֳ2P
&key_value_init1297/LookupTableImportV2&key_value_init1297/LookupTableImportV2:"

_output_shapes

:ֳ:"

_output_shapes

:ֳ
?
*
__inference_<lambda>_14292
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_142877
3key_value_init1297_lookuptableimportv2_table_handle/
+key_value_init1297_lookuptableimportv2_keys1
-key_value_init1297_lookuptableimportv2_values	
identity??&key_value_init1297/LookupTableImportV2?
&key_value_init1297/LookupTableImportV2LookupTableImportV23key_value_init1297_lookuptableimportv2_table_handle+key_value_init1297_lookuptableimportv2_keys-key_value_init1297_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init1297/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :ֳ:ֳ2P
&key_value_init1297/LookupTableImportV2&key_value_init1297/LookupTableImportV2:"

_output_shapes

:ֳ:"

_output_shapes

:ֳ
?

?
@__inference_dense_layer_call_and_return_conditional_losses_13693

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?D
?
__inference_adapt_step_6258
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2a
StringLowerStringLowerIteratorGetNext:components:0*'
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite }
SqueezeSqueezeStaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2Squeeze:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?	
?
%__inference_Dense_layer_call_fn_14019

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:س?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_13817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?e
?
@__inference_Dense_layer_call_and_return_conditional_losses_13817

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	$
embedding_13807:س?
dense_13811:	?
dense_13813:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13807*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13677?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13610?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13811dense_13813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13693u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
T
8__inference_global_average_pooling1d_layer_call_fn_14193

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13610i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_14219

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
%__inference_Dense_layer_call_fn_13717
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:س?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_13700o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_embedding_layer_call_fn_14179

inputs	
unknown:س?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13677t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_14237
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?i
?
@__inference_Dense_layer_call_and_return_conditional_losses_14151

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	5
 embedding_embedding_lookup_14136:س?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_14136Atext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/14136*,
_output_shapes
:??????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/14136*,
_output_shapes
:???????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookupI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
F
__inference__creator_14242
identity: ??MutableHashTable}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_17*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
:
__inference__creator_14224
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name1298*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
.
__inference__initializer_14247
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_14188

inputs	+
embedding_lookup_14182:س?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_14182inputs*
Tindices0	*)
_class
loc:@embedding_lookup/14182*,
_output_shapes
:??????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/14182*,
_output_shapes
:???????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:??????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_14271
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?0
?
__inference__traced_save_14383
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *#
dtypes
2		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapesz
x: :س?:	?:: : : : : ::: : : : :س?:	?::س?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:س?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
::


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:س?:%!

_output_shapes
:	?: 

_output_shapes
::'#
!
_output_shapes
:س?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?	
?
%__inference_Dense_layer_call_fn_13853
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:س?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_13817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?i
?
@__inference_Dense_layer_call_and_return_conditional_losses_14085

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	5
 embedding_embedding_lookup_14070:س?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_14070Atext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/14070*,
_output_shapes
:??????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/14070*,
_output_shapes
:???????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookupI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?e
?
@__inference_Dense_layer_call_and_return_conditional_losses_13975
input_1Y
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	$
embedding_13965:س?
dense_13969:	?
dense_13971:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2a
 text_vectorization_1/StringLowerStringLowerinput_1*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13965*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13677?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13610?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13969dense_13971*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13693u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?e
?
@__inference_Dense_layer_call_and_return_conditional_losses_13700

inputsY
Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_1_string_lookup_1_equal_y3
/text_vectorization_1_string_lookup_1_selectv2_t	$
embedding_13678:س?
dense_13694:	?
dense_13696:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_1/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_1/StaticRegexReplaceStaticRegexReplace)text_vectorization_1/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_1/SqueezeSqueeze0text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_1/StringSplit/StringSplitV2StringSplitV2%text_vectorization_1/Squeeze:output:0/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_1/StringSplit/strided_sliceStridedSlice8text_vectorization_1/StringSplit/StringSplitV2:indices:0=text_vectorization_1/StringSplit/strided_slice/stack:output:0?text_vectorization_1/StringSplit/strided_slice/stack_1:output:0?text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_1/StringSplit/strided_slice_1StridedSlice6text_vectorization_1/StringSplit/StringSplitV2:shape:0?text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_1/StringSplit/StringSplitV2:values:0Vtext_vectorization_1_string_lookup_1_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_1/string_lookup_1/EqualEqual7text_vectorization_1/StringSplit/StringSplitV2:values:0,text_vectorization_1_string_lookup_1_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/SelectV2SelectV2.text_vectorization_1/string_lookup_1/Equal:z:0/text_vectorization_1_string_lookup_1_selectv2_tQtext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_1/string_lookup_1/IdentityIdentity6text_vectorization_1/string_lookup_1/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_1/RaggedToTensor/Const:output:06text_vectorization_1/string_lookup_1/Identity:output:0:text_vectorization_1/RaggedToTensor/default_value:output:09text_vectorization_1/StringSplit/strided_slice_1:output:07text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13678*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13677?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13610?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13694dense_13696*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13693u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2Htext_vectorization_1/string_lookup_1/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
%__inference_Dense_layer_call_fn_14000

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:س?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Dense_layer_call_and_return_conditional_losses_13700o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????;
dense2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:?d
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'iter

(beta_1

)beta_2
	*decay
+learning_ratemVmW mXvYvZ v["
	optimizer
5
1
2
 3"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_Dense_layer_call_fn_13717
%__inference_Dense_layer_call_fn_14000
%__inference_Dense_layer_call_fn_14019
%__inference_Dense_layer_call_fn_13853?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_Dense_layer_call_and_return_conditional_losses_14085
@__inference_Dense_layer_call_and_return_conditional_losses_14151
@__inference_Dense_layer_call_and_return_conditional_losses_13914
@__inference_Dense_layer_call_and_return_conditional_losses_13975?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_13600input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
1serving_default"
signature_map
L
2lookup_table
3token_counts
4	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_6258?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
):'س?2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_embedding_layer_call_fn_14179?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_14188?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
8__inference_global_average_pooling1d_layer_call_fn_14193?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_14199?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	?2dense/kernel
:2
dense/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_dense_layer_call_fn_14208?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_14219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_14172input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
F_initializer
G_create_resource
H_initialize
I_destroy_resourceR jCustom.StaticHashTable
O
J_create_resource
K_initialize
L_destroy_resourceR Z
table\]
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Mtotal
	Ncount
O	variables
P	keras_api"
_tf_keras_metric
^
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_14224?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_14232?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_14237?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_14242?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_14247?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_14252?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
.
M0
N1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
.:,س?2Adam/embedding/embeddings/m
$:"	?2Adam/dense/kernel/m
:2Adam/dense/bias/m
.:,س?2Adam/embedding/embeddings/v
$:"	?2Adam/dense/kernel/v
:2Adam/dense/bias/v
?B?
__inference_save_fn_14271checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_14279restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5?
@__inference_Dense_layer_call_and_return_conditional_losses_13914j2^_` 8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_Dense_layer_call_and_return_conditional_losses_13975j2^_` 8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
@__inference_Dense_layer_call_and_return_conditional_losses_14085i2^_` 7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_Dense_layer_call_and_return_conditional_losses_14151i2^_` 7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
%__inference_Dense_layer_call_fn_13717]2^_` 8?5
.?+
!?
input_1?????????
p 

 
? "???????????
%__inference_Dense_layer_call_fn_13853]2^_` 8?5
.?+
!?
input_1?????????
p

 
? "???????????
%__inference_Dense_layer_call_fn_14000\2^_` 7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
%__inference_Dense_layer_call_fn_14019\2^_` 7?4
-?*
 ?
inputs?????????
p

 
? "??????????6
__inference__creator_14224?

? 
? "? 6
__inference__creator_14242?

? 
? "? 8
__inference__destroyer_14237?

? 
? "? 8
__inference__destroyer_14252?

? 
? "? ?
__inference__initializer_142322bc?

? 
? "? :
__inference__initializer_14247?

? 
? "? ?
 __inference__wrapped_model_13600j2^_` 0?-
&?#
!?
input_1?????????
? "-?*
(
dense?
dense?????????l
__inference_adapt_step_6258M3aC?@
9?6
4?1?
??????????IteratorSpec 
? "
 ?
@__inference_dense_layer_call_and_return_conditional_losses_14219] 0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? y
%__inference_dense_layer_call_fn_14208P 0?-
&?#
!?
inputs??????????
? "???????????
D__inference_embedding_layer_call_and_return_conditional_losses_14188`/?,
%?"
 ?
inputs?????????	
? "*?'
 ?
0??????????
? ?
)__inference_embedding_layer_call_fn_14179S/?,
%?"
 ?
inputs?????????	
? "????????????
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_14199{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
8__inference_global_average_pooling1d_layer_call_fn_14193nI?F
??<
6?3
inputs'???????????????????????????

 
? "!???????????????????y
__inference_restore_fn_14279Y3K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_14271?3&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_14172u2^_` ;?8
? 
1?.
,
input_1!?
input_1?????????"-?*
(
dense?
dense?????????