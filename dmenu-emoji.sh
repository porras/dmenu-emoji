#!/bin/bash
# This files comes from:
# https://github.com/porras/dmenu-emoji
#
# If this file includes emojis below "__DATA__" it is generated.
# This file was generated: 2022-04-21 12:38:03+00:00

set -e

case "$1" in
  "list")
    data=$(sed '0,/^__DATA__$/d' "$0")
    echo "$data"
    ;;
  "copy")
    input=$(tee)
    if [ ! -z "$input" ]; then
      emoji=${input: -1}
      echo -n "$emoji" | xclip -selection c
      command -v notify-send > /dev/null && notify-send -t 200 "$emoji copied!"
    fi
    ;;
  "")
    bash $0 list | dmenu -p 'Emoji: ' | bash $0 copy
    ;;
esac

exit

__DATA__
grinning face 😀
grinning face with big eyes 😃
grinning face with smiling eyes 😄
beaming face with smiling eyes 😁
grinning squinting face 😆
grinning face with sweat 😅
rolling on the floor laughing 🤣
face with tears of joy 😂
slightly smiling face 🙂
upside-down face 🙃
melting face 🫠
winking face 😉
smiling face with smiling eyes 😊
smiling face with halo 😇
smiling face with hearts 🥰
smiling face with heart-eyes 😍
star-struck 🤩
face blowing a kiss 😘
kissing face 😗
smiling face ☺
kissing face with closed eyes 😚
kissing face with smiling eyes 😙
smiling face with tear 🥲
face savoring food 😋
face with tongue 😛
winking face with tongue 😜
zany face 🤪
squinting face with tongue 😝
money-mouth face 🤑
smiling face with open hands 🤗
face with hand over mouth 🤭
face with open eyes and hand over mouth 🫢
face with peeking eye 🫣
shushing face 🤫
thinking face 🤔
saluting face 🫡
zipper-mouth face 🤐
face with raised eyebrow 🤨
neutral face 😐
expressionless face 😑
face without mouth 😶
dotted line face 🫥
smirking face 😏
unamused face 😒
face with rolling eyes 🙄
grimacing face 😬
lying face 🤥
relieved face 😌
pensive face 😔
sleepy face 😪
drooling face 🤤
sleeping face 😴
face with medical mask 😷
face with thermometer 🤒
face with head-bandage 🤕
nauseated face 🤢
face vomiting 🤮
sneezing face 🤧
hot face 🥵
cold face 🥶
woozy face 🥴
face with crossed-out eyes 😵
exploding head 🤯
cowboy hat face 🤠
partying face 🥳
disguised face 🥸
smiling face with sunglasses 😎
nerd face 🤓
face with monocle 🧐
confused face 😕
face with diagonal mouth 🫤
worried face 😟
slightly frowning face 🙁
frowning face ☹
face with open mouth 😮
hushed face 😯
astonished face 😲
flushed face 😳
pleading face 🥺
face holding back tears 🥹
frowning face with open mouth 😦
anguished face 😧
fearful face 😨
anxious face with sweat 😰
sad but relieved face 😥
crying face 😢
loudly crying face 😭
face screaming in fear 😱
confounded face 😖
persevering face 😣
disappointed face 😞
downcast face with sweat 😓
weary face 😩
tired face 😫
yawning face 🥱
face with steam from nose 😤
pouting face 😡
angry face 😠
face with symbols on mouth 🤬
smiling face with horns 😈
angry face with horns 👿
skull 💀
skull and crossbones ☠
pile of poo 💩
clown face 🤡
ogre 👹
goblin 👺
ghost 👻
alien 👽
alien monster 👾
robot 🤖
grinning cat 😺
grinning cat with smiling eyes 😸
cat with tears of joy 😹
smiling cat with heart-eyes 😻
cat with wry smile 😼
kissing cat 😽
weary cat 🙀
crying cat 😿
pouting cat 😾
see-no-evil monkey 🙈
hear-no-evil monkey 🙉
speak-no-evil monkey 🙊
kiss mark 💋
love letter 💌
heart with arrow 💘
heart with ribbon 💝
sparkling heart 💖
growing heart 💗
beating heart 💓
revolving hearts 💞
two hearts 💕
heart decoration 💟
heart exclamation ❣
broken heart 💔
red heart ❤
orange heart 🧡
yellow heart 💛
green heart 💚
blue heart 💙
purple heart 💜
brown heart 🤎
black heart 🖤
white heart 🤍
hundred points 💯
anger symbol 💢
collision 💥
dizzy 💫
sweat droplets 💦
dashing away 💨
hole 🕳
bomb 💣
speech balloon 💬
left speech bubble 🗨
right anger bubble 🗯
thought balloon 💭
zzz 💤
waving hand 👋
raised back of hand 🤚
hand with fingers splayed 🖐
raised hand ✋
vulcan salute 🖖
rightwards hand 🫱
leftwards hand 🫲
palm down hand 🫳
palm up hand 🫴
OK hand 👌
pinched fingers 🤌
pinching hand 🤏
victory hand ✌
crossed fingers 🤞
hand with index finger and thumb crossed 🫰
love-you gesture 🤟
sign of the horns 🤘
call me hand 🤙
backhand index pointing left 👈
backhand index pointing right 👉
backhand index pointing up 👆
middle finger 🖕
backhand index pointing down 👇
index pointing up ☝
index pointing at the viewer 🫵
thumbs up 👍
thumbs down 👎
raised fist ✊
oncoming fist 👊
left-facing fist 🤛
right-facing fist 🤜
clapping hands 👏
raising hands 🙌
heart hands 🫶
open hands 👐
palms up together 🤲
handshake 🤝
folded hands 🙏
writing hand ✍
nail polish 💅
selfie 🤳
flexed biceps 💪
mechanical arm 🦾
mechanical leg 🦿
leg 🦵
foot 🦶
ear 👂
ear with hearing aid 🦻
nose 👃
brain 🧠
anatomical heart 🫀
lungs 🫁
tooth 🦷
bone 🦴
eyes 👀
eye 👁
tongue 👅
mouth 👄
biting lip 🫦
baby 👶
child 🧒
boy 👦
girl 👧
person 🧑
person: blond hair 👱
man 👨
person: beard 🧔
woman 👩
older person 🧓
old man 👴
old woman 👵
person frowning 🙍
person pouting 🙎
person gesturing NO 🙅
deaf person 🧏
person bowing 🙇
person facepalming 🤦
person shrugging 🤷
police officer 👮
detective 🕵
guard 💂
ninja 🥷
construction worker 👷
person with crown 🫅
prince 🤴
princess 👸
person wearing turban 👳
person with skullcap 👲
woman with headscarf 🧕
person in tuxedo 🤵
person with veil 👰
pregnant woman 🤰
pregnant man 🫃
pregnant person 🫄
breast-feeding 🤱
baby angel 👼
Santa Claus 🎅
Mrs. Claus 🤶
superhero 🦸
supervillain 🦹
mage 🧙
fairy 🧚
vampire 🧛
merperson 🧜
elf 🧝
genie 🧞
zombie 🧟
troll 🧌
person getting massage 💆
person getting haircut 💇
person walking 🚶
person standing 🧍
person kneeling 🧎
person running 🏃
woman dancing 💃
man dancing 🕺
person in suit levitating 🕴
people with bunny ears 👯
person in steamy room 🧖
person climbing 🧗
person fencing 🤺
horse racing 🏇
skier ⛷
snowboarder 🏂
person golfing 🏌
person surfing 🏄
person rowing boat 🚣
person swimming 🏊
person bouncing ball ⛹
person lifting weights 🏋
person biking 🚴
person mountain biking 🚵
person cartwheeling 🤸
people wrestling 🤼
person playing water polo 🤽
person playing handball 🤾
person juggling 🤹
person in lotus position 🧘
person taking bath 🛀
person in bed 🛌
women holding hands 👭
woman and man holding hands 👫
men holding hands 👬
kiss 💏
couple with heart 💑
family 👪
speaking head 🗣
bust in silhouette 👤
busts in silhouette 👥
people hugging 🫂
footprints 👣
red hair 🦰
curly hair 🦱
white hair 🦳
bald 🦲
monkey face 🐵
monkey 🐒
gorilla 🦍
orangutan 🦧
dog face 🐶
dog 🐕
guide dog 🦮
poodle 🐩
wolf 🐺
fox 🦊
raccoon 🦝
cat face 🐱
cat 🐈
lion 🦁
tiger face 🐯
tiger 🐅
leopard 🐆
horse face 🐴
horse 🐎
unicorn 🦄
zebra 🦓
deer 🦌
bison 🦬
cow face 🐮
ox 🐂
water buffalo 🐃
cow 🐄
pig face 🐷
pig 🐖
boar 🐗
pig nose 🐽
ram 🐏
ewe 🐑
goat 🐐
camel 🐪
two-hump camel 🐫
llama 🦙
giraffe 🦒
elephant 🐘
mammoth 🦣
rhinoceros 🦏
hippopotamus 🦛
mouse face 🐭
mouse 🐁
rat 🐀
hamster 🐹
rabbit face 🐰
rabbit 🐇
chipmunk 🐿
beaver 🦫
hedgehog 🦔
bat 🦇
bear 🐻
koala 🐨
panda 🐼
sloth 🦥
otter 🦦
skunk 🦨
kangaroo 🦘
badger 🦡
paw prints 🐾
turkey 🦃
chicken 🐔
rooster 🐓
hatching chick 🐣
baby chick 🐤
front-facing baby chick 🐥
bird 🐦
penguin 🐧
dove 🕊
eagle 🦅
duck 🦆
swan 🦢
owl 🦉
dodo 🦤
feather 🪶
flamingo 🦩
peacock 🦚
parrot 🦜
frog 🐸
crocodile 🐊
turtle 🐢
lizard 🦎
snake 🐍
dragon face 🐲
dragon 🐉
sauropod 🦕
T-Rex 🦖
spouting whale 🐳
whale 🐋
dolphin 🐬
seal 🦭
fish 🐟
tropical fish 🐠
blowfish 🐡
shark 🦈
octopus 🐙
spiral shell 🐚
coral 🪸
snail 🐌
butterfly 🦋
bug 🐛
ant 🐜
honeybee 🐝
beetle 🪲
lady beetle 🐞
cricket 🦗
cockroach 🪳
spider 🕷
spider web 🕸
scorpion 🦂
mosquito 🦟
fly 🪰
worm 🪱
microbe 🦠
bouquet 💐
cherry blossom 🌸
white flower 💮
lotus 🪷
rosette 🏵
rose 🌹
wilted flower 🥀
hibiscus 🌺
sunflower 🌻
blossom 🌼
tulip 🌷
seedling 🌱
potted plant 🪴
evergreen tree 🌲
deciduous tree 🌳
palm tree 🌴
cactus 🌵
sheaf of rice 🌾
herb 🌿
shamrock ☘
four leaf clover 🍀
maple leaf 🍁
fallen leaf 🍂
leaf fluttering in wind 🍃
empty nest 🪹
nest with eggs 🪺
grapes 🍇
melon 🍈
watermelon 🍉
tangerine 🍊
lemon 🍋
banana 🍌
pineapple 🍍
mango 🥭
red apple 🍎
green apple 🍏
pear 🍐
peach 🍑
cherries 🍒
strawberry 🍓
blueberries 🫐
kiwi fruit 🥝
tomato 🍅
olive 🫒
coconut 🥥
avocado 🥑
eggplant 🍆
potato 🥔
carrot 🥕
ear of corn 🌽
hot pepper 🌶
bell pepper 🫑
cucumber 🥒
leafy green 🥬
broccoli 🥦
garlic 🧄
onion 🧅
mushroom 🍄
peanuts 🥜
beans 🫘
chestnut 🌰
bread 🍞
croissant 🥐
baguette bread 🥖
flatbread 🫓
pretzel 🥨
bagel 🥯
pancakes 🥞
waffle 🧇
cheese wedge 🧀
meat on bone 🍖
poultry leg 🍗
cut of meat 🥩
bacon 🥓
hamburger 🍔
french fries 🍟
pizza 🍕
hot dog 🌭
sandwich 🥪
taco 🌮
burrito 🌯
tamale 🫔
stuffed flatbread 🥙
falafel 🧆
egg 🥚
cooking 🍳
shallow pan of food 🥘
pot of food 🍲
fondue 🫕
bowl with spoon 🥣
green salad 🥗
popcorn 🍿
butter 🧈
salt 🧂
canned food 🥫
bento box 🍱
rice cracker 🍘
rice ball 🍙
cooked rice 🍚
curry rice 🍛
steaming bowl 🍜
spaghetti 🍝
roasted sweet potato 🍠
oden 🍢
sushi 🍣
fried shrimp 🍤
fish cake with swirl 🍥
moon cake 🥮
dango 🍡
dumpling 🥟
fortune cookie 🥠
takeout box 🥡
crab 🦀
lobster 🦞
shrimp 🦐
squid 🦑
oyster 🦪
soft ice cream 🍦
shaved ice 🍧
ice cream 🍨
doughnut 🍩
cookie 🍪
birthday cake 🎂
shortcake 🍰
cupcake 🧁
pie 🥧
chocolate bar 🍫
candy 🍬
lollipop 🍭
custard 🍮
honey pot 🍯
baby bottle 🍼
glass of milk 🥛
hot beverage ☕
teapot 🫖
teacup without handle 🍵
sake 🍶
bottle with popping cork 🍾
wine glass 🍷
cocktail glass 🍸
tropical drink 🍹
beer mug 🍺
clinking beer mugs 🍻
clinking glasses 🥂
tumbler glass 🥃
pouring liquid 🫗
cup with straw 🥤
bubble tea 🧋
beverage box 🧃
mate 🧉
ice 🧊
chopsticks 🥢
fork and knife with plate 🍽
fork and knife 🍴
spoon 🥄
kitchen knife 🔪
jar 🫙
amphora 🏺
globe showing Europe-Africa 🌍
globe showing Americas 🌎
globe showing Asia-Australia 🌏
globe with meridians 🌐
world map 🗺
map of Japan 🗾
compass 🧭
snow-capped mountain 🏔
mountain ⛰
volcano 🌋
mount fuji 🗻
camping 🏕
beach with umbrella 🏖
desert 🏜
desert island 🏝
national park 🏞
stadium 🏟
classical building 🏛
building construction 🏗
brick 🧱
rock 🪨
wood 🪵
hut 🛖
houses 🏘
derelict house 🏚
house 🏠
house with garden 🏡
office building 🏢
Japanese post office 🏣
post office 🏤
hospital 🏥
bank 🏦
hotel 🏨
love hotel 🏩
convenience store 🏪
school 🏫
department store 🏬
factory 🏭
Japanese castle 🏯
castle 🏰
wedding 💒
Tokyo tower 🗼
Statue of Liberty 🗽
church ⛪
mosque 🕌
hindu temple 🛕
synagogue 🕍
shinto shrine ⛩
kaaba 🕋
fountain ⛲
tent ⛺
foggy 🌁
night with stars 🌃
cityscape 🏙
sunrise over mountains 🌄
sunrise 🌅
cityscape at dusk 🌆
sunset 🌇
bridge at night 🌉
hot springs ♨
carousel horse 🎠
playground slide 🛝
ferris wheel 🎡
roller coaster 🎢
barber pole 💈
circus tent 🎪
locomotive 🚂
railway car 🚃
high-speed train 🚄
bullet train 🚅
train 🚆
metro 🚇
light rail 🚈
station 🚉
tram 🚊
monorail 🚝
mountain railway 🚞
tram car 🚋
bus 🚌
oncoming bus 🚍
trolleybus 🚎
minibus 🚐
ambulance 🚑
fire engine 🚒
police car 🚓
oncoming police car 🚔
taxi 🚕
oncoming taxi 🚖
automobile 🚗
oncoming automobile 🚘
sport utility vehicle 🚙
pickup truck 🛻
delivery truck 🚚
articulated lorry 🚛
tractor 🚜
racing car 🏎
motorcycle 🏍
motor scooter 🛵
manual wheelchair 🦽
motorized wheelchair 🦼
auto rickshaw 🛺
bicycle 🚲
kick scooter 🛴
skateboard 🛹
roller skate 🛼
bus stop 🚏
motorway 🛣
railway track 🛤
oil drum 🛢
fuel pump ⛽
wheel 🛞
police car light 🚨
horizontal traffic light 🚥
vertical traffic light 🚦
stop sign 🛑
construction 🚧
anchor ⚓
ring buoy 🛟
sailboat ⛵
canoe 🛶
speedboat 🚤
passenger ship 🛳
ferry ⛴
motor boat 🛥
ship 🚢
airplane ✈
small airplane 🛩
airplane departure 🛫
airplane arrival 🛬
parachute 🪂
seat 💺
helicopter 🚁
suspension railway 🚟
mountain cableway 🚠
aerial tramway 🚡
satellite 🛰
rocket 🚀
flying saucer 🛸
bellhop bell 🛎
luggage 🧳
hourglass done ⌛
hourglass not done ⏳
watch ⌚
alarm clock ⏰
stopwatch ⏱
timer clock ⏲
mantelpiece clock 🕰
twelve o’clock 🕛
twelve-thirty 🕧
one o’clock 🕐
one-thirty 🕜
two o’clock 🕑
two-thirty 🕝
three o’clock 🕒
three-thirty 🕞
four o’clock 🕓
four-thirty 🕟
five o’clock 🕔
five-thirty 🕠
six o’clock 🕕
six-thirty 🕡
seven o’clock 🕖
seven-thirty 🕢
eight o’clock 🕗
eight-thirty 🕣
nine o’clock 🕘
nine-thirty 🕤
ten o’clock 🕙
ten-thirty 🕥
eleven o’clock 🕚
eleven-thirty 🕦
new moon 🌑
waxing crescent moon 🌒
first quarter moon 🌓
waxing gibbous moon 🌔
full moon 🌕
waning gibbous moon 🌖
last quarter moon 🌗
waning crescent moon 🌘
crescent moon 🌙
new moon face 🌚
first quarter moon face 🌛
last quarter moon face 🌜
thermometer 🌡
sun ☀
full moon face 🌝
sun with face 🌞
ringed planet 🪐
star ⭐
glowing star 🌟
shooting star 🌠
milky way 🌌
cloud ☁
sun behind cloud ⛅
cloud with lightning and rain ⛈
sun behind small cloud 🌤
sun behind large cloud 🌥
sun behind rain cloud 🌦
cloud with rain 🌧
cloud with snow 🌨
cloud with lightning 🌩
tornado 🌪
fog 🌫
wind face 🌬
cyclone 🌀
rainbow 🌈
closed umbrella 🌂
umbrella ☂
umbrella with rain drops ☔
umbrella on ground ⛱
high voltage ⚡
snowflake ❄
snowman ☃
snowman without snow ⛄
comet ☄
fire 🔥
droplet 💧
water wave 🌊
jack-o-lantern 🎃
Christmas tree 🎄
fireworks 🎆
sparkler 🎇
firecracker 🧨
sparkles ✨
balloon 🎈
party popper 🎉
confetti ball 🎊
tanabata tree 🎋
pine decoration 🎍
Japanese dolls 🎎
carp streamer 🎏
wind chime 🎐
moon viewing ceremony 🎑
red envelope 🧧
ribbon 🎀
wrapped gift 🎁
reminder ribbon 🎗
admission tickets 🎟
ticket 🎫
military medal 🎖
trophy 🏆
sports medal 🏅
1st place medal 🥇
2nd place medal 🥈
3rd place medal 🥉
soccer ball ⚽
baseball ⚾
softball 🥎
basketball 🏀
volleyball 🏐
american football 🏈
rugby football 🏉
tennis 🎾
flying disc 🥏
bowling 🎳
cricket game 🏏
field hockey 🏑
ice hockey 🏒
lacrosse 🥍
ping pong 🏓
badminton 🏸
boxing glove 🥊
martial arts uniform 🥋
goal net 🥅
flag in hole ⛳
ice skate ⛸
fishing pole 🎣
diving mask 🤿
running shirt 🎽
skis 🎿
sled 🛷
curling stone 🥌
bullseye 🎯
yo-yo 🪀
kite 🪁
pool 8 ball 🎱
crystal ball 🔮
magic wand 🪄
nazar amulet 🧿
hamsa 🪬
video game 🎮
joystick 🕹
slot machine 🎰
game die 🎲
puzzle piece 🧩
teddy bear 🧸
piñata 🪅
mirror ball 🪩
nesting dolls 🪆
spade suit ♠
heart suit ♥
diamond suit ♦
club suit ♣
chess pawn ♟
joker 🃏
mahjong red dragon 🀄
flower playing cards 🎴
performing arts 🎭
framed picture 🖼
artist palette 🎨
thread 🧵
sewing needle 🪡
yarn 🧶
knot 🪢
glasses 👓
sunglasses 🕶
goggles 🥽
lab coat 🥼
safety vest 🦺
necktie 👔
t-shirt 👕
jeans 👖
scarf 🧣
gloves 🧤
coat 🧥
socks 🧦
dress 👗
kimono 👘
sari 🥻
one-piece swimsuit 🩱
briefs 🩲
shorts 🩳
bikini 👙
woman’s clothes 👚
purse 👛
handbag 👜
clutch bag 👝
shopping bags 🛍
backpack 🎒
thong sandal 🩴
man’s shoe 👞
running shoe 👟
hiking boot 🥾
flat shoe 🥿
high-heeled shoe 👠
woman’s sandal 👡
ballet shoes 🩰
woman’s boot 👢
crown 👑
woman’s hat 👒
top hat 🎩
graduation cap 🎓
billed cap 🧢
military helmet 🪖
rescue worker’s helmet ⛑
prayer beads 📿
lipstick 💄
ring 💍
gem stone 💎
muted speaker 🔇
speaker low volume 🔈
speaker medium volume 🔉
speaker high volume 🔊
loudspeaker 📢
megaphone 📣
postal horn 📯
bell 🔔
bell with slash 🔕
musical score 🎼
musical note 🎵
musical notes 🎶
studio microphone 🎙
level slider 🎚
control knobs 🎛
microphone 🎤
headphone 🎧
radio 📻
saxophone 🎷
accordion 🪗
guitar 🎸
musical keyboard 🎹
trumpet 🎺
violin 🎻
banjo 🪕
drum 🥁
long drum 🪘
mobile phone 📱
mobile phone with arrow 📲
telephone ☎
telephone receiver 📞
pager 📟
fax machine 📠
battery 🔋
low battery 🪫
electric plug 🔌
laptop 💻
desktop computer 🖥
printer 🖨
keyboard ⌨
computer mouse 🖱
trackball 🖲
computer disk 💽
floppy disk 💾
optical disk 💿
dvd 📀
abacus 🧮
movie camera 🎥
film frames 🎞
film projector 📽
clapper board 🎬
television 📺
camera 📷
camera with flash 📸
video camera 📹
videocassette 📼
magnifying glass tilted left 🔍
magnifying glass tilted right 🔎
candle 🕯
light bulb 💡
flashlight 🔦
red paper lantern 🏮
diya lamp 🪔
notebook with decorative cover 📔
closed book 📕
open book 📖
green book 📗
blue book 📘
orange book 📙
books 📚
notebook 📓
ledger 📒
page with curl 📃
scroll 📜
page facing up 📄
newspaper 📰
rolled-up newspaper 🗞
bookmark tabs 📑
bookmark 🔖
label 🏷
money bag 💰
coin 🪙
yen banknote 💴
dollar banknote 💵
euro banknote 💶
pound banknote 💷
money with wings 💸
credit card 💳
receipt 🧾
chart increasing with yen 💹
envelope ✉
e-mail 📧
incoming envelope 📨
envelope with arrow 📩
outbox tray 📤
inbox tray 📥
package 📦
closed mailbox with raised flag 📫
closed mailbox with lowered flag 📪
open mailbox with raised flag 📬
open mailbox with lowered flag 📭
postbox 📮
ballot box with ballot 🗳
pencil ✏
black nib ✒
fountain pen 🖋
pen 🖊
paintbrush 🖌
crayon 🖍
memo 📝
briefcase 💼
file folder 📁
open file folder 📂
card index dividers 🗂
calendar 📅
tear-off calendar 📆
spiral notepad 🗒
spiral calendar 🗓
card index 📇
chart increasing 📈
chart decreasing 📉
bar chart 📊
clipboard 📋
pushpin 📌
round pushpin 📍
paperclip 📎
linked paperclips 🖇
straight ruler 📏
triangular ruler 📐
scissors ✂
card file box 🗃
file cabinet 🗄
wastebasket 🗑
locked 🔒
unlocked 🔓
locked with pen 🔏
locked with key 🔐
key 🔑
old key 🗝
hammer 🔨
axe 🪓
pick ⛏
hammer and pick ⚒
hammer and wrench 🛠
dagger 🗡
crossed swords ⚔
water pistol 🔫
boomerang 🪃
bow and arrow 🏹
shield 🛡
carpentry saw 🪚
wrench 🔧
screwdriver 🪛
nut and bolt 🔩
gear ⚙
clamp 🗜
balance scale ⚖
white cane 🦯
link 🔗
chains ⛓
hook 🪝
toolbox 🧰
magnet 🧲
ladder 🪜
alembic ⚗
test tube 🧪
petri dish 🧫
dna 🧬
microscope 🔬
telescope 🔭
satellite antenna 📡
syringe 💉
drop of blood 🩸
pill 💊
adhesive bandage 🩹
crutch 🩼
stethoscope 🩺
x-ray 🩻
door 🚪
elevator 🛗
mirror 🪞
window 🪟
bed 🛏
couch and lamp 🛋
chair 🪑
toilet 🚽
plunger 🪠
shower 🚿
bathtub 🛁
mouse trap 🪤
razor 🪒
lotion bottle 🧴
safety pin 🧷
broom 🧹
basket 🧺
roll of paper 🧻
bucket 🪣
soap 🧼
bubbles 🫧
toothbrush 🪥
sponge 🧽
fire extinguisher 🧯
shopping cart 🛒
cigarette 🚬
coffin ⚰
headstone 🪦
funeral urn ⚱
moai 🗿
placard 🪧
identification card 🪪
ATM sign 🏧
litter in bin sign 🚮
potable water 🚰
wheelchair symbol ♿
men’s room 🚹
women’s room 🚺
restroom 🚻
baby symbol 🚼
water closet 🚾
passport control 🛂
customs 🛃
baggage claim 🛄
left luggage 🛅
warning ⚠
children crossing 🚸
no entry ⛔
prohibited 🚫
no bicycles 🚳
no smoking 🚭
no littering 🚯
non-potable water 🚱
no pedestrians 🚷
no mobile phones 📵
no one under eighteen 🔞
radioactive ☢
biohazard ☣
up arrow ⬆
up-right arrow ↗
right arrow ➡
down-right arrow ↘
down arrow ⬇
down-left arrow ↙
left arrow ⬅
up-left arrow ↖
up-down arrow ↕
left-right arrow ↔
right arrow curving left ↩
left arrow curving right ↪
right arrow curving up ⤴
right arrow curving down ⤵
clockwise vertical arrows 🔃
counterclockwise arrows button 🔄
BACK arrow 🔙
END arrow 🔚
ON! arrow 🔛
SOON arrow 🔜
TOP arrow 🔝
place of worship 🛐
atom symbol ⚛
om 🕉
star of David ✡
wheel of dharma ☸
yin yang ☯
latin cross ✝
orthodox cross ☦
star and crescent ☪
peace symbol ☮
menorah 🕎
dotted six-pointed star 🔯
Aries ♈
Taurus ♉
Gemini ♊
Cancer ♋
Leo ♌
Virgo ♍
Libra ♎
Scorpio ♏
Sagittarius ♐
Capricorn ♑
Aquarius ♒
Pisces ♓
Ophiuchus ⛎
shuffle tracks button 🔀
repeat button 🔁
repeat single button 🔂
play button ▶
fast-forward button ⏩
next track button ⏭
play or pause button ⏯
reverse button ◀
fast reverse button ⏪
last track button ⏮
upwards button 🔼
fast up button ⏫
downwards button 🔽
fast down button ⏬
pause button ⏸
stop button ⏹
record button ⏺
eject button ⏏
cinema 🎦
dim button 🔅
bright button 🔆
antenna bars 📶
vibration mode 📳
mobile phone off 📴
female sign ♀
male sign ♂
transgender symbol ⚧
multiply ✖
plus ➕
minus ➖
divide ➗
heavy equals sign 🟰
infinity ♾
double exclamation mark ‼
exclamation question mark ⁉
red question mark ❓
white question mark ❔
white exclamation mark ❕
red exclamation mark ❗
wavy dash 〰
currency exchange 💱
heavy dollar sign 💲
medical symbol ⚕
recycling symbol ♻
fleur-de-lis ⚜
trident emblem 🔱
name badge 📛
Japanese symbol for beginner 🔰
hollow red circle ⭕
check mark button ✅
check box with check ☑
check mark ✔
cross mark ❌
cross mark button ❎
curly loop ➰
double curly loop ➿
part alternation mark 〽
eight-spoked asterisk ✳
eight-pointed star ✴
sparkle ❇
copyright ©
registered ®
trade mark ™
keycap: # #️⃣
keycap: * *️⃣
keycap: 0 0️⃣
keycap: 1 1️⃣
keycap: 2 2️⃣
keycap: 3 3️⃣
keycap: 4 4️⃣
keycap: 5 5️⃣
keycap: 6 6️⃣
keycap: 7 7️⃣
keycap: 8 8️⃣
keycap: 9 9️⃣
keycap: 10 🔟
input latin uppercase 🔠
input latin lowercase 🔡
input numbers 🔢
input symbols 🔣
input latin letters 🔤
A button (blood type) 🅰
AB button (blood type) 🆎
B button (blood type) 🅱
CL button 🆑
COOL button 🆒
FREE button 🆓
information ℹ
ID button 🆔
circled M Ⓜ
NEW button 🆕
NG button 🆖
O button (blood type) 🅾
OK button 🆗
P button 🅿
SOS button 🆘
UP! button 🆙
VS button 🆚
Japanese “here” button 🈁
Japanese “service charge” button 🈂
Japanese “monthly amount” button 🈷
Japanese “not free of charge” button 🈶
Japanese “reserved” button 🈯
Japanese “bargain” button 🉐
Japanese “discount” button 🈹
Japanese “free of charge” button 🈚
Japanese “prohibited” button 🈲
Japanese “acceptable” button 🉑
Japanese “application” button 🈸
Japanese “passing grade” button 🈴
Japanese “vacancy” button 🈳
Japanese “congratulations” button ㊗
Japanese “secret” button ㊙
Japanese “open for business” button 🈺
Japanese “no vacancy” button 🈵
red circle 🔴
orange circle 🟠
yellow circle 🟡
green circle 🟢
blue circle 🔵
purple circle 🟣
brown circle 🟤
black circle ⚫
white circle ⚪
red square 🟥
orange square 🟧
yellow square 🟨
green square 🟩
blue square 🟦
purple square 🟪
brown square 🟫
black large square ⬛
white large square ⬜
black medium square ◼
white medium square ◻
black medium-small square ◾
white medium-small square ◽
black small square ▪
white small square ▫
large orange diamond 🔶
large blue diamond 🔷
small orange diamond 🔸
small blue diamond 🔹
red triangle pointed up 🔺
red triangle pointed down 🔻
diamond with a dot 💠
radio button 🔘
white square button 🔳
black square button 🔲
chequered flag 🏁
triangular flag 🚩
crossed flags 🎌
black flag 🏴
white flag 🏳
letter a 🇦
letter b 🇧
letter c 🇨
letter d 🇩
letter e 🇪
letter f 🇫
letter g 🇬
letter h 🇭
letter i 🇮
letter j 🇯
letter k 🇰
letter l 🇱
letter m 🇲
letter n 🇳
letter o 🇴
letter p 🇵
letter r 🇷
letter s 🇸
letter t 🇹
letter u 🇺
letter v 🇻
letter y 🇾
letter z 🇿
