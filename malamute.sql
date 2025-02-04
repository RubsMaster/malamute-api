--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

-- Started on 2025-02-04 14:42:27 MST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16389)
-- Name: equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipment (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.equipment OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16392)
-- Name: equipment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.equipment_id_seq OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 218
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipment_id_seq OWNED BY public.equipment.id;


--
-- TOC entry 219 (class 1259 OID 16393)
-- Name: exercises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exercises (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    bodypart integer,
    equipment integer,
    level integer,
    rating numeric(3,2),
    type integer
);


ALTER TABLE public.exercises OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16398)
-- Name: exercises_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exercises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exercises_id_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 220
-- Name: exercises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exercises_id_seq OWNED BY public.exercises.id;


--
-- TOC entry 221 (class 1259 OID 16399)
-- Name: musculargroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.musculargroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.musculargroup OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16402)
-- Name: musculargroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.musculargroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.musculargroup_id_seq OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 222
-- Name: musculargroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.musculargroup_id_seq OWNED BY public.musculargroup.id;


--
-- TOC entry 223 (class 1259 OID 16403)
-- Name: workouttype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workouttype (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.workouttype OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16406)
-- Name: workouttype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workouttype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workouttype_id_seq OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 224
-- Name: workouttype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workouttype_id_seq OWNED BY public.workouttype.id;


--
-- TOC entry 3225 (class 2604 OID 16407)
-- Name: equipment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment ALTER COLUMN id SET DEFAULT nextval('public.equipment_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 16408)
-- Name: exercises id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercises ALTER COLUMN id SET DEFAULT nextval('public.exercises_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 16409)
-- Name: musculargroup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musculargroup ALTER COLUMN id SET DEFAULT nextval('public.musculargroup_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 16410)
-- Name: workouttype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workouttype ALTER COLUMN id SET DEFAULT nextval('public.workouttype_id_seq'::regclass);


--
-- TOC entry 3383 (class 0 OID 16389)
-- Dependencies: 217
-- Data for Name: equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipment (id, name) FROM stdin;
1	Bands
2	Barbell
3	Body Only
4	Cable
5	Dumbbell
6	Exercise Ball
7	E-Z Curl Bar
8	Foam Roll
9	Kettlebells
10	Machine
11	Medicine Ball
12	None
13	Other
\.


--
-- TOC entry 3385 (class 0 OID 16393)
-- Dependencies: 219
-- Data for Name: exercises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exercises (id, name, description, bodypart, equipment, level, rating, type) FROM stdin;
1	Partner plank band row	The partner plank band row is an abdominal exercise where two partners perform single-arm planks while pulling on the opposite ends of an exercise band. This technique can be done for time or reps in any ab-focused workout.	1	1	1	2.00	5
2	Banded crunch isometric hold	The banded crunch isometric hold is an exercise targeting the abdominal muscles, particularly the rectus abdominis or "six-pack" muscles. The band adds resistance and continuous tension to this popular exercise.	1	1	1	2.00	5
3	FYR Banded Plank Jack	The banded plank jack is a variation on the plank that involves moving the legs in and out for repetitions. Having a band around the thighs forces the lower body to work harder, particularly the hips and glutes. The plank jack is commonly performed as part of a bodyweight circuit, or as part of a dynamic warm-up.	1	1	1	2.00	5
4	Banded crunch	The banded crunch is an exercise targeting the abdominal muscles, particularly the rectus abdominis or "six-pack" muscles. The band adds resistance and continuous tension to this popular exercise.	1	1	1	2.00	5
5	Crunch	The crunch is a popular core exercise targeting the rectus abdominis, or "six-pack" muscles, as well as the obliques. It has been the centerpiece of many ab-focused workouts, due to both its simplicity and the intense burn and mind-muscle connection it produces. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
6	Decline band press sit-up	The decline band press sit-up is a weighted core exercise that works the rectus abdominis or "six pack" muscles, as well as the deep core muscles. It also taxes the muscles of the shoulders and upper back. Sit-up variations with added resistance are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the core-focused portion of a workout.	1	1	1	2.00	5
7	FYR2 Banded Frog Pump		1	1	1	2.00	5
8	Band low-to-high twist	The band low-to-high twist is a core exercise targeting the upper abdominals and the obliques. Take care to perform it with control, as rapid, uncontrolled twisting can injure the spine. It is usually performed for moderate to high reps, at least 8-15 per side, as part of the core-focused portion of a workout.	1	1	1	2.00	5
9	Barbell roll-out	The barbell roll-out is an abdominal exercise that utilizes a barbell in the place of an ab roller. It is best performed with a barbell that has rotating collars, and is considered more difficult than other ab roller variations. Many lifters may not be able to perform a single rep at first, but once they can perform these for reps, theyll be rewarded with a seriously strong core.	1	1	1	2.00	5
10	Barbell Ab Rollout - On Knees	The barbell roll-out is an abdominal exercise that utilizes a barbell in the place of an ab roller. It is best performed with a barbell that has rotating collars, and is considered more difficult than other ab roller variations. Many lifters may not be able to perform a single rep at first, but once they can perform these for reps, theyll be rewarded with a seriously strong core.	1	1	1	2.00	5
11	Decline bar press sit-up	The decline bar press sit-up is a weighted core exercise targeting the abdominal muscles, particularly the lower abs. It also challenges the shoulders and upper back to move the weight. Weighted sit-up variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the core-focused portion of a workout.	1	1	1	2.00	5
12	Bench barbell roll-out	The bench barbell roll-out is a challenging exercise targeting the abdominals. It is similar to using an ab roller, but using a barbell allows for a wider grip. Placing the knees on a bench rather than the floor makes the move more difficult by increasing the challenge to the upper body.	1	1	1	1.00	5
13	Barbell Side Bend		1	1	1	1.00	5
14	Seated bar twist	The seated bar twist is a core exercise meant to strengthen the obliques. It is often performed for high reps with relatively light weight, such as an empty barbell, a lightweight fixed-weight bar, or even a PVC pipe. It can be performed during a workout, at the end of a workout, or outside of the gym to build core strength and resiliency.	1	1	1	2.00	5
15	Single-arm landmine pull and press	The single-arm landmine pull and press is an explosive rotational movement using a barbell anchored in a landmine device. It combines a pull off the floor with rotation and finishes with a press. It is usually performed for low reps per set with an emphasis on speed and form, not moving heavy weight.	1	1	1	2.00	5
16	Barbell Ab Roll Out - Gethin Variation	The barbell roll-out is an abdominal exercise that utilizes a barbell in the place of an ab roller. It is best performed with a barbell that has rotating collars, and is considered more difficult than other ab roller variations. Many lifters may not be able to perform a single rep at first, but once they can perform these for reps, theyll be rewarded with a seriously strong core.	1	1	1	2.00	5
17	30 Barbell Floor Wiper	The barbell floor wiper is a core exercise in which the barbell is held in the locked-out position of a floor press, and the hips and legs are rotated side to side. It targets the oblique muscles of the lateral abdomen, but is also seriously challenging to the deep core and rectus abdominis or "six-pack" muscles.	1	1	1	2.00	5
18	30 Barbell Roll-Out	The barbell roll-out is an abdominal exercise that utilizes a barbell in the place of an ab roller. It is best performed with a barbell that has rotating collars, and is considered more difficult than other ab roller variations. Many lifters may not be able to perform a single rep at first, but once they can perform these for reps, theyll be rewarded with a seriously strong core.	1	1	1	2.00	5
19	Decline plate sit-up	The decline plate sit-up is a weighted core exercise that works the rectus abdominis or "six pack" muscles, as well as the deep core muscles. Weighted sit-up variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the core-focused portion of a workout.	1	1	1	2.00	5
20	KV Barbell Hip Thrust		1	1	1	2.00	5
21	Advanced Kettlebell Windmill		1	1	1	1.00	5
22	Kettlebell Windmill	The single-kettlebell windmill is a dynamic kettlebell exercise emphasizing core strength and shoulder and hip mobility and stability. It is often used as a functional warm-up or for multi-directional strength work. It doesnt work as well in a metcon or conditioning setting, and shouldnt be performed under intense fatigue.	1	1	1	2.00	5
23	Kettlebell Pass Between The Legs		1	1	1	1.00	5
60	Dumbbell V-sit cross jab-	The dumbbell V-sit cross jab is a hybrid movement that trains the abdominal and shoulder muscles simultaneously. It can address multiple muscle groups in a time-efficient muscle-building or circuit-style workout, while also providing a cardiovascular challenge.	1	1	1	2.00	5
61	30 Hanging Leg Raise With Dumbbell		1	1	1	2.00	5
24	Kettlebell 3-point leg extension	The kettlebell 3-point leg extension is a dynamic core exercise performed around and over a kettlebell or other short, stationary object. It is similar in some ways to a V-up or reverse crunch, but targets both the obliques and the rectus abdominis or "six-pack" muscles. It can be performed for reps or for time, usually in dedicated ab training or as part of a kettlebell and bodyweight circuit workout.	1	1	1	2.00	5
25	Double Kettlebell Swing		1	1	1	2.00	5
26	Burpee over kettlebell	The burpee over kettlebell is a more advanced version of a popular conditioning exercise. If youre performing a circuit that already has both burpees and kettlebell movements, its a simple way to provide a novel stimulus to the muscles of the lower body and create a more athletic style of training.	1	1	1	2.00	5
27	Kettlebell toe-touch	The kettlebell toe-touch is a more difficult version of a highly popular abdominal movement usually done for high reps. The simple addition of a weight makes the toe-touch far more difficult, providing a different stimulus to the core during training.	1	1	1	2.00	5
28	Kettlebell swing	The kettlebell swing is a popular lower-body exercise emphasizing the hamstrings, glutes, and back muscles. It is often used to train explosive power, for aerobic or cardiovascular conditioning, in circuit training, or as an accessory movement for the deadlift.	1	1	1	2.00	5
29	Two-way swing	The two-way kettlebell swing is an exercise that alternates a chest-height kettlebell swing (sometimes called a "Russian" or "hardstyle" swing) with an overhead kettlebell swing (sometimes called an "American" swing). Both swing variations work many of the same muscles, such as the hamstrings, glutes, and core, but because the weight must travel farther in the overhead swing, its slightly more metabolically demanding and works the upper back and shoulders more. This combo can be performed for time or reps and works especially well in circuit-style or full-body training. If you cant perform the overhead swing without lower back or shoulder pain, just perform the chest-height swing.	1	1	1	2.00	5
30	Kettlebell crab reach	The kettlebell crab reach is a kettlebell pressing exercise in which the lifter presses a kettlebell overhead while in a modified single-arm bridge position. The simple addition of a weight makes the reach far more difficult, challenging the muscles of the back, shoulders, glutes, and core.	1	1	1	2.00	5
31	Taylor Single-Arm Kettlebell Swing		1	1	1	2.00	5
32	Holman Kettlebell Up to Elbow Down		1	1	1	2.00	5
33	FYR2 Double-Kettlebell Ski		1	1	1	2.00	5
34	FYR2 Kettlebell Hike		1	1	1	2.00	5
35	FYR2 Kettlebell Cross-Body Catch		1	1	1	2.00	5
36	FYR2 Kettlebell Duck Walk		1	1	1	2.00	5
37	FYR2 Kettlebell Get-Up Reach		1	1	1	2.00	5
38	FYR2 Kettlebell Juggle		1	1	1	2.00	5
39	FYR2 Squat-Clean-Alternating-Press Complex		1	1	1	2.00	5
40	Dumbbell V-Sit Cross Jab	The dumbbell V-sit cross jab is a hybrid movement that trains the abdominal and shoulder muscles simultaneously. It can address multiple muscle groups in a time-efficient muscle-building or circuit-style workout, while also providing a cardiovascular challenge.	1	1	1	2.00	5
41	Dumbbell spell caster	The dumbbell spell caster is an exercise that primarily targets the abdominal muscles such as the obliques. However, it also works shoulders, back, hips, and legs, and demands all of those muscles work together in a coordinated motion. It is usually performed with relatively light weights for moderate to high reps, at least 8-12 reps per side. Make sure to only use a weight you can control.	1	1	1	1.00	5
42	Dumbbell side bend	The dumbbell side bend is a popular exercise for targeting the oblique muscles of the abdomen. It is usually performed for relatively high reps, at least 8-12 reps per set or more. It can be performed one side at a time or alternating sides.	1	1	1	2.00	5
43	Dumbbell crunch	The dumbbell crunch is a more difficult version of a highly popular abdominal movement. The simple addition of a weight makes the crunch far more difficult, providing a different stimulus to the core during training.	1	1	1	2.00	5
44	Dumbbell Fix Dumbbell Sprawl		1	1	1	2.00	5
45	Dumbbell Fix Alternating Renegade Row		1	1	1	2.00	5
46	Dumbbell Fix Dumbbell Mountain Climber		1	1	1	2.00	5
47	Dumbbell Fix Dumbbell Russian Twist		1	1	1	2.00	5
48	Dumbbell Fix Dumbbell Pull-Over		1	1	1	2.00	5
49	Dumbbell Fix Dumbbell Sit-Up		1	1	1	2.00	5
50	Dumbbell Fix Dumbbell Front Squat		1	1	1	2.00	5
51	Dumbbell Fix Full Man Maker		1	1	1	2.00	5
52	Dumbbell T-hold	The dumbbell T-hold is a static exercise that primarily targets the obliques, although it also works the shoulders and upper back. It involves holding a dumbbell in the air while in a side plank position. It is usually performed for timed holds, although it can be performed dynamically for reps as a plank with dumbbell rotation.	1	1	1	2.00	5
53	Dumbbell hollow-body floor press	The dumbbell hollow-body floor press combines upper-body strength and core work in one move.	1	1	1	2.00	5
54	Dumbbell crusher	The dumbbell crusher is a dumbbell complex that combines a squat with a dumbbell curl, followed by a triceps press. It targets the legs, glutes, biceps, shoulders, and triceps in a single sequence, making it a great way to burn serious calories and hit a lot of muscles in a short period of time. The upper-body movements will determine the amount of weight you can effectively use.	1	1	1	2.00	5
55	Dumbbell Crunch - Gethin Variation	The dumbbell crunch is a more difficult version of a highly popular abdominal movement. The simple addition of a weight makes the crunch far more difficult, providing a different stimulus to the core during training.	1	1	1	2.00	5
56	Single-arm dumbbell crunch	The single-arm dumbbell crunch is a more difficult version of a highly popular abdominal movement. Adding a weight to one side makes the crunch far more difficult to your rectus abdominis or "six-pack" muscles, as well as the obliques and deep core muscles.	1	1	1	2.00	5
57	HM Alternating Dumbbell Plank Row		1	1	1	2.00	5
58	Dumbbell straight-legged hip raise	The dumbbell straight-legged hip raise works the hips and glutes. It requires and teaches body control and coordination.	1	1	1	2.00	5
59	Seated leg tuck with dumbbell	The seated leg tuck with dumbbell is an ab exercise requiring only a bench and a dumbbell. Its commonly performed for high reps as a burnout at the end of a core workout.	1	1	1	2.00	5
675	Windmills		2	2	2	2.00	6
62	Dumbbell Get-Up Sit-Up		1	1	1	3.00	5
63	Holman Right Side Plank with Left Triceps Press		1	1	1	2.00	5
64	Holman Left Side Plank with Right Triceps Press		1	1	1	2.00	5
65	Holman Boat with Feet Push-Out and Overhead Press		1	1	1	2.00	5
66	Holman Hovering Plank Row		1	1	1	2.00	5
67	Holman Weighted Seated Killer Abs to Russian Twist		1	1	1	2.00	5
68	Holman Straight Plank Dumbbell Reach-Under		1	1	1	2.00	5
69	Holman Straight-Arm Side Plank Overhead Press to Chest Press		1	1	1	2.00	5
70	Holman Weighted Burpee to Pike		1	1	1	2.00	5
71	Holman Straight-Legged Boat Chest Press		1	1	1	2.00	5
72	Holman Weighted Burpee to Side Delt Raise		1	1	1	2.00	5
73	Holman Heavy Double Pike		1	1	1	2.00	5
74	Holman Heavy Double Split Pike		1	1	1	2.00	5
75	MetaBurn Alternating Dumbbell Sit-Through		1	1	1	2.00	5
76	MetaBurn Alternating Plank Row With Dumbbell Pull-Through		1	1	1	2.00	5
77	MetaBurn Alternating Plank Row With Push-Up		1	1	1	2.00	5
78	MetaBurn Dumbbell Russian Twist		1	1	1	2.00	5
79	MetaBurn Dumbbell Toe-Touch		1	1	1	2.00	5
80	MetaBurn Plank To Alternating Row		1	1	1	2.00	5
81	Standing dumbbell knee crunch-	The standing dumbbell knee crunch is a great way to train the abs while standing up. Additionally, the deltoids are worked because the lifter holds a pair of dumbbells overhead throughout.	1	1	1	2.00	5
82	MetaBurn Plank With Dumbbell Rotation		1	1	1	2.00	5
83	FYR2 Dumbbell Crab Reach		1	1	1	2.00	5
84	FYR2 Dumbbell Man-Maker		1	1	1	2.00	5
85	FYR2 Dumbbell Sit-Up Reach		1	1	1	2.00	5
86	FYR2 Loaded Beast Sprawl		1	1	1	2.00	5
87	FYR2 Loaded to Unloaded Beast		1	1	1	2.00	5
88	Lying Leg Pullover		1	1	1	2.00	5
89	Landmine twist	The landmine twist is a rotational abdominal movement performed using an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. It targets the deep muscles of the core, including both the obliques and the transversus abdominis. It can be done fast or slow, for time or reps, either in traditional muscle-focused rep ranges such as 8-12 reps per side or for higher rep ranges.	1	1	1	2.00	5
90	Suspended ab fall-out	The suspended ab fall-out is a dynamic abdominal exercise utilizing a suspension strap system or gymnastic rings. It is similar in form to an ab roller, but can more easily be scaled to be more or less difficult. It targets the muscles of the rectus abdominis or "six-pack" muscles, as well as the deep core muscles. It can be trained for low reps for strength or higher reps for muscle definition.	1	1	1	2.00	5
91	Decline reverse crunch	The decline reverse crunch is a popular bodyweight exercise targeting the abdominal muscles, particularly the lower abs. It is usually performed for high reps, such as 10-15 reps per set or more, as part of the ab-focused portion of a workout.	1	1	1	2.00	5
92	Plate Twist		1	1	1	1.00	5
93	Weighted Crunches	The weighted suitcase crunch is a weighted version of a popular abdominal training exercise. The simple addition of a weight makes the suitcase crunch far more difficult, helping build the "six pack" muscles and providing a different stimulus to the core during training.	1	1	1	2.00	5
94	Ab Roller	The ab wheel roll-out is an exercise targeting the abdominals, often with an inexpensive wheel device with a handle on either side. Many trainers and strength coaches claim its one of, if no the best exercise for developing strength in the midsection. Beginners may have to start with a limited range of motion or just wheel planks.	1	1	1	2.00	5
95	Otis-Up	The Otis-up is a weighted exercise focusing on the abdominal muscles, as well as the shoulders to a lesser degree. It primarily targets the rectus abdominus or â€œsix-packâ€ muscles, but also involves the obliques and deep core muscles. It is normally performed on a decline bench holding a weight plate, but can also be performed with a dumbbell, kettlebell, or other weight.	1	1	1	2.00	5
96	Captains chair knee raise	The captains chair knee raise is a bodyweight exercise that targets the abs. It is performed on an apparatus that allows the forearms to rest on pads and the upright torso to hang freely. Knee raises are often performed for moderate to high reps, such as 8-12 reps or more, as part of ab-focused training.	1	1	1	2.00	5
97	Sledgehammer swing	The sledgehammer swing is an exercise working the abdominals and numerous other muscles. The sledgehammer is slammed from overhead onto a tire which absorbs the impact and causes the hammer to bounce back up. It can be performed for time or reps as part of a functional fitness or athleticism-focused workout.	1	1	1	2.00	3
98	Decline bar press sit-up	The decline bar press sit-up is a weighted core exercise targeting the abdominal muscles, particularly the lower abs. It also challenges the shoulders and upper back to move the weight. Weighted sit-up variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the core-focused portion of a workout.	1	1	1	2.00	5
99	Pallof press	The Pallof press is an isometric exercise that trains core stability. It involves resisting rotation from a cable or band, developing what is sometimes called "anti-rotation" core strength. It is most often seen in programs for athletes who compete in sports that test strength, power, and functional movements. It can be trained in timed holds or for reps by pressing the cable or band away from the body.	1	1	1	2.00	5
100	Weighted Sit-Ups - With Bands	The weighted sit-up is a more difficult version of a highly popular abdominal movement. The simple addition of a weight makes the sit-up far more difficult, providing a different stimulus to the core during training and helping build strong abs.	1	1	1	2.00	5
101	Suitcase crunch	The suitcase crunch is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It is similar to a V-up, but the lower back stays flat against the ground. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
142	Holman Feet-Elevated Wax-On Wax-Off		1	1	1	2.00	5
143	Holman Elbow Plank to Towel Pike		1	1	1	2.00	5
102	FYR Rope Jumping	Jumping rope is classic conditioning exercise that is popular with everyone from children to boxers to CrossFit athletes. It targets many different muscles, including the calves, glutes, shoulders, and upper back, and is great for everything from fat loss to improving overall athletic performance.	1	1	1	2.00	5
103	Barbell press sit-up	The barbell press sit-up is a weighted exercise focusing on the abdominal muscles, as well as the shoulders to a lesser degree. It primarily targets the rectus abdominis or "six-pack" muscles, but also involves the obliques and deep core muscles. It can be performed on the floor with the feet anchored or unanchored, or on a decline or other bench. It is similar to the Otis-up, which is performed with a weight plate.	1	1	1	2.00	5
104	Single-arm bent-over rear delt fly	The single-arm bent-over rear delt fly is a popular upper-body exercise that targets the muscles on the back of the shoulder joint, specifically the rear head of the deltoid. Since pressing movements build the front and (to a lesser degree) side deltoid heads, this move is often done to promote balanced shoulder development. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a shoulder or upper-body workout.	1	1	1	2.00	5
105	Captains chair leg raise	The captains chair leg raise is a bodyweight exercise that targets the abs. It is performed on an apparatus that allows the forearms to rest on pads and the upright torso to hang freely. Leg raise variations are often performed for moderate to high reps, such as 8-12 reps or more, as part of ab-focused training.	1	1	1	2.00	5
106	Shoulder-Elevated One-Leg Hip Thrusts		1	1	1	2.00	5
107	Ab Twist - Gethin Variation	The cross-body sit-up is a bodyweight exercise targeting the ab muscles, the obliques and rectus abdominis or "six-pack" muscles in particular. It involves bringing the opposite-side knee and elbow together, usually alternating sides with each rep. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
108	Weighted Crunch - Gethin Variation	The weighted sit-up is a more difficult version of a highly popular abdominal movement. The simple addition of a weight makes the sit-up far more difficult, providing a different stimulus to the core during training and helping build strong abs.	1	1	1	2.00	5
109	Ab Wheel Roll-Out - Gethin Variation	The ab wheel roll-out is an exercise targeting the abdominals, often with an inexpensive wheel device with a handle on either side. Many trainers and strength coaches claim its one of, if no the best exercise for developing strength in the midsection. Beginners may have to start with a limited range of motion or just wheel planks.	1	1	1	2.00	5
110	Bench crunch	The bench crunch is a popular ab exercise performed lying on a bench. It is largely similar to the same exercise performed on the floor, but being able to press the lower back into the bench pad can help reinforce proper form and increase the burn in the abs. Like most crunch variations, it is usually performed for moderate to high reps, such as 8-12 reps per set or more.	1	1	1	2.00	5
111	Decline plate sit-up twist	The decline plate sit-up twist is a weighted core exercise that works the obliques and rectus abdominis or "six pack" muscles, as well as the deep core muscles. Weighted sit-up variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the core-focused portion of a workout.	1	1	1	2.00	5
112	Reverse ab roll-out	The reverse ab roll-out is an exercise targeting the abdominals. Its a twist on the ab wheel roll-out, and is similar to a body saw exercise, only performed on a foam roller. Instead of your arms moving and your lower body remaining stationary, your lower body moves and your arms remain stationary. Beginners may need to use a limited range of motion.	1	1	1	2.00	5
113	30 Seated Twist With PVC Pipe	The seated bar twist is a core exercise aiming to strengthen the obliques.	1	1	1	2.00	5
114	Suspended crunch-	The suspended crunch is an abdominal exercise performed with the feet in the stirrups of a suspension strap system. It targets the muscles of the core, most prominently the rectus abdominis or "six-pack" muscles, but also taxes the shoulders and deep core muscles.	1	1	1	2.00	5
115	Suspended oblique crunch	The suspended oblique crunch is an abdominal exercise performed with the feet in the stirrups of a suspension strap system. It targets the muscles of the core, most prominently the obliques, but also the rectus abdominis or "six-pack" muscles, the shoulders, and deep core muscles.	1	1	1	2.00	5
116	Weighted sit-up	The weighted sit-up is a more difficult version of a highly popular abdominal movement. The simple addition of a weight makes the sit-up far more difficult, providing a different stimulus to the core during training and helping build strong abs.	1	1	1	2.00	5
117	30 Decline Press Sit-Up	The decline bar press sit-up is a core and upper body exercise targeting the lower abdominals and shoulders.	1	1	1	2.00	5
118	Holman Towel Reverse Plank Alternating Heel Pull-in		1	1	1	2.00	5
119	Holman Boat with Weighted Cross Punch		1	1	1	2.00	5
120	Holman Weighted Hook Punch		1	1	1	2.00	5
121	Holman Weighted Traveling Punch		1	1	1	2.00	5
122	Holman Weighted Uppercut Punch		1	1	1	2.00	5
123	Holman Slow Weighted Double Pike		1	1	1	2.00	5
124	Holman Plate Straight Plank Reach		1	1	1	2.00	5
125	Holman Plate Elbow Plank Jack to Straight Plank Jack		1	1	1	2.00	5
126	Holman Plate Hill Climber		1	1	1	2.00	5
127	Holman Plate Reverse Plank Hill Climber		1	1	1	2.00	5
128	Holman Plate Straight Plank Pike to Jack		1	1	1	2.00	5
129	Holman Plate In-and-Out Push-Up		1	1	1	2.00	5
130	Holman Plate Burpee		1	1	1	2.00	5
131	Holman Plate Elbow Plank Reach		1	1	1	2.00	5
132	Holman Elbow Plank to Renegade Row		1	1	1	2.00	5
133	Holman Straight Plank Weighted Hand Hill Climber		1	1	1	2.00	5
134	Holman Weighted Left Side Diagonal Pike		1	1	1	2.00	5
135	Holman Weighted Right Side Diagonal Pike		1	1	1	2.00	5
136	Holman Weighted W-Boat to Overhead Press		1	1	1	2.00	5
137	Holman Weighted Kneeling Lift		1	1	1	2.00	5
138	Holman Hips-Up Weighted Pull-Over		1	1	1	2.00	5
139	Holman Weighted Cross Punch		1	1	1	2.00	5
140	Holman Straight-Leg Boat Hover Chest Press		1	1	1	2.00	5
141	Holman Weighted Pike		1	1	1	2.00	5
144	Holman Seated Killer Abs Overhead Press		1	1	1	2.00	5
145	Holman Straight Plank Alternating Weighted Open		1	1	1	2.00	5
146	Holman Weighted Killer Abs with Overhead Press		1	1	1	2.00	5
147	Holman Weighted Split-Leg Pike		1	1	1	2.00	5
148	Holman Towel Reverse Plank Heel Pull-in		1	1	1	2.00	5
149	Stick Twist		1	1	1	2.00	5
150	Roc Everest		1	1	1	2.00	1
151	Standing cable low-to-high twist	The standing cable low-to-high twist is a core exercise targeting the upper abdominals and the obliques. Take care to perform it with control, as opposed to violent twisting which can injure the back. It is usually performed for moderate to high reps, at least 8-15 per side, as part of the core-focused portion of a workout.	1	1	1	2.00	5
152	Single-arm high-cable side bend	The single-arm high-cable side bend is an exercise targeting the obliques using a cable stack machine.	1	1	1	2.00	5
153	Kneeling cable oblique crunch	The kneeling cable oblique crunch is a popular core isolation exercise using a rope attachment and cable stack while kneeling on the floor. It primarily targets the obliques and rectus abdominis or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed for moderate to high reps, such as 8-12 reps per set or higher.	1	1	1	2.00	5
154	Kneeling cable crunch	The kneeling cable crunch is a popular core isolation exercise using a rope attachment and cable stack while kneeling on the floor. It primarily targets the rectus abdominis or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed early in an ab workout, usually in moderate to high reps, such as 8-12 reps per set or higher.	1	1	1	2.00	5
155	Rope Crunch	The kneeling cable crunch is a popular core isolation exercise using a rope attachment and cable stack while kneeling on the floor. It primarily targets the rectus abdominus or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed early in an ab workout, usually in moderate to high reps like 8-12 reps per set or higher.	1	1	1	2.00	5
156	Standing cable crunch	The standing cable crunch is a popular core isolation exercise using a rope attachment. It primarily targets the rectus abdominis or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed early in an ab workout, usually in moderate to high reps, such as 8-12 reps per set or higher.	1	1	1	2.00	5
157	Bosu Ball Cable Crunch With Side Bends		1	1	1	1.00	5
158	Standing Cable Wood Chop	The standing cable high-to-low twist is a core exercise targeting the lower abdominals and the obliques.	1	1	1	2.00	5
159	Cable reverse crunch	The cable reverse crunch is performed on the ground facing away from a high pulley, which helps target the lower abdominals specifically.	1	1	1	1.00	5
160	Cable Russian Twists		1	1	1	1.00	5
161	Pallof press with rotation	The Pallof press with rotation is a dynamic variation of the Pallof press that incorporates weighted rotation away from the torso using resistance from a cable pulley. It is intended to build abdominal strength and teach proper bracing. It can be performed for time or for reps in the core-focused portion of any workout.	1	1	1	2.00	5
162	Cable Seated Crunch		1	1	1	1.00	5
163	Cable Judo Flip		1	1	1	1.00	5
164	Exercise Ball Cable Crunch - Gethin Variation	The exercise ball crunch is a popular gym exercise targeting the abdominals. Unlike crunches on the floor or a bench, by using a ball, you can increase the range of motion and both stretch and contract the abs on every rep. The ball crunch can be performed for low reps with a slower tempo, focusing on a hard contraction, or for higher reps.	1	1	1	2.00	5
165	Standing cable high-to-low twist	The standing cable high-to-low twist is a core exercise targeting the lower abdominals and the obliques. Take care to perform it with control, as opposed to violent twisting which can injure the back. It is usually performed for moderate to high reps, at least 8-15 per side, as part of the core-focused portion of a workout.	1	1	1	2.00	5
166	Bent-Over Reverse Cable Fly		1	1	1	2.00	5
167	Standing Cable Crunch - Gethin Variation	The standing cable crunch is a popular core isolation exercise using a rope attachment. It primarily targets the rectus abdominus or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed early in an ab workout, usually in moderate to high reps like 8-12 reps per set or higher.	1	1	1	2.00	5
168	AM Cable Crunch	The kneeling cable crunch is a popular core isolation exercise using a rope attachment and cable stack while kneeling on the floor. It primarily targets the rectus abdominus or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed early in an ab workout, usually in moderate to high reps like 8-12 reps per set or higher.	1	1	1	2.00	5
169	Tyler Holt Weighted Knee-To-Chest Crunch		1	1	1	2.00	5
170	Standing cable twist	The standing cable twist is a core exercise that targets the abdominals, particularly the obliques. Take care to perform it with control, as opposed to violent twisting which can injure the back. It is usually performed for moderate to high reps, at least 8-15 per side, as part of the core-focused portion of a workout.	1	1	1	2.00	5
171	30 Cable Rope Crunch	The kneeling cable crunch is a popular core isolation exercise using a rope attachment and cable stack while kneeling on the floor. It primarily targets the rectus abdominus or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed early in an ab workout, usually in moderate to high reps like 8-12 reps per set or higher.	1	1	1	2.00	5
172	30 Cable Rope Oblique Crunch	The kneeling cable oblique crunch is a popular core isolation exercise using a rope attachment and cable stack while kneeling on the floor. It primarily targets the obliques and rectus abdominus or "six-pack" muscles, but also strengthens the deep core muscles. It is most commonly performed for moderate to high reps like 8-12 reps per set or higher.	1	1	1	2.00	5
173	Cable lying twist on ball	The cable lying twist on ball is an exercise targeting the core and obliques with the added challenge of stability to keep from losing position on the unstable surface.	1	1	1	2.00	5
174	30 Cable Pallof Press	The pallof press is an anti-rotation, isometric exercise that trains core stability. It is most often seen in programs for athletes who compete in sports that test strength, power, and functional movements.	1	1	1	2.00	5
383	HM Flutter Kick		1	1	1	2.00	5
384	HM Plank		1	1	1	2.00	5
385	McGill Pull-Up		1	1	1	2.00	5
175	30 Cable Reverse Crunch On Ball	The cable reverse crunch on a BOSU is performed on top of a BOSU ball between two cable pulleys, which helps target the lower abdominals specifically and is more proprioceptively challenging than a cable reverse crunch on the floor.	1	1	1	2.00	5
176	30 Cable Reverse Crunch	The cable reverse crunch is performed on the ground facing away from a high pulley, which helps target the lower abdominals specifically.	1	1	1	2.00	5
177	Tyler Holt Cable Torso Twist		1	1	1	2.00	5
178	Single-Arm Cable Outward-Facing Biceps Curl	The single-arm cable outward-facing biceps curl is a cable exercise that targets the biceps. It is performed standing in front of a cable machine facing away from the cable stack to increase the range of motion by fully extending the elbows. This movement is usually performed for moderate to high reps for a burn and pump as part of an arm-focused workout.	1	1	1	2.00	5
179	Biceps Rope Curl		1	1	1	2.00	5
180	Kneeling Cable Crunches		1	1	1	2.00	5
181	Ab Crunch Machine	The machine crunch is a machine-based exercise targeting the abdominal muscles. It involves sitting upright in the machine and curling the torso down toward the chest against some pre-set level of resistance. On some machines, the knees also curl up torward the torso. Crunch machines usually use extra resistance in the form of selectorized weight stacks or plate loading, and are often performed for moderate to high reps, like 8-12 reps per set or higher, as part of the ab-focused portion of a workout.	1	1	1	2.00	5
182	Smith machine straight-legged hip raise	The Smith machine straight-legged hip raise is an exercise targeting the abdominal muscles. Because of the potential awkwardness of getting into position, it is usually performed for moderate to high reps, such as 8-12 reps per set or more. If your Smith machine has safety bars, set them at a height that allows you a full range of motion while giving adequate protection from the weight potentially falling.	1	1	1	2.00	5
183	Machine crunch	The machine crunch is a machine-based exercise targeting the abdominal muscles. It involves sitting upright in the machine and curling the torso down against a pre-set level of resistance. On some machines, the knees also curl up toward the torso. Crunch machines usually use extra resistance in the form of selectorized weight stacks or plate loading, and are often performed for moderate to high reps, such as 8-12 reps per set or more, as part of the ab-focused portion of a workout.	1	1	1	2.00	5
184	AM Ab Machine		1	1	1	2.00	5
185	Smith machine V-up	The smith machine V-up is a weighted abdominal exercise that involves pressing a weighted bar upward while performing a V-up. Performing it in a Smith machine eliminates the balance challenge of a free weight. It is usually performed for moderate to high reps in the ab-focused portion of a workout.	1	1	1	2.00	5
186	Elbow plank	The elbow plank is a popular isometric abdominal exercise. It is common in all types of exercise programs, as well as in group fitness and yoga classes. It targets the muscles of the core, the deep core or transversus abdominis in particular. It is also often prescribed for time to help back pain or to teach proper bracing.	1	1	1	2.00	5
187	Bottoms Up	The lying leg lift is a popular bodyweight exercise targeting the muscles of the abs, the rectus abdominis or â€œsix-packâ€ muscles in particular. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
188	Spider crawl	The spider crawl is a bodyweight exercise that involves crawling on the floor with the knees outside of the elbows. It is different from a leopard crawl in that the hips are higher, and its different from a bear crawl because the knees are wider. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	1	1	1	2.00	5
189	Cocoons	The cocoon crunch is a bodyweight exercise targeting the ab muscles, the rectus abdominis or "six-pack" muscles in particular. It involves bringing your knees to your chest and your arms from overhead to center. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
190	Cross-Body Crunch	The elbow-to-knee crunch is a bodyweight exercise targeting the ab muscles, the obliques and rectus abdominis or "six-pack" muscles in particular. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
191	Elbow-to-knee crunch	The elbow-to-knee crunch is a bodyweight exercise targeting the ab muscles, the obliques and rectus abdominis or "six-pack" muscles in particular. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
192	Decline Crunch	The decline crunch is an effective core exercise targeting the rectus abdominis.	1	1	1	2.00	5
193	Hanging toes-to-bar	The hanging toes-to-bar is an advanced abdominal exercise in which the lifter touches their feet to a pull-up bar. There are many ways to perform this movement (strict or swinging, arms completely straight or slightly bent, legs straight or bent) each providing unique benefits and challenges. Initially, it may be a difficult move to do for a single rep, but once you build the requisite core, lat, and shoulder strength, it can be performed for higher reps.	1	1	1	2.00	5
194	Hanging Oblique Knee Raise	The hanging oblique crunch an abdominal exercise that targets both the rectus abdominus or â€œsix-packâ€ muscles, and the oblique muscles. It can be performed hanging from a bar, or if grip strength is a limitation, by placing the elbows in ab straps. If hanging from a straight bar is uncomfortable to the wrists or shoulder, you can also perform them hanging with a neutral grip (palms facing one another)	1	1	1	2.00	5
195	Gorilla Chin/Crunch		1	1	1	1.00	5
196	Hanging leg raise	The hanging leg raise is an exercise targeting the abs, but which also works the lats and hip flexors. Instead of resting your forearms on the pads of a captains chair, you perform these hanging from a bar. Experienced lifters make these look easy, but beginners may need time to build up to sets of 8-12 reps.	1	1	1	2.00	5
197	Mountain climber	The mountain climber is a popular bodyweight exercise targeting the muscles of the core, as well as the shoulders, hips, and cardiovascular system. It involves lifting one knee to the chest at a time from a straight-arm plank position. It can be performed for time or reps as part of a dynamic warm-up, for bodyweight cardio or conditioning, or as no-equipment dynamic core training.	1	1	1	2.00	3
198	Ab bicycle	The ab bicycle is a bodyweight movement that targets the muscles of the abs, the obliques and rectus abdominis or "six-pack" muscles in particular. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
452	Holman Hand-Elevated Walk-Over Push-Up		1	1	1	2.00	5
199	3/4 sit-up	The 3/4 sit-up is a bodyweight exercise focused on the muscles of the core. It is similar to a sit-up, but stops short of the top position. This keeps constant tension on the abs, making it more difficult than traditional sit-ups. It can be performed for time or for reps, with the feet anchored or free, as part of the ab-focused portion of any workout.	1	1	1	2.00	5
200	Reverse crunch	The reverse crunch is a popular exercise targeting the abdominals, particularly the lower half. Itâ€™s easy to perform on either the floor or a flat bench. Many lifters think of this as a companion to the crunch, which targets the upper abdominals more than the lower.	1	1	1	2.00	5
201	Crunches	The crunch is a popular core exercise targeting the rectus abdominis, or "six-pack" muscles, as well as the obliques. It has been the centerpiece of many ab-focused workouts, due to both its simplicity and the intense burn and mind-muscle connection it produces. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
202	Dead bug reach	The dead bug reach is an exercise for strengthening the core in which you alternate lowering your opposing arm and leg simultaneously, controlling the movement with the abdominal muscles. It can be part of a dynamic warm-up to activate the core for other athletics or lifting, or be performed in a circuit or on its own in the ab-focused portion of any workout.	1	1	1	2.00	5
203	Crunch - Hands Overhead		1	1	1	1.00	5
204	V-up	The V-up is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It is similar to a suitcase crunch, but the lower back lifts off the ground at the top of each rep. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
205	Stomach Vacuum		1	1	1	1.00	6
206	Russian twist	The Russian twist is an exercise targeting the abdominals and the obliques. Beginning from a position that resembles stopping midway through a sit-up, it involves twisting side to side. It can be performed with body weight alone or while holding a weight plate or other object. It is performed by alternating sides with each rep and can be done for time or for a specific number of reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
207	Flat Bench Lying Leg Raise	The lying leg lift is a popular bodyweight exercise targeting the muscles of the abs, the rectus abdominis or â€œsix-packâ€ muscles in particular. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
208	Knees tucked crunch	The knees tucked crunch is a core exercise that involves performing a crunch while keeping the knees bent in a 90-degree position. It primarily targets the rectus abdominis or "six-pack" muscles. It can be performed for time or reps as part of any abs-focused circuit or workout.	1	1	1	2.00	5
209	Butt-Ups		1	1	1	1.00	5
210	Feet-elevated oblique crunch	The feet-elevated oblique crunch is a variation on the crunch exercise that targets the obliques as well as the rectus abdominis or "six-pack" muscles. Resting the feet on a bench takes some of the hip flexor activation out of the movement, focusing the stress more on the abs.	1	1	1	2.00	5
211	Bent-knee reverse crunch	The bent-knee reverse crunch is a popular bodyweight core exercise. It targets the lower portion of the rectus abdominis or "six-pack" muscles. It can be performed for time or reps as part of any ab-focused workout.	1	1	1	2.00	5
212	Alternating heel-touch	The alternating heel-touch is a popular bodyweight exercise that targets the obliques, as well as the rectus abdominis, or "six-pack" muscles. It can be performed for time or reps as part of any abs-focused circuit or workout.	1	1	1	2.00	5
213	Suspended Reverse Crunch		1	1	1	2.00	5
214	Lying bench reverse crunch	The lying bench reverse crunch is a popular ab exercise performed by bringing the knees toward the chest while lying on a bench. It is largely similar to the same exercise performed on the floor, but being able to press the lower back into the bench pad can help reinforce proper form and increase the burn in the abs. Like most crunch variations, it is usually performed for moderate to high reps, such as 8-12 reps per set or more.	1	1	1	2.00	5
215	Sit-up	The sit-up is a popular bodyweight exercise focused on the abdominal muscles. It has also been used as part of military, tactical, and scholastic fitness tests for many years. It can be performed for time or reps, with the feet anchored or free, on flat ground or a bench.	1	1	1	2.00	5
216	Side Bridge	The side plank is a popular isometric abdominal exercise focusing on the oblique muscles, as well as the transversus abdominis or deep core muscles. It is sometimes paired with the curl up and bird dog as the â€œMcGill big threeâ€ for core strength and stability. It is performed for time and can work in a warm-up or in the core-focused portion of any workout.	1	1	1	2.00	5
217	Lying oblique crunch	The lying oblique crunch is a bodyweight exercise targeting the oblique muscles. It can be performed for a specific number of reps or to fatigue or failure as part of the ab-focused portion of any workout.	1	1	1	2.00	5
218	Janda Sit-Up		1	1	1	1.00	5
219	Leg Pull-In	The reverse crunch is a popular exercise targeting the abdominals, particularly the lower half. Itâ€™s easy to perform on either the floor or a flat bench. Many lifters think of this as a companion to the crunch, which targets the upper abdominals more than the lower.	1	1	1	1.00	5
220	Side Jackknife		1	1	1	2.00	5
221	Scissor Kick		1	1	1	2.00	6
222	Toe Touchers	The toe-touch is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	6
223	Lower Back Curl		1	1	1	2.00	6
224	Exercise ball torso rotation	The exercise ball torso rotation is a rotational abdominal exercise performed while holding a yoga or exercise ball between the hands. It focuses on the rotational muscles of the core, including the obliques, glutes, and hip muscles. It can be performed one side at a time or alternating, either for time or reps. To make it more difficult, wrap a light exercise band around the ball and anchor it to a solid object.	1	1	1	2.00	6
225	Seated Overhead Stretch		1	1	1	2.00	6
226	Overhead Stretch		1	1	1	2.00	6
227	Seated Scissor Kick		1	1	1	2.00	5
386	AM Leg Lift	The captains chair leg raise is an exercise that targets the abs and hip flexors. It involves an apparatus that allows the forearms to rest on pads and the upright torso to hang freely. Unlike the Captainâ€™s chair knee raise, the legs are straight here.	1	1	1	2.00	5
228	Partner resistance standing twist	The partner resistance standing twist is a bodyweight exercise in which one partner performs bodyweight twists while the other provides manual resistance. It targets the muscles of the core, and the obliques in particular. It can be performed in the core-focused part of any workout.	1	1	1	2.00	5
229	Cross Crunch		1	1	1	1.00	5
230	Full Moon		1	1	1	1.00	5
231	Hanging knee raise with manual resistance	The hanging knee raise with manual resistance is a more advanced version of the hanging knee raise that utilizes a partner. The partner applies enough resistance to make the movement more difficult, while still allowing the lifter to perform multiple reps.	1	1	1	1.00	5
232	Straight-Legged Hip Raise		1	1	1	2.00	5
233	Wall mountain climber	The wall mountain climber is a challenging exercise targeting the shoulders and abdominals. Its most common in bodyweight circuit training because it targets a lot of muscles as well as the cardiovascular system all at once. It can be performed for time or reps.	1	1	1	2.00	3
234	Skin The Cat To Push-Up		1	1	1	2.00	5
235	Partner lying leg raise with lateral throw down	The partner lying leg raise with lateral throw down is a core exercise in which one partner performs a leg raise while the other partner pushes their legs back down at a lateral angle. The partner performing the exercise has to use core strength and stability to keep their legs from falling to the ground.	1	1	1	1.00	5
236	Hanging leg raise with throw down	The hanging leg raise with throw down is a more advanced version of the hanging knee raise that utilizes a partner to make the movement more difficult. The partner pushes down at the top of each rep, forcing the lifter to "fight back" with their abs.	1	1	1	1.00	5
237	Partner sit-up with high-five	The partner sit-up with high-five is a full-body exercise targeting the core. Partners each perform a sit-up and high-five each other mid rep.	1	1	1	1.00	5
238	Exercise ball knee roll-in	The exercise ball knee roll-in is an abdominal exercise that involves supporting yourself with your hands in a plank or push-up position and drawing the knees in toward the chest. This is a fairly advanced abdominal move requiring a fair amount of core strength.	1	1	1	2.00	5
239	Partner lying leg raise with throw down	The partner lying leg raise with throw down is a core exercise in which one partner performs a leg raise while the other partner pushes their legs back down. The partner performing the exercise has to use core strength and stability to keep their legs from falling to the ground.	1	1	1	1.00	5
240	Crab toe-touch	The crab toe-touch is a full-body exercise targeting the glutes, hamstrings, quads, and core. It is a challenging move that trains balance, core strength, and many muscle groups, making it work well in a time-efficient bodyweight circuit workout.	1	1	1	2.00	5
241	Side kick-through	The side kick-through is a full-body movement that involves isometric holds and moving the body through different ranges of motion, beginning in a bear crawl position. The difference between a side kick-through and a sit-through is that your butt stays off the ground throughout the entire rep. It is commonly performed in bodyweight circuits and animal-style flows, but can also work for reps on its own or as part of a dynamic warm-up or mobility sequence.	1	1	1	2.00	5
242	Partner target sit-up	The partner target sit-up is a core exercise where one partner performs sit-ups, while the other uses his or her hands to create a target for them to reach for. This increases the challenge of each rep. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	1.00	5
243	Suspended Crunch		1	1	1	1.00	5
244	Jump Lunge	The alternating lunge jump is an explosive bodyweight exercise that targets the lower-body muscles, including the quads, glutes, and hamstrings. It can be performed for time or reps in power training, and is also effective in any fat-loss or athleticism-focused workout.	1	1	1	2.00	5
245	Side plank hip dip	The side plank hip dip is a dynamic version of the side plank exercise focusing on the oblique muscles, as well as the transversus abdominis or deep core muscles. It can be performed for time or reps and can work in a warm-up or in the core-focused portion of any workout.	1	1	1	2.00	5
246	Elbow plank jack	The elbow plank jack is an isometric abdominal exercise with a dynamic lower-body component. It targets the muscles of the core, the deep core or transversus abdominis in particular. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
247	Exercise ball V-up	The exercise ball V-up is a popular movement to target the abdominal muscles, particularly the rectus abdominis or "six-pack" muscles. It involves passing an exercise ball or yoga ball back and forth between the hands and feet while performing V-ups. It can be performed for reps or time as part of any ab-focused workout or bodyweight circuit.	1	1	1	2.00	5
248	Standing torso twist stretch	The standing torso twist stretch is a stretching exercise targeting the lats and core, particularly the obliques. Itâ€™s great before a workout or any sporting event that involves a lot of twisting of the upper body.	1	1	1	2.00	5
249	Slalom jumps	The slalom jump is an explosive bodyweight exercise that targets the lower body, including the quads, glutes, and hamstrings. Performed for reps, it also provides a serious cardiovascular challenge. It can be performed for time or reps and is especially effective in a fat-loss or athleticism-focused circuit or workout.	1	1	1	2.00	3
250	Bear crawl	The bear crawl is a popular bodyweight crawling exercise. While it looks simple, the bear crawl is an intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups, the shoulders, core, and legs in particular. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	1	1	1	2.00	5
251	Crab single-arm reach	The crab single-arm reach is a full-body exercise that requires maintaining a tabletop position while alternating arm raises. It is an excellent movement to include in a dynamic warm-up, a bodyweight circuit, or for muscle activation or mobility anytime.	1	1	1	2.00	6
252	Side lunge cross-body heel-touch	The side lunge cross-body heel-touch is a lower-body exercise targeting the quads, glutes, and hamstrings. The heel-touch adds a slight rotational challenge.	1	1	1	2.00	5
253	Alligator Crawl	The spider crawl is a bodyweight exercise that involves crawling on the floor with the knees outside of the elbows. It is different from a leopard crawl in that the hips are higher, and its different from a bear crawl because the knees are wider. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	1	1	1	2.00	5
254	Lying cross-over lower back stretch	The lying cross-over lower back stretch is a simple bodyweight stretch targeting the lower back, hips, and torso. It involves rotating the legs while lying flat on the back. It is commonly included in dynamic warm-ups, but can also be performed as full-body mobility work anytime.	1	1	1	2.00	5
255	Half bird dog	The half bird dog is a core exercise designed to strengthen the posterior chain. In the half bird dog, you will raise one arm or one leg at a time, rather than both at once as you would for a regular bird dog.	1	1	1	2.00	6
256	Shoulder tap	The shoulder tap is an exercise targeting the abdominals and core. The basic stance matches the top of a push-up position. From there, one hand is raised to tap its opposing shoulder. A tap with each hand to each opposing shoulder equals one rep.	1	1	1	2.00	5
257	Double crunch	The double crunch is a bodyweight exercise focused on the muscles of the core, the rectus abdominis or "six-pack" muscles in particular. Its a very simple exercise that involves "crunching" the knees and elbows toward each other using the abdominal muscles, while keeping the back flat against the ground.	1	1	1	2.00	5
258	Flutter kick	The flutter kick is a core exercise where the legs are held off the ground as you flutter your feet over and under each other in small motions. It targets multiple muscles of the core, but particularly the rectus abdominis or "six-pack" muscles. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
259	Sprawl	The sprawl is an explosive bodyweight exercise that targets the core, upper body, and lower body. It is similar to a burpee, but without a jump at the top and with a plank instead of a push-up at the bottom. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	1	1	1	2.00	5
260	Spider plank jack	The spider plank jack is a bodyweight core exercise that begins in a straight-arm plank, then combines a spider crunch and a plank jack into a single sequence. It can be performed as bodyweight core training or for conditioning in a fat-loss or athleticism-focused circuit.	1	1	1	2.00	5
261	Pillar-To-Plank		1	1	1	2.00	5
262	Alternating High Knee Raise		1	1	1	2.00	5
263	Sumo Squat Pulse		1	1	1	2.00	5
264	Line-Drill Foot Work		1	1	1	2.00	5
265	Plank Fire Hydrants		1	1	1	2.00	5
266	Banded jumping jack	The banded jumping jack takes a classic plyometric exercise and adds an extra degree of difficulty in the form of a band surrounding the thighs, just above the knees. It can be performed for time or reps and is a great way to warm up for athletics or lower-body lifting.	1	1	1	2.00	5
267	Shin hug	The shin hug is a bodyweight exercise focused on the muscles of the core. It shares characteristics with V-ups and crunches, but finishes with the ribs touching the thighs. It can be performed for time or for reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
268	FYR Bear Crawl Fire Feet	Bear crawl fire feet is a variation of the bear crawl that involves running in place while in a static bear crawl hold. It adds an extra coordination and full-body challenge to an already intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups. It can be done as a full-body warm-up, or as part of a bodyweight circuit or flow.	1	1	1	2.00	5
269	Bear crawl up-down	The bear crawl up-down is a variation of the bear crawl that involves lowering the forearms to the ground in an alternating rhythm while in a static bear crawl hold. It adds an extra coordination and upper-body challenge to an already intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups. It can be done as a full-body warm-up, or as part of a bodyweight circuit or flow.	1	1	1	2.00	5
270	FYR Crab Kick	The crab toe-touch is a full-body exercise targeting the glutes, hamstrings, quads, and core.	1	1	1	2.00	5
271	Bear crawl hold	The bear crawl hold is a static variation of the bear crawl exercise performed for time. It looks simple, but it demands full-body tension and is taxing to the shoulders, core, and legs. It can be done as a full-body warm-up, as part of a bodyweight circuit or flow, or as a build-up to the traditional bear crawl.	1	1	1	2.00	5
272	Traveling bear crawl	The traveling bear crawl is a more advanced version of the bear crawl exercise that moves side to side rather than front to back. While it looks simple, the traveling bear crawl is an intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups, the shoulders, core, and legs in particular. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	1	1	1	2.00	5
273	Single-leg V-up	The single-leg V-up is a bodyweight exercise that targets the abdominals and the hip flexors, working one side of the body at a time. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
274	FYR Bear Crawl Shoulder Tap	The bear crawl shoulder tap is a variation of the bear crawl that involves touching the opposing shoulder while in a static bear crawl hold. It adds an extra coordination and core challenge to an already intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups. It can be done as a full-body warm-up, or as part of a bodyweight circuit or flow.	1	1	1	2.00	5
275	Alternating single-leg sprawl	The alternating single-leg sprawl is an explosive bodyweight exercise that targets the core, upper body, and lower body. It differs from a standard sprawl by including a single-leg plank instead of a regular plank at the bottom. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	1	1	1	2.00	5
276	Wide mountain climber	The wide mountain climber is a popular bodyweight exercise targeting the muscles of the core, as well as the shoulders, hips, and cardiovascular system. It is different from a traditional mountain climber because you bring the knee to the outside of the elbow rather than the inside. It can be performed for time or reps as part of a dynamic warm-up, for bodyweight cardio or conditioning, or as no-equipment dynamic core training.	1	1	1	2.00	5
277	Plank leg raise	The plank leg raise is an isometric abdominal exercise that targets the muscles of the core, the deep core or transversus abdominis in particular. It also targets the muscles of the glutes and hips. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
322	Sit-Up - Gethin Variation	The sit-up is a popular bodyweight exercise focused on the abdominal muscles. It has also been used as part of military, tactical, and scholastic fitness tests for many years. It can be performed for time or reps, with the feet anchored or free, on flat ground or a bench.	1	1	1	2.00	5
278	Glute bridge step-out	The glute bridge step-out is a lower-body bodyweight exercise that targets the glutes and hamstrings. It differs from a glute bridge by the addition of a step-out, which increases stress on the hamstrings. It can be performed for time or reps and works perfectly in a dynamic warm-up for lower-body training, but can also be performed for glute activation anytime.	1	1	1	2.00	5
279	Knee up-down	The knee up-down is a bodyweight exercise that mimics getting up and down from a kneeling position on the floor. It combines the low position of a squat with lunges, bringing some of the benefits of both. It can be done for time or reps as part of a dynamic warm-up or as part of a bodyweight circuit or workout.	1	1	1	2.00	5
280	FYR Sprawl	The sprawl is an explosive bodyweight exercise that targets the core, upper body, and lower body. It is similar to a burpee, but without a jump at the top and with a plank instead of a push-up at the bottom. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	1	1	1	2.00	5
281	Reach crunch	The reach crunch is a bodyweight core exercise that involves keeping the arms raised toward the ceiling while performing a crunch. It can be performed for time or reps as part of any abs-focused circuit or workout.	1	1	1	2.00	5
282	FYR Push-Up Plank Hold	The straight-arm plank is an exercise targeting the core muscles. It is basically the top of a push-up position, with elbows fully extended and palms on the floor. The position is held for time to target the muscles of the core, as well as the shoulders.	1	1	1	2.00	5
283	FYR Hollow-Body Rock	The hollow-body rock is a bodyweight abdominal exercise performed on the floor. It starts with a hollow-body hold and adds a back-and-forth rock that challenges core stability and increases the difficulty of the movement. It can be performed for time or for reps, either in an ab-focused portion of a workout or as part of a circuit workout.	1	1	1	2.00	5
284	V-up plus knee-to-chest combo	The V-up plus knee-to-chest combo is a core exercise that targets the abdominals and hip flexors by combining two movements into a single sequence. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
285	Side plank lateral raise	The side plank lateral raise is an exercise that combines an isometric side plank hold with a dumbbell raise to target both the core and the shoulders. You probably wont be able to use much weight without disrupting your balance, but even at light weight, this is a movement that can help address multiple muscle groups in a time-efficient workout.	1	1	1	2.00	5
286	Superhero burpee	The superhero burpee is an advanced variation of the burpee exercise. The main difference between this and the standard burpee is that while on the floor, the hands are extended in front of the body like Superman taking flight. This increases the challenge to the upper back and shoulders. These can be performed for time or reps as part of any fat-loss or athleticism-focused workout or circuit.	1	1	1	2.00	5
287	Hollow-body abduction	The hollow-body abduction is an isometric core exercise that includes leg abductions for an added challenge to the core and abductors. It targets multiple muscles of the core, but particularly the rectus abdominis or "six-pack" muscles. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
288	FYR Hollow Hold		1	1	1	2.00	5
289	Tip-toe crunch	The tip-toe crunch is a variation on the crunch exercise that involves placing the toes on or near the ground. This can help isolate the abs from the hip flexors. The tip-toe crunch can be performed for time or for reps as part of the core-focused component of any workout.	1	1	1	2.00	5
290	Knee-to-nose pulse	The knee-to-nose pulse is a bodyweight exercise that targets the core by pulsing your knee toward your nose. It starts in a straight-arm plank position, and is similar to a mountain climber, but with a hold or pause in the bent-knee position.	1	1	1	2.00	5
291	Plank walk-out	The plank walk-out is an advanced plank variation targeting the core and shoulders. From a standing position, the lifter descends into a plank-type position but â€œwalksâ€ the hands forward until they are out in front of the head. This is far more challenging to the core than having the arms directly under the shoulders. Beginners will need to progress to this exercise.	1	1	1	2.00	5
292	FYR V-Up	The V-up is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It is similar to a suitcase crunch, but the lower back lifts off the ground at the top of each rep. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
293	Long sit-up	The long sit-up is an advanced version of the sit-up exercise that is performed with the hands reaching over the head. This lengthens the torso, making it harder for the abs to contract and lift the upper body. Long sit-ups can be performed for time or for reps, with the feet anchored or free.	1	1	1	2.00	5
294	FYR Breakdancer	The side kick-through is a full-body movement that involves isometric holds and moving the body through different ranges of motion, beginning in a bear crawl position. The difference between a side kick-through and a sit-through is that your butt stays off the ground throughout the entire rep. It is commonly performed in bodyweight circuits and animal-style flows, but can also work for reps on its own or as part of a dynamic warm-up or mobility sequence.	1	1	1	2.00	5
295	Seated leg lift	The seated leg lift is a bodyweight exercise targeting the muscles of the core and hip flexors. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
296	Gorilla burpee	The gorilla burpee is a variation of the burpee exercise that consists of a reverse lunge on each leg, a full squat, then a standard burpee. It is extra challenging for the lower body, including the quads, glutes, and hamstrings. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	1	1	1	2.00	5
297	Knee-in to V-out	The knee-in to V-out is a bodyweight abdominal exercise performed on the floor. It is similar to both the reverse crunch and the V-up exercise, but combines elements of both. It primarily targets the muscles of the rectus abdominis, or â€œsix-packâ€ muscles. It can be performed for reps or time, either as part of an ab-focused workout or as a component of a circuit workout.	1	1	1	2.00	5
298	Bear crawl push-up	The bear crawl push-up is a variation of the bear crawl hold with a push-up added. It adds an extra coordination and shoulder challenge to an already intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups, the shoulders, core, and legs in particular. It can be done as a full-body warm-up, or as part of a bodyweight circuit or flow.	1	1	1	2.00	5
299	FYR Front Step		1	1	1	2.00	5
300	Plank reach	The plank reach is an exercise targeting the entire core, particularly the oblique muscles. It resembles a plank exercise, but the primary difference is that the lifter extends their arms forward, one at time. The core, especially the obliques, must work hard to maintain stability. It can be performed for time, with holds in the reaching position, or for reps.	1	1	1	2.00	5
301	Eiffel Tower leg raise	The Eiffel Tower leg raise is a bodyweight exercise targeting the muscles of the abs, the rectus abdominis or â€œsix-packâ€ muscles in particular. It is similar to a V-up, but with the added challenge of â€œdrawingâ€ a pyramid shape in the air with the legs during each rep. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
302	Straight-arm plank	The straight-arm plank is an exercise targeting the core muscles. It is basically the top of a push-up position, with elbows fully extended and palms on the floor. The position is held for time to target the muscles of the core, as well as the shoulders.	1	1	1	2.00	5
303	Plank up-down	The plank up-down is a variation of the plank push-up that ends in an elbow plank rather than with the chest on the ground. It involves transitioning between the two positions one arm at a time, rather than two. It puts more stress on the triceps and core than traditional planks. It can be performed for time or reps in any bodyweight workout or during the core-focused portion of any workout.	1	1	1	2.00	5
304	Frog kick	The frog kick is an explosive bodyweight movement that involves hopping the rear legs up and forward from a straight-arm plank position. It targets the legs, core, and shoulders, but is also a high-intensity conditioning movement that will raise core body temperature and burn serious calories. It can be performed for time or reps as part of any athleticism-focused or fat-loss circuit or workout.	1	1	1	2.00	5
305	FYR Knees to Chest	The hollow-body alternating knee-to-chest is a core exercise that involves bending the legs while holding the hips and shoulder blades off the ground. It targets the rectus abdominis or "six-pack" muscles. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
306	Front kick-through	The front kick-through is a full-body movement that involves moving the legs from a bear crawl position to a balanced one-legged stance. It is commonly performed for reps or time in bodyweight circuits and animal-style flows, but can also work on its own or as part of a dynamic warm-up or mobility sequence.	1	1	1	2.00	5
307	FYR Sit-Up	The sit-up is a popular bodyweight exercise focused on the abdominal muscles. It has also been used as part of military, tactical, and scholastic fitness tests for many years. It can be performed for time or reps, with the feet anchored or free, on flat ground or a bench.	1	1	1	2.00	5
308	FYR Leg Lift	The seated leg lift is a bodyweight exercise targeting the muscles of the core and hip flexors. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
309	TBS Toes-to-bar	The hanging toes-to-bar is an advanced abdominal exercise in which the lifter touches their feet to a pull-up bar. There are many ways to perform this movement: strict or swinging, arms completely straight or slightly bent, legs straight or bent, each providing unique benefits and challenges. Initially, it may be a difficult move to do for a single rep, but once you build the requisite core, lat, and shoulder strength, it can be performed for higher reps.	1	1	1	2.00	5
310	FYR Mountain Climber	The mountain climber is a popular bodyweight exercise targeting the muscles of the core, as well as the shoulders, hips, and cardiovascular system. It involves lifting one knee to the chest at a time from a straight-arm plank position. It can be performed for time or reps as part of a dynamic warm-up, for bodyweight cardio or conditioning, or as no-equipment dynamic core training.	1	1	1	2.00	5
311	Roman Chair Side Ups		1	1	1	2.00	5
312	Push-Up Roll Out - Gethin Variation		1	1	1	2.00	5
313	Cross-Body Crunch - Gethin Variation	The cross-body sit-up is a bodyweight exercise targeting the ab muscles, the obliques and rectus abdominis or "six-pack" muscles in particular. It involves bringing the opposite-side knee and elbow together, usually alternating sides with each rep. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
314	Decline leg lift with twist	The decline leg lift with twist is a bodyweight core exercise targeting the obliques and rectus abdominis or "six-pack" muscles, particularly the lower abs. It can be performed for time or for reps as part of the core-focused portion of any workout or circuit.	1	1	1	2.00	5
315	Hanging Leg Raise - Variation Gethin	The hanging leg raise is an exercise targeting the abs and hip flexors. Instead of resting the forearms on the pads of apparatus, hang from a bar. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
316	Butterfly crunch	The butterfly crunch is a popular bodyweight exercise that targets the rectus abdominis, or "six-pack" muscles. It gets its name from the position of the elbows and knees, both of which are bent out like wings. It can be performed for time or reps as part of any abs-focused circuit or workout.	1	1	1	2.00	5
317	Cross-body mountain climber	The cross-body mountain climber is a popular bodyweight exercise targeting the muscles of the core, as well as the shoulders, hips, and cardiovascular system. It is different from a traditional mountain climber because you bring the knee to the opposite side of the body rather than simply to the chest. It can be performed for time or reps as part of a dynamic warm-up, for bodyweight cardio or conditioning, or as no-equipment dynamic core training.	1	1	1	2.00	5
318	Flat Bench Lying Leg Raise - Gethin Variation	The lying leg lift is a popular bodyweight exercise targeting the muscles of the abs, the rectus abdominis or â€œsix-packâ€ muscles in particular. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
319	Lying leg lift	The lying leg lift is a popular bodyweight exercise targeting the muscles of the abs, the rectus abdominis or â€œsix-packâ€ muscles in particular. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
320	Hanging alternating single-leg raise	The hanging alternating single-leg raise is an exercise targeting the abs, but which also works the lats and hip flexors. Rather than performing both legs at a time, you lift one and alternate with each rep. Leg raises are often performed for moderate to high reps, such as 8-12 reps or more, as part of ab-focused training. However, this difficult variation may require some time to build up to those rep ranges.	1	1	1	2.00	5
321	Plank Walk		1	1	1	2.00	5
381	HM Plank Alternating Hip-Dip		1	1	1	2.00	5
382	HM Tuck-Up Get-Up		1	1	1	2.00	5
323	Plank Push-Up	The plank up-down is a variation of the plank push-up that ends in an elbow plank rather than with the chest on the ground. It involves transitioning between the two positions one arm at a time, rather than two. It puts more stress on the triceps and core than traditional planks. It can be performed for time or reps in any bodyweight workout or during the core-focused portion of any workout.	1	1	1	2.00	5
324	Decline crunch-	The decline crunch is a popular bodyweight exercise targeting the rectus abdominis or "six-pack" muscles, particular the upper abs. It is usually performed for high reps, such as 10-15 reps per set or more, as part of the ab-focused portion of a workout.	1	1	1	2.00	5
325	Alternating lying leg raise	The alternating lying leg lift is a popular bodyweight exercise targeting the muscles of the abs, the rectus abdominis or â€œsix-packâ€ muscles in particular. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
326	Decline leg lift	The decline leg lift is a popular bodyweight core exercise targeting the rectus abdominis or "six-pack" muscles, particularly the lower abs. It can be performed for time or for reps as part of the core-focused portion of any workout or circuit.	1	1	1	2.00	5
327	Crunch - Gethin Variation	The crunch is a popular core exercise targeting the rectus abdominis, or "six-pack" muscles, as well as the obliques. It has been the centerpiece of many ab-focused workouts, due to both its simplicity and the intense burn and mind-muscle connection it produces. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
328	Plank - Gethin Variation	The elbow plank is a popular isometric abdominal exercise. It is common in all types of exercise programs, as well as in group fitness and yoga classes. It targets the muscles of the core, the deep core or transversus abdominis in particular. It is also often prescribed for time to help back pain or to teach proper bracing.	1	1	1	2.00	5
329	Barbell floor wiper	The barbell floor wiper is a core exercise in which the barbell is held in the locked-out position of a floor press, and the hips and legs are rotated side to side. It targets the oblique muscles of the lateral abdomen, but is also seriously challenging to the deep core and rectus abdominis or "six-pack" muscles.	1	1	1	2.00	5
330	Prison Push-Up		1	1	1	2.00	5
331	McGill Modified Curl-Up		1	1	1	2.00	5
332	Cross-body toe-touch	The cross-body toe-touch is a version of the toe-touch stretch where instead of both hands reaching down toward both feet, one hand at a time reaches for the opposing foot. Its a common component in dynamic warm-ups for training or sports, but can also be performed for simple flexibility work anytime.	1	1	1	2.00	5
333	Toy soldier	The toy soldier is a calisthenics exercise targeting the hip flexors and legs, which are kicked up one at a time. When each leg is at the top of the kick, the opposing hand touches that foot. Its a common warm-up exercise before athletics, but can also help raise core temperature and mobilize a wide range of muscles and joints prior to training.	1	1	1	2.00	5
334	Natural Glute Ham Raise with Stability Ball		1	1	1	2.00	5
335	Lateral ape	The lateral ape is an exercise focused on the lower body that involves staying in a low squat position as you hop laterally. It can be performed as part of a dynamic warm-up, to improve hip mobility, or as part of a fat-loss or athleticism-focused circuit workout.	1	1	1	2.00	5
336	Hollow-body knee tuck	The hollow-body knee tuck is a bodyweight abdominal exercise performed on the floor. It is similar to both the hollow-body hold and the knee tuck or reverse crunch, combining elements of both. It primarily targets the muscles of the rectus abdominis, or â€œsix-packâ€ muscles. It can be performed for reps or time, either as part of an ab-focused workout or as a component of a circuit workout.	1	1	1	2.00	5
337	HM Air Jumping Rope		1	1	1	2.00	5
338	HM Alternating Lunge Reach		1	1	1	2.00	5
339	HM Alternating Side Plank Reach		1	1	1	2.00	5
340	HM Superman Plank		1	1	1	2.00	5
341	HM Table Pose		1	1	1	2.00	5
342	HM Toe Touch		1	1	1	2.00	5
343	HM Right Side Bird-Dog		1	1	1	2.00	6
344	HM Right Side Crunch		1	1	1	2.00	5
345	HM Bicycle		1	1	1	2.00	5
346	HM Bird-Dog Plank		1	1	1	2.00	5
347	HM Boat Pose		1	1	1	2.00	5
348	HM Bottoms Up		1	1	1	2.00	5
349	HM Bridge		1	1	1	2.00	5
350	HM Running Man Crunch		1	1	1	2.00	1
351	HM Seated Twist		1	1	1	2.00	5
352	HM Side-Bend Pose		1	1	1	2.00	5
353	HM Side-Plank Arm Wrap		1	1	1	2.00	5
354	HM Side-Plank with Hip Touch		1	1	1	2.00	5
355	HM Side-Plank with Kick		1	1	1	2.00	5
356	HM Side V-Up		1	1	1	2.00	5
357	HM Crab Crunch		1	1	1	2.00	5
358	HM Cross-Over Crunch		1	1	1	2.00	5
359	HM Crunch Pulse		1	1	1	2.00	5
360	HM Dead Bug		1	1	1	2.00	5
361	HM Single-Leg Inchworm		1	1	1	2.00	5
362	HM Floor Jack		1	1	1	2.00	5
363	HM Floor Wiper		1	1	1	2.00	5
364	HM Floor Kick		1	1	1	2.00	5
365	HM Sit-Up		1	1	1	2.00	5
366	HM Slow Mountain Climber		1	1	1	2.00	5
367	HM Slow Sit-Up		1	1	1	2.00	5
368	HM Half-Up		1	1	1	2.00	5
369	HM Hollow-Body Pulse		1	1	1	2.00	5
370	HM Hollow Hold		1	1	1	2.00	5
371	HM Inchworm		1	1	1	2.00	5
372	HM Right Side Hollow Hold with Pulse		1	1	1	2.00	5
373	HM Reverse Crunch with Frisbee		1	1	1	2.00	5
374	HM Left Side Bird-Dog		1	1	1	2.00	5
375	HM Left Side Crunch		1	1	1	2.00	5
376	HM Left Side Hollow Hold With Pulse		1	1	1	2.00	5
377	HM Reverse Crunch		1	1	1	2.00	5
378	HM Low Lunge With External Twist And Arm Reach		1	1	1	2.00	5
379	HM Mountain Climber		1	1	1	2.00	5
380	HM Prison Sit-Up		1	1	1	2.00	5
387	AM Decline Abs	The decline sit-up is a core exercise that works the iliopsoas, quads, hip flexors, and adductors. The rectus abdominis and obliques are the stabilizers in this movement.	1	1	1	2.00	5
388	Hanging crunch	The hanging crunch an abdominal exercise that targets the rectus abdominis or "six-pack" muscles. It can be performed hanging from a bar, on a dip station or parallel bars, or if grip strength is a limitation, by placing the elbows in ab straps. If hanging from a straight bar is uncomfortable to the wrists or shoulders, you can also perform them hanging with a neutral grip (palms facing one another). It is similar to a hanging knee raise, but with more spinal curling and a more pronounced "crunch" at the top.	1	1	1	2.00	5
389	Tyler Holt Hanging Toes-To-Bar		1	1	1	2.00	5
390	Side plank	The side plank is a popular isometric abdominal exercise focusing on the oblique muscles, as well as the transversus abdominis or deep core muscles. It is sometimes paired with the curl up and bird dog as the â€œMcGill big threeâ€ for core strength and stability. It is performed for time and can work in a warm-up or in the core-focused portion of any workout.	1	1	1	2.00	5
391	Bird dog-	The bird dog is a core exercise designed to help strengthen and stabilize the posterior chain. It involves lifting an opposite-side arm and leg while in a bent-leg tabletop position. It is most commonly performed as part of a dynamic warm-up, or for mobility and muscle activation anytime.	1	1	1	2.00	5
392	Single-leg curl up	The single-leg curl up is a bodyweight abdominal movement that teaches and reinforces abdominal â€œbracingâ€ for strength training. It is usually performed along with variations of the bird dog and side plank as the â€œMcGill big three.â€ The curl up can be performed for time or for reps, with or without pauses at the top position, as part of a warm-up or the core-focused component of any workout.	1	1	1	2.00	5
393	Single-kettlebell windmill	The single-kettlebell windmill is a dynamic kettlebell exercise emphasizing core strength and shoulder and hip mobility and stability. It is often used as a functional warm-up or for multi-directional strength work. It doesnt work as well in a metcon or conditioning setting, and shouldnt be performed under intense fatigue.	1	1	1	2.00	5
394	UNS Foam Roll Thigh		1	1	1	2.00	5
395	UNS Inverted row		1	1	1	2.00	5
396	UNS T-spine rotation with reach		1	1	1	2.00	5
397	UNS Quadruped thoracic rotation		1	1	1	2.00	5
398	UNS Pec stretch		1	1	1	2.00	5
399	UNS Lat stretch		1	1	1	2.00	5
400	UNS Foam Roll		1	1	1	2.00	5
401	UNS Foam Roll Lats		1	1	1	2.00	5
402	UNS Rocking Adductor Stretch		1	1	1	2.00	5
403	UNS Bird Dog		1	1	1	2.00	5
404	UNS Jumping Jack		1	1	1	2.00	5
405	Ab wheel roll-out	The ab wheel roll-out is an exercise targeting the abdominals using an inexpensive wheel device with a handle on either side. Many trainers and strength coaches claim its one of the best exercises for developing strength in the midsection. Beginners may have to start with a limited range of motion or just wheel planks.	1	1	1	2.00	5
406	Bench mountain climber	The bench mountain climber is a bodyweight exercise that works the core, shoulders, and lower body while burning a lot of calories. Placing the hands on an elevated surface such as a bench decreases the challenge to the shoulders, allowing lifters to focus their work on the other body parts. Mountain climber variations are usually performed at a fast pace for moderate to high reps, such as 8-12 reps per leg or more.	1	1	1	2.00	5
407	Feet-elevated bench side plank	The feet-elevated bench side plank is an advanced version of the side plank performed with the feet elevated on a bench. It targets the same muscles as the side plank, including the obliques, shoulders, and lateral hips, but the body angle makes it more difficult than side planks on the floor. Most lifters will need to progress to this version after mastering the basic side plank first.	1	1	1	2.00	5
408	Cross-body sit-up	The cross-body sit-up is a bodyweight exercise targeting the ab muscles, the obliques and rectus abdominis or "six-pack" muscles in particular. It involves bringing the opposite-side knee and elbow together, usually alternating sides with each rep. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
409	Decline kayak	The decline kayak is a core exercise targeting the obliques. It involves making a paddling motion on a decline bench with the feet anchored, using a bar or pipe for weight. It is usually performed for moderate to high reps, at least 8-12 reps per side, as part of the ab-focused portion of a workout or circuit.	1	1	1	2.00	5
410	30 Decline Reverse Crunch	The decline reverse crunch is a core exercise targeting the lower abdominals.	1	1	1	2.00	5
411	Decline sit-up twist	The decline sit-up twist is a bodyweight core exercise that targets the obliques, as well as the rectus abdominis or "six pack" muscles. Sit-up variations are usually performed for moderate to high reps, such as 10-15 reps per set or more, as part of the core-focused portion of a workout.	1	1	1	2.00	5
412	30 Flat Bench Leg Raise	The lying leg lift is a popular bodyweight exercise targeting the muscles of the abs, the rectus abdominis or â€œsix-packâ€ muscles in particular. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
413	30 Flutter Kick	The flutter kick is a core exercise where the legs are held off the ground as you flutter your feet over and under each other in small motions. It targets multiple muscles of the core, but particularly the rectus abdominis or "six-pack" muscles. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
414	Chin-up crunch	The chin-up crunch is an exercise targeting the core and overall upper-body strength. It combines a chin-up with a knee raise or crunch to give extra emphasis to the core.	1	1	1	2.00	5
415	30 Gorilla Chin Oblique Crunch		1	1	1	2.00	5
416	Half Turkish get-up	The half Turkish get-up is a kettlebell movement that focuses on the first portion of the Turkish get-up exercise. It is often taught as a precursor to the full Turkish get-up, but is also a valuable abdominal and shoulder exercise in its own right. It can be performed for reps or time, either in lower rep ranges for strength or higher rep ranges for technique practice or conditioning.	1	1	1	2.00	5
449	Holman Elbow Plank Saw		1	1	1	2.00	5
450	Holman Feet-Elevated Straight Plank Toe-Tap Series		1	1	1	2.00	5
451	Holman Elbow Plank Pike Pull		1	1	1	2.00	5
417	30 Hanging Oblique Crunch	The hanging oblique crunch an abdominal exercise that targets both the rectus abdominus or â€œsix-packâ€ muscles, and the oblique muscles. It can be performed hanging from a bar, or if grip strength is a limitation, by placing the elbows in ab straps. If hanging from a straight bar is uncomfortable to the wrists or shoulder, you can also perform them hanging with a neutral grip (palms facing one another)	1	1	1	2.00	5
418	30 Hollow-Body Hold	The hollow-body hold is an isometric exercise that increases strength and stability in the core muscles. It is common in gymnastics training, CrossFit training, and as a core tension and bracing drill for lifters and athletes of all types. It is performed for time and can be performed as an activation drill prior to lifting, as part of a circuit, or as equipment-free core training anytime.	1	1	1	2.00	5
419	Parallel bars knee raise	The parallel bars knee raise is a bodyweight exercise that targets the abs. It is performed on parallel bars, starting in the top position of a dip. Knee raises are often performed for moderate to high reps, such as 8-12 reps or more, as part of ab-focused training.	1	1	1	2.00	5
718	Seated Straigh-Bar Curl Superset	The seated wide-grip curl to close-grip curl is a variation on the classic seated dumbbell curl. The variation is that the range of motion changes in alternating fashionâ€”one more traditional, one where youâ€™re bringing the weight in more from the side.	4	4	4	1.00	5
420	30 Landmine Twist	The landmine twist is a rotational abdominal movement performed utilizing an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. It targets the deep muscles of the core, including both the obliques and the transversus abdominus. It can be done fast or slow, for time or reps, either in traditional muscle-focused rep ranges such as 8-12 reps per side.	1	1	1	2.00	5
421	Parallel bars leg raise	The parallel bars leg raise is a bodyweight exercise that targets the abs. It is performed on parallel bars, starting in the top position of a dip. Leg raises are often performed for moderate to high reps, such as 8-12 reps or more, as part of ab-focused training. However, this difficult variation may require some time to build up to those rep ranges.	1	1	1	2.00	5
422	Otis-up-	The Otis-up is a weighted exercise focusing on the abdominal muscles and the shoulders to a lesser degree. It primarily targets the rectus abdominis or "six-pack" muscles, but also involves the obliques and deep core muscles. It is normally performed on a decline bench holding a weight plate, but can also be performed with a dumbbell, kettlebell, or other weight.	1	1	1	2.00	5
423	30 Shoulder Tap	The shoulder tap is an exercise targeting the abdominals and core. The basic stance matches the top of a push-up position. From there, one hand is raised to tap its opposing shoulder. A tap with each hand to each opposing shoulder equals one rep.	1	1	1	2.00	5
424	30 Spider Crawl	The spider crawl is a bodyweight exercise that involves crawling on the floor with the knees outside of the elbows. It is different from a leopard crawl in that the hips are higher, and its different from a bear crawl because the knees are wider. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	1	1	1	2.00	5
425	Spider crunch	The spider crunch is a core exercise that begins in a straight-arm plank position and involves raising one knee toward your same-side elbow to target the obliques. It is similar to a mountain climber, but with the knees out wider. It can be performed for time or reps as bodyweight ab training or conditioning.	1	1	1	2.00	5
426	Toe-touch	The toe-touch is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
427	30 Hanging Toes-To-Bar	The hanging toes-to-bar is an advanced abdominal exercise in which the lifter touches their feet to a pull-up bar. There are many ways to perform this movement: strict or swinging, arms completely straight or slightly bent, legs straight or bent, each providing unique benefits and challenges. Initially, it may be a difficult move to do for a single rep, but once you build the requisite core, lat, and shoulder strength, it can be performed for higher reps.	1	1	1	2.00	5
428	30 V-Up	The V-up is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It is similar to a suitcase crunch, but the lower back lifts off the ground at the top of each rep. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
429	Cocoon crunch	The cocoon crunch is a bodyweight exercise targeting the ab muscles, the rectus abdominis or "six-pack" muscles in particular. It involves bringing your knees to your chest and your arms from overhead to center. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	5
430	Bench oblique crunch	The bench oblique crunch is an exercise that targets the obliques, the muscles running alongside the rectus abdominis. The range of motion is fairly small, but it still does a great job of working these hard-to-isolate muscles. Like most crunch variations, it is usually performed for moderate to high reps, such as 8-12 reps per set or more.	1	1	1	2.00	5
431	Full moon-	The full moon is a bodyweight exercise targeting the muscles of the abs. It is similar to a V-up, but with the added challenge of â€œdrawingâ€ a circle shape in the air during each rep. It can be performed for time or reps in the core-focused portion of any workout.	1	1	1	2.00	5
432	Push-up to side plank	The push-up to side plank is an upper-body and core-focused exercise combining two popular bodyweight movements. It targets the chest, triceps, and shoulders with the push-up, and the obliques and hip external rotator muscles with the side plank. It can be performed as part of a dynamic warm-up or any bodyweight strength-training workout.	1	1	1	2.00	5
433	Tyler Holt V-Up		1	1	1	2.00	5
434	Tyler Holt Plank		1	1	1	2.00	5
435	Tyler Holt Hip-Dip		1	1	1	2.00	5
436	Suicides		1	1	1	2.00	5
437	Holman Towel Straight Plank Jack		1	1	1	2.00	5
438	Holman Towel Hill Climber		1	1	1	2.00	5
439	Holman Towel Elbow Plank Jack		1	1	1	2.00	5
440	Holman Towel Elbow Plank Pike		1	1	1	2.00	5
441	Holman Towel Straight Plank Hand Reach		1	1	1	2.00	5
442	Holman Towel Wax-On Wax-Off		1	1	1	2.00	5
443	Holman Towel Wide Hill Climber		1	1	1	2.00	5
444	Holman Towel Dirty Dog		1	1	1	2.00	5
445	Holman Straight Plank Shoulder Tap		1	1	1	2.00	5
446	Holman Killer Abs		1	1	1	2.00	5
447	Holman Straight Plank Split Jack		1	1	1	2.00	5
448	Holman Elbow Plank Swim		1	1	1	2.00	5
453	Holman Hands-Elevated Hill Climber		1	1	1	2.00	5
454	Holman Seated Pike		1	1	1	2.00	5
455	Holman Feet-Elevated Up-Down Plank		1	1	1	2.00	5
456	Holman Feet-Elevated Hand Tap		1	1	1	2.00	5
457	Holman Reverse Straight Plank with Alternating Heel Pull-In		1	1	1	2.00	5
458	Holman Elbow Plank		1	1	1	2.00	5
459	Holman Straight Plank Squat Thrust		1	1	1	2.00	5
460	Holman Alternating Single-Leg Pike		1	1	1	2.00	5
461	Holman Knee Pull-In Crunch		1	1	1	2.00	5
462	Holman Straight Plank with Hand Tap		1	1	1	2.00	5
463	Holman Straight Plank with Dirty Dog		1	1	1	2.00	5
464	Holman Elbow Plank Roll		1	1	1	2.00	5
465	Holman Froggy Push-Up		1	1	1	2.00	5
466	Holman Straight Plank Hand Tap to Shoulder Tap		1	1	1	2.00	5
467	Holman In-Out Straight Plank		1	1	1	2.00	5
468	Holman Bicycle		1	1	1	2.00	5
469	Holman Alternating Diagonal Knee Pull-in		1	1	1	2.00	5
470	Holman Elbow Plank with Step-Out		1	1	1	2.00	5
471	Holman Alternating Slow L-Raise		1	1	1	2.00	5
472	Holman Feet-Elevated Plank with Shoulder Tap		1	1	1	2.00	5
473	Holman Feet-Elevated Inchworm Pike to Straight Plank Push-Up		1	1	1	2.00	5
474	Holman Feet-Elevated Up-Down Elbow Plank		1	1	1	2.00	5
475	Holman Feet-Elevated Plank Pike Pull		1	1	1	2.00	5
476	Holman Feet-Elevated Alternating Single-Leg Hip Raise		1	1	1	2.00	5
477	Holman Feet-Elevated Plank Pike Pull to Push-Up		1	1	1	2.00	5
478	Holman Standing Heel Click		1	1	1	2.00	5
479	Holman Straight Plank Right-Left Jack to Split Jack		1	1	1	2.00	5
480	Holman Elbow Plank Jack to Ninja Knees		1	1	1	2.00	5
481	Holman Right Side Elbow Plank with Left Leg Swing		1	1	1	2.00	5
482	Holman Left Side Elbow Plank with Right Leg Swing		1	1	1	2.00	5
483	Holman Straight Plank with Alternating Diagonal Sit-Back		1	1	1	2.00	5
484	Holman Boat Press with Leg Extension		1	1	1	2.00	5
485	Holman Shoulder Tap to Dirty Dog		1	1	1	2.00	5
486	Holman Standing Russian Twist		1	1	1	2.00	5
487	Holman Hovering Plank with Shoulder Tap		1	1	1	2.00	5
488	Holman Elbow Plank to Stacked Plank Hip Drop		1	1	1	2.00	5
489	Holman Elbow Plank to Walk-Up Pike		1	1	1	2.00	5
490	Holman Hill Climber		1	1	1	2.00	5
491	Holman Straight Plank Pike to Renegade Row		1	1	1	2.00	5
492	Holman Alternating Hip Drop to Push-Up		1	1	1	2.00	5
493	Holman Crab Kick		1	1	1	2.00	5
494	Holman Wounded Bear Crawl		1	1	1	2.00	5
495	Holman Alternating Crab Reach		1	1	1	2.00	5
496	Holman Hovering Panther Core Stabilizer		1	1	1	2.00	5
497	Holman Burpee to Forward Lunge		1	1	1	2.00	5
498	Holman Seated Knee Pull-In Series		1	1	1	2.00	5
499	Holman Elbow Plank Pike		1	1	1	2.00	5
500	Holman Elbow Plank Jack to Straight Plank Split Jack		1	1	1	2.00	5
501	Holman Boat Pull-Over		1	1	1	2.00	5
502	Holman Squat Pulse to Plyometric Jump		1	1	1	2.00	5
503	Holman Hands Down Heel Click		1	1	1	2.00	5
504	Holman Straight Plank to Kick-Up		1	1	1	2.00	5
505	Holman Hands-Elevated Split Jack		1	1	1	2.00	5
506	Holman Feet-Elevated Plank Reach		1	1	1	2.00	5
507	Holman Hand-Elevated Side Plank Semicircle		1	1	1	2.00	5
508	Holman Hands-Elevated Straight Plank Pike		1	1	1	2.00	5
509	Holman Alternating Rolling Elbow Plank		1	1	1	2.00	5
510	Holman Elbow Plank Jack		1	1	1	2.00	5
511	Holman Squat Thrust to Alternating Knee-In		1	1	1	2.00	5
512	Holman Supine Double Pike		1	1	1	2.00	5
513	Holman Elbow Plank Alternating Pike		1	1	1	2.00	5
514	Holman Seated Killer Abs		1	1	1	2.00	5
515	Holman Side Plank Hip Drop		1	1	1	2.00	5
516	Holman Wide Hill Climber		1	1	1	2.00	5
517	Holman Straight-Legged Bicycle		1	1	1	2.00	5
518	Holman Stair Toe Tap		1	1	1	2.00	5
519	Holman Elbow Plank Ninja		1	1	1	2.00	5
520	Holman Traveling Stair Climb Push-Up		1	1	1	2.00	5
521	Holman Hands-Elevated Burpee		1	1	1	2.00	5
522	Holman Straight Plank Donkey Kick		1	1	1	2.00	5
523	Holman Feet-Elevated Straight Plank Pike Pull		1	1	1	2.00	5
524	Holman Towel Burpee		1	1	1	2.00	5
525	Holman Elbow Plank to Alternating Side Plank Crunch		1	1	1	2.00	5
526	Holman Straight-Legged Hip Raise		1	1	1	2.00	5
527	Holman Feet-Elevated Hill Climber		1	1	1	2.00	5
528	Holman Ninja Knee Hill Climber		1	1	1	2.00	5
529	Holman Feet-Elevated Shoulder Tap		1	1	1	2.00	5
530	Holman Feet-Elevated Hip Raise		1	1	1	2.00	5
531	Holman Left Hand Right Foot Crab Reach		1	1	1	2.00	5
532	Holman Alternating Crab Flip to Froggy Push-Up to Kicks		1	1	1	2.00	5
533	Holman Right Hand Left Foot Sleeping Crab		1	1	1	2.00	5
534	Holman Left Hand Right Foot Sleeping Crab		1	1	1	2.00	5
535	Holman Straight Plank with Alternating Leg Kick-Under		1	1	1	2.00	5
536	Holman Right Hip Drop Push-Up		1	1	1	2.00	5
537	Holman Right Side Diagonal Burpee		1	1	1	2.00	5
538	Holman Left Hip Drop Push-Up		1	1	1	2.00	5
539	Holman Right Leg 7-Up Crunch		1	1	1	2.00	5
540	Holman Left Leg 7-Up Crunch		1	1	1	2.00	5
541	Holman Straight Plank Jack		1	1	1	2.00	5
542	Holman Feet-Elevated Couch Hill Climber		1	1	1	2.00	5
543	Holman Feet-Elevated Right Side Plank		1	1	1	2.00	5
544	Holman Alternating Up-Down Plank to Push-Up		1	1	1	2.00	5
545	Holman Straight Plank Pike		1	1	1	2.00	5
546	Holman Ninja Knee Straight Plank		1	1	1	2.00	5
547	Holman Reverse Crunch to Hip Raise		1	1	1	2.00	5
548	Holman Straight Plank Quick Reach		1	1	1	2.00	5
549	Holman Alternating Diagonal Straight Plank		1	1	1	2.00	5
550	Holman Feet-Elevated Left Side Plank		1	1	1	2.00	5
551	Holman Right Hand Left Foot Crab Reach		1	1	1	2.00	5
552	Holman Low-Impact Crab Kick		1	1	1	2.00	5
553	Holman Alternating Crab Flip to Froggy Push-Up		1	1	1	2.00	5
554	Holman High-Impact Crab Kick		1	1	1	2.00	5
555	Holman Single-Leg Right Pike		1	1	1	2.00	5
556	Holman Single-Leg Left Pike		1	1	1	2.00	5
557	Holman Shoulder Tap to Hand Tap		1	1	1	2.00	5
558	Holman Towel Reverse Plank Jack		1	1	1	2.00	5
559	Holman Side-to-Side Twist		1	1	1	2.00	5
560	Holman Crab Kick with Hop		1	1	1	2.00	5
561	Holman Crab Reach to Crab Kick		1	1	1	2.00	5
562	Holman Wide Squat Side-to-Side Obliques		1	1	1	2.00	5
563	Holman Side Plank Crunch		1	1	1	2.00	5
719	Dave Draper Forehead Curl		4	4	4	2.00	5
564	Total Fitness Ab Tuck	The hollow-body knee tuck is a bodyweight abdominal exercise performed on the floor. It is similar to both the hollow-body hold and the knee tuck or reverse crunch, combining elements of both. It primarily targets the muscles of the rectus abdominis, or â€œsix-packâ€ muscles. It can be performed for reps or time, either as part of an ab-focused workout or as a component of a circuit workout.	1	1	1	2.00	5
565	Active hang from bar	The active hang from bar is a static exercise that involves isometrically squeezing the shoulders into the sockets and activating the muscles of the upper back and core. It can be used to improve pull-up form or to do more pull-ups, but also has postural and shoulder health benefits.	1	1	1	2.00	5
566	Cat-cow	Cat-cow is a traditional yoga pose that is also popular in fitness and strength training. It targets spinal mobility and control of the vertebral column. It can be performed for time or reps as part of a dynamic warm-up or as a mobility or restorative exercise anytime. It can also work as part of a yoga or bodyweight sequence with other poses.	1	1	1	2.00	5
567	Crab walk	The crab walk is a full-body exercise that has been popular in schools and gym classes for decades. Its a full-body coordination challenge that also burns serious calories, making it an excellent inclusion in a full-body warm-up or bodyweight circuit workout.	1	1	1	2.00	5
568	Lunge with overhead reach	The lunge with overhead reach is a full-body bodyweight movement targeting the quads and shoulders. It has both strength and mobility benefits and can be performed one leg at a time or alternating for time or for reps.	1	1	1	2.00	5
569	Hang from bar	The hang from bar is a static exercise that involves hanging from a bar by two hands. It can either be an "active hang," where you pack the shoulders and activate the muscles of the upper back, or a "passive hang," where you let the shoulders unpack and let the muscles of the upper body stretch. A passive hang may not be appropriate for all people depending on their shoulder health, but many coaches believe hanging can be healthy for the shoulders when done properly.	1	1	1	2.00	5
570	Total Fitness Hollow Hold	The hollow-body hold is an isometric exercise that increases strength and stability in the core muscles. It is common in gymnastics training, CrossFit training, and as a core tension and bracing drill for lifters and athletes of all types. It is performed for time and can be performed as an activation drill prior to lifting, as part of a circuit, or as equipment-free core training anytime.	1	1	1	2.00	5
571	Total Fitness Side Plank	The side plank is a popular isometric abdominal exercise focusing on the oblique muscles, as well as the transversus abdominis or deep core muscles. It is sometimes paired with the curl up and bird dog as the â€œMcGill big threeâ€ for core strength and stability. It is performed for time and can work in a warm-up or in the core-focused portion of any workout.	1	1	1	2.00	5
572	Side plank pulse	The side plank pulse is a dynamic version of the side plank exercise focusing on the oblique muscles, as well as the transversus abdominis or deep core muscles. It can be performed for time or reps and can work in a warm-up or in the core-focused portion of any workout.	1	1	1	2.00	5
573	Total Fitness Spider Crawl (Unweighted)	The spider crawl is a bodyweight exercise that involves crawling on the floor with the knees outside of the elbows. It is different from a leopard crawl in that the hips are higher, and its different from a bear crawl because the knees are wider. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	1	1	1	2.00	5
574	Total Fitness V-Up	The V-up is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It is similar to a suitcase crunch, but the lower back lifts off the ground at the top of each rep. It can be performed for time or reps in the ab-focused portion of any workout.	1	1	1	2.00	5
575	MetaBurn Alternating Knee-to-Elbow Mountain Climber		1	1	1	2.00	5
576	Alternating sit-through with crunch-	The alternating sit-through with crunch is a full-body movement that starts in a bear crawl position and ends with a leg kicked out to the side. In between reps, you perform a crunch. It is commonly performed for reps or time in bodyweight circuits and animal-style flows, but can also work on its own or as part of a dynamic warm-up or mobility sequence.	1	1	1	2.00	5
577	MetaBurn Alternating Toe-Touch		1	1	1	2.00	5
578	MetaBurn Janda Sit-Up		1	1	1	2.00	5
579	MetaBurn Oblique Roll Crunch		1	1	1	2.00	5
580	MetaBurn Plank Jack		1	1	1	2.00	5
581	MetaBurn Plank To Alternating Side Plank		1	1	1	2.00	5
582	MetaBurn Plank Up-Down		1	1	1	2.00	5
583	MetaBurn Plank Wiper		1	1	1	2.00	5
584	MetaBurn Plank With Alternating Toe-Touch		1	1	1	2.00	5
585	MetaBurn Plyo Push-Up		1	1	1	2.00	5
586	MetaBurn Psycho Crunch		1	1	1	2.00	5
587	MetaBurn Scapular Retraction Plank		1	1	1	2.00	5
588	MetaBurn Scapular Retraction Plank Hold		1	1	1	2.00	5
589	MetaBurn Scorpion		1	1	1	2.00	5
590	MetaBurn Side Crawler		1	1	1	2.00	5
591	MetaBurn Side Plank Oblique Crunch		1	1	1	2.00	5
592	MetaBurn Sit-Through		1	1	1	2.00	5
593	MetaBurn Sit-Up To V-Up		1	1	1	2.00	5
594	MetaBurn Sit-Up With Rotation		1	1	1	2.00	5
595	MetaBurn Split-Leg Crunch		1	1	1	2.00	5
596	MetaBurn Tabletop Hip Thrust		1	1	1	2.00	5
597	MetaBurn Tabletop With Russian Kick		1	1	1	2.00	5
598	MetaBurn Toe Driver Abs		1	1	1	2.00	5
599	MetaBurn-V-Up		1	1	1	2.00	5
600	X-body V-up	The X-body V-up is a bodyweight abdominal exercise performed on the floor. It is similar to the popular V-up exercise, but is performed with the arms and legs out wide in an X-shape. It primarily targets the muscles of the rectus abdominis, or â€œsix-packâ€ muscles. It can be performed for reps or time, either as part of an ab-focused workout or as a component of a circuit workout.	1	1	1	2.00	5
601	MetaBurn Swivel Crunch		1	1	1	2.00	5
602	Robertson Core-Engaged Dead Bug		1	1	1	2.00	5
603	FYR2 Double-Under		1	1	1	2.00	5
604	FYR2 Fire Feet with Burpee Tuck Jump Drill		1	1	1	2.00	5
605	FYR2 Flutter Kick		1	1	1	2.00	5
606	FYR2 Half-Moon		1	1	1	2.00	5
607	FYR2 Leopard Crawl		1	1	1	2.00	5
608	FYR2 Plank Alternating Front Step		1	1	1	2.00	5
609	FYR2 Shoulder Tap		1	1	1	2.00	5
610	Hand shift plank	The hand shift plank is a progression of the straight-arm plank exercise where you maintain a plank position as you shift your hands side to side. The additional movement forces the core muscles to work harder to stabilize.	1	1	1	2.00	5
611	Cross-body plank march	The cross-body plank march is an exercise targeting the entire core but especially the obliques. Itâ€™s more difficult than a standard plank, with the extra stabilization challenge of bringing one knee at a time off the ground toward the opposing elbow. This will increase the challenge to the core and shoulder muscles, but also present a coordination and balance challenge.	1	1	1	2.00	5
612	Bent-knee Copenhagen hip adduction	The bent-knee Copenhagen hip adduction is an advanced exercise that combines the isometric stabilization of the Copenhagen plank with dynamic adductions to challenge the core stabilizers and adductors. This exercise targets the same muscles as the side plank, including the obliques, shoulders, and lateral hips, but places extra emphasis on the adductors and is more difficult than side planks on the floor. Most lifters will need to progress to this version after mastering the basic side plank or Copenhagen plank first.	1	1	1	2.00	5
613	Copenhagen plank	The Copenhagen plank is an advanced version of the side plank performed with one foot on a bench and the other foot hovering under it. This exercise targets the same muscles as the side plank, including the obliques, shoulders, and lateral hips, but places extra emphasis on the adductors and is more difficult than side planks on the floor. Most lifters will need to progress to this version after mastering the basic side plank or feet-elevated side plank first.	1	1	1	2.00	5
614	ACFT Hanging leg tuck	The hanging leg tuck is an exercise targeting the entire body, including the arms, upper back, abs, and hip flexors. This specific exercise is part of the new Army Combat Fitness Test or ACFT. It is performe while hanging from a bar and combines elements of a pull-up with a leg raise. Experienced lifters make these look easy, but beginners may need time to build up to sets of 8-12 reps.	1	1	1	2.00	5
615	Alternating hanging knee raise	The alternating hanging knee raise is an exercise targeting the abs, but which also works the lats and hip flexors. Rather than performing both legs at a time, you lift one knee at a time and alternate with each rep as if marching in place. Knee raises are often performed for moderate to high reps, such as 8-12 reps or more, as part of ab-focused training.	1	1	1	2.00	5
616	Plank To Sphinx		1	1	1	2.00	5
617	Twisting Mountain Climbers		1	1	1	2.00	5
618	Jack Knives		1	1	1	2.00	5
619	Hanging Leg Raises		1	1	1	2.00	5
620	Dumbbell suitcase crunch	The dumbbell suitcase crunch is a weighted version of a popular abdominal training exercise. The simple addition of a weight makes the suitcase crunch far more difficult, helping build the "six pack" muscles and providing a different stimulus to the core during training.	1	1	1	2.00	5
621	Medicine ball rotational throw	The medicine ball rotational throw is an explosive exercise targeting the abdominals, including the obliques, as well as the hips and upper back. It involves standing sideways to the wall and twisting the torso to hurl a medicine ball into the wall, then catching the ball on the ricochet. It can be performed for lower reps with a focus on power, or for higher reps with a focus on fat loss and conditioning.	1	1	1	2.00	5
622	Hollow-hold ball toss	The hollow-hold ball toss is a more difficult version of the hollow-body hold exercise. It involves tossing a ball to a partner while maintaining an isometric hold in the hollow-body position. It can be done for reps or time in any ab-focused workout, or in an "I go, you go" format.	1	1	1	2.00	5
623	Partner front Russian twist and pass	The partner front Russian twist and pass is a weighted version of a popular abdominal training exercise that also utilizes a training partner to add another dynamic component. It targets the oblique muscles, as well as the deep muscles of the core and the rectus abdominis or "six pack" muscles. It can be done for reps or time in an ab-focused portion of any workout.	1	1	1	1.00	5
624	Sit-up with single-arm overhand throw	The sit-up with single-arm overhand throw is an exercise targeting the core muscles, but the inclusion of the throw also brings in other upper-body muscles. When you come to the top of the sit-up position, you throw a medicine ball using one arm to a partner who then throws it right back to you to be caught with both hands. It can be performed for time or reps as part of the ab-focused portion of any workout.	1	1	1	2.00	3
625	Medicine ball partner twist	The medicine ball partner twist is a plyometrics exercise targeting the core muscles, particularly the obliques. You and a partner stand back to back and rotate in unison to pass a medicine ball back and forth on alternating sides.	1	1	1	2.00	3
626	Partner side Russian twist and pass	The partner side Russian twist and pass is a weighted version of a popular abdominal training exercise that also utilizes a training partner to add another dynamic component. It primarily targets the oblique muscles, as well as the deep muscles of the core and the rectus abdominis or "six pack" muscles. It can be done for reps or time in an ab-focused portion of any workout.	1	1	1	1.00	5
627	Medicine ball half moon	The medicine ball half moon is a dynamic core exercise performed around and over a medicine ball or other short, stationary object. It is similar in some ways to a V-up or reverse crunch, and targets both the obliques and the rectus abdominis or "six-pack" muscles. It can be performed for reps or for time, usually in dedicated ab training or as part of a medicine ball and bodyweight circuit workout.	1	1	1	2.00	5
628	Exercise ball roll-out	The exercise ball roll-out is an exercise that strengthens the core, shoulders and upper- back muscles. It starts in a plank-style position, with the arms resting on a ball. Then, roll the ball out in front of you as far as you can while maintaining a strong, neutral spinal position. The lack of stability from the ball increases the degree of difficulty. This is a difficult movement, and beginners may need to use a limited range of motion.	1	1	1	2.00	5
629	Medicine ball pass	The medicine ball pass is a simple partner-based exercise that involves throwing a weighted ball back and forth. It can be part of a dynamic warm-up for lifting or athletics, but can also work as active rest or as a component of circuit training.	1	1	1	2.00	5
630	Partner medicine ball sit-up	The partner medicine ball sit-up is a more difficult version of the traditional abdominal exercise. Two partners pass a medicine ball back and forth at the top of each rep, so each one must alternate a weighted rep with an unweighted rep. This technique can be done for reps or time in any ab-focused workout, in an "I go, you go" format.	1	1	1	2.00	5
720	Reverse-grip EZ-bar curl	The reverse-grip EZ-bar curl is an exercise targeting the biceps and forearms. Because grip strength is a limitation with this move, it is often performed for moderate to high reps as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
631	Medicine ball Russian twist	The medicine ball Russian twist is a weighted version of a popular abdominal training exercise. It targets the oblique muscles, as well as the deep muscles of the core and the rectus abdominis or "six pack" muscles. It can be done for reps or time in the ab-focused portion of any workout.	1	1	1	2.00	5
632	30 Medicine Ball Slam	The medicine ball slam is an explosive exercise for developing power, strength, and speed. Muscles worked include the abdominals, legs, triceps, shoulders, and lats. The slams are usually done in rapid succession to complete one set. It can also be a component of a power or athleticism-focused circuit workout.	1	1	1	2.00	5
633	Medicine ball twist	The medicine ball twist is an exercise targeting the abdominal muscles, particularly the obliques. It is similar in many ways to a Russian twist exercise. The ball is held tight to the chest throughout the movement, and then the torso is rotated from side to side for the desired number of reps or a set amount of time.	1	1	1	2.00	5
634	FYR2 Medicine Ball Complex		1	1	1	2.00	5
635	FYR2 Medicine Ball Fire-Feet Drill		1	1	1	2.00	5
636	FYR2 Medicine Ball Knees-to-Chest		1	1	1	2.00	5
637	FYR2 Medicine Ball Mountain Climber		1	1	1	2.00	5
638	Decline oblique crunch	The decline oblique crunch is a popular bodyweight exercise targeting the obliques and the rectus abdominis or "six-pack" muscles. It is usually performed for high reps, such as 10-15 reps per set or more, as part of the ab-focused portion of a workout.	1	1	1	2.00	5
639	Decline sit-up	The decline sit-up is a bodyweight core exercise that works the rectus abdominis or "six pack" muscles. Sit-up variations are usually performed for moderate to high reps, such as 10-15 reps per set or more, as part of the core-focused portion of a workout.	1	1	1	2.00	5
640	Hanging Windshield Wiper	The hanging windshield wiper is an advanced abdominal training exercise that is also extremely challenging to other muscles of the upper body, including the lats (latissimus dorsi), biceps, and grip. It requiresâ€”and buildsâ€”great strength in the rectus abdominis or "six-pack" muscles, as well as the obliques and deep core muscles. If you cant perform it hanging from a bar, the lying windshield wiper on the floor provides some of the same benefits.	1	1	1	2.00	5
641	Exercise Ball Pull-In	The exercise ball knee roll-in is an abdominal exercise that involves supporting yourself with your hands in a plank or push-up position and drawing the knees in toward the chest. This is a fairly advanced abdominal move requiring core strength.	1	1	1	2.00	5
642	Exercise ball crunch	The exercise ball crunch is a popular gym exercise targeting the abdominals. Unlike crunches on the floor or a bench, by using a ball you can increase the range of motion and both stretch and contract the abs on every rep. The ball crunch can be performed for low reps with a slower tempo focusing on a hard contraction, or for higher reps.	1	1	1	2.00	5
643	Feet-elevated crunch	The feet-elevated crunch is a variation on the basic crunch, a very popular ab move. Resting the feet on a bench takes some of the hip flexor activation out of the movement, focusing the stress more on the abs. It may have a small range of motion, but this movement produces a major burn.	1	1	1	2.00	5
644	Weighted Ball Side Bend		1	1	1	1.00	5
645	Swiss Ball Ab Roll-Out	The exercise ball roll-out is an exercise that strengthens the core, shoulders and upper- back muscles. It starts in a plank-style position, with the arms resting on a ball. Then, you roll the ball out in front of you as far as you can while maintaining a strong, neutral spinal position. The lack of stability from the ball increases the degree of difficulty. This is a difficult movement, and beginners may need to use a limited range of motion.	1	1	1	2.00	5
646	Exercise Ball Cable Crunch - Gethin Variation	The exercise ball crunch is a popular gym exercise targeting the abdominals. Unlike crunches on the floor or a bench, by using a ball, you can increase the range of motion and both stretch and contract the abs on every rep. The ball crunch can be performed for low reps with a slower tempo, focusing on a hard contraction, or for higher reps.	1	1	1	2.00	5
647	Exercise ball squat and twist	The exercise ball squat and twist is a combination exercise targeting the quads, but also the obliques because of the twisting motion with each repetition. The exercise ball is held close to the chest throughout. Because it is a lightweight movement, it is usually performed for high reps or for time, and can be a great part of a bodyweight and exercise ball circuit.	1	1	1	2.00	5
674	Fire Hydrant		2	2	2	1.00	5
648	Swiss Ball V-Up With Foot Pass	The exercise ball V-up is a popular movement to target the abdominal muscles, particularly the rectus abdominis or "six-pack" muscles. It involves passing an exercise ball or yoga ball back and forth between the hands and feet while performing V-ups. It can be performed for reps or time as part of any ab-focused workout or bodyweight circuit.	1	1	1	2.00	5
649	Exercise ball pike	The exercise ball pike is a challenging move that targets the core. It involves thrusting the hips into full flexion over a ball, then extending out to a foot-elevated plank with the feet on the ball. Its a challenging move from a strength perspective, but also for balance. It can be the centerpiece of an ab workout or go along with other body weight or ball movements in an ab circuit.	1	1	1	2.00	5
650	Exercise ball bird dog	The exercise ball bird dog is a dynamic movement focusing on the glutes and the postural muscles of the upper back. When performing it, use an exercise ball that is tall enough to support your chest and core, but short enough to allow your hands and knees to reach the ground. It is slightly easier than a bodyweight bird dog and can work as a regression for that movement. It can be done for time or reps as part of a warm-up, paired with movements in a workout, or as a mobility or recovery exercise.	1	1	1	2.00	5
651	Exercise ball superman	The exercise ball superman is a slightly more advanced variation of the bodyweight superman exercise. It targets many muscles along the posterior or backside of the body, including the rear deltoids, trapezius, spinal erectors, glutes, and hamstrings. It can be done for time or reps as part of a warm-up, paired with movements in a workout, or as a mobility or recovery exercise.	1	1	1	2.00	5
652	BOSU cross-body crunch	The BOSU cross-body crunch is a dynamic abdominal exercise performed on a BOSU ball or other stability training device. It targets several of the muscles in the core, including the obliques and the rectus abdominis or "six-pack" muscles. It is usually performed in alternating reps, either for time or a number of reps, as part of an ab-focused workout or a circuit involving body weight or the BOSU ball.	1	1	1	2.00	5
653	Exercise Ball Knee Tuck - Gethin Varation	The exercise ball knee roll-in is an abdominal exercise that involves supporting yourself with your hands in a plank or push-up position and drawing the knees in toward the chest. This is a fairly advanced abdominal move requiring core strength.	1	1	1	2.00	5
654	Alternating Exercise Ball Knee Tucks - Gethin Variation	The exercise ball knee roll-in is an abdominal exercise that involves supporting yourself with your hands in a plank or push-up position and drawing the knees in toward the chest. This is a fairly advanced abdominal move requiring core strength.	1	1	1	2.00	5
655	AM Ball Crunch	The exercise ball crunch is a popular gym exercise targeting the abdominals. Unlike crunches on the floor or a bench, by using a ball, you can increase the range of motion and both stretch and contract the abs on every rep. The ball crunch can be performed for low reps with a slower tempo, focusing on a hard contraction, or for higher reps.	1	1	1	2.00	5
656	30 Bosu Cable Reverse Crunch		1	1	1	2.00	5
657	BOSU knee tuck	The BOSU knee tuck is a dynamic abdominal movement performed on a BOSU ball or other stability training device. It primarily targets the rectus abdominis or "six-pack" muscles of the core. It can be performed for time or reps as part of an ab-focused workout or a circuit involving body weight or the BOSU ball.	1	1	1	2.00	5
658	30 Side Plank On Ball	The feet-elevated side plank on ball is a more advanced version of a traditional bodyweight side plank. The feet are balanced on an exercise ball, providing a balance challenge but also increasing the load placed upon the obliques and shoulder muscles. It is usually performed for timed holds, either one side at a time or alternating sides. If a ball is unavailable, some of the benefits of the movement can be obtained by performing side planks with the feet elevated on a couch, chair, bench, or other stable object.	1	1	1	2.00	5
659	Hanging exercise ball leg raise	The hanging exercise ball leg raise is an exercise targeting the abs and hip flexors. Instead of resting the forearms on the pads of an apparatus, its performed hanging from a bar with an exercise ball held between the legs.	1	1	1	2.00	5
660	Taylor Exercise Ball Stir-The-Pot		1	1	1	2.00	5
661	FYR2 Air Ball		1	1	1	2.00	5
662	Feet-elevated plank on ball	The feet-elevated plank is a variation on the straight-arm plank, a bodyweight standard. The feet are elevated on a ball to align the body parallel to the floor and provide a greater stabilization challenge. This makes it more difficult than straight-arm planks on the floor, but also puts more emphasis on the shoulder muscles. It is often used as a shoulder and core warm-up, or as a burnout movement for a chest or shoulder workout.	1	1	1	2.00	5
663	Band Hip Adductions		3	3	3	1.00	5
664	Lateral Band Walk		2	2	2	2.00	5
665	FYR2 Standing Banded Leg Abduction		2	2	2	2.00	5
666	Iliotibial band SMR	Iliotibial band self-myofascial release (SMR) is a self-administered soft-tissue treatment for the lower body, usually using a foam roller or other "trigger point" massage tool. By applying pressure strategically to the IT band along the side of the upper leg, some people find they can cause this often painful and tight area to relax or "release." IT band SMR is often accompanied by SMR on the glute or quad muscles, or by stretches that target the glutes or quads.	2	2	2	2.00	6
667	Adductor SMR	Adductor self-myofascial release (SMR) is a self-administered soft-tissue treatment for the lower body, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the adductor muscles in the inner thigh region, some people find they can cause this often painful and tight muscle to relax or "release." Adductor SMR is often accompanied by SMR on the iliotibial (IT) band or glutes (TFL muscles), or by stretches that target the adductors.	3	3	3	1.00	6
668	Lying Bent Leg Groin		3	3	3	1.00	6
669	Lateral box jump	The lateral box jump is a plyometric exercise targeting lateral agility and lower-body strength. Its a great move for athletes in many sports, including basketball, skiing, and tennis.	3	3	3	2.00	3
670	Thigh adductor	The thigh adductor machine is a lower-body exercise that targets the muscles of the inner thighs. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of lower-body training.	3	3	3	2.00	5
671	Thigh abductor	The thigh abductor is a lower-body exercise that targets the muscles of the outer hips and glutes. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of lower-body training.	2	2	2	2.00	5
672	Standing Hip Circles		2	2	2	1.00	6
673	Groiners		3	3	3	1.00	6
676	Side Leg Raises		3	3	3	1.00	6
677	Lateral hop	The lateral hop is an explosive bodyweight exercise that consists of a two-legged hop to the side. It targets the lower body, including the quads, glutes, and hamstrings. Performed for reps, it also provides a serious cardiovascular challenge. It can be performed for time or reps and is especially effective in a fat-loss or athleticism-focused circuit or workout.	3	3	3	2.00	3
678	Monster Walk		2	2	2	2.00	5
679	Side Lying Groin Stretch		3	3	3	2.00	6
680	IT Band and Glute Stretch		2	2	2	2.00	6
681	Single-leg lying cross-over stretch	The single-leg lying cross-over stretch is a simple bodyweight stretch targeting the lower back, hips, and glutes. It involves rotating a single leg over the body while lying flat on the back. It is commonly included in dynamic warm-ups, but can also be performed as full-body mobility work anytime.	2	2	2	1.00	6
682	Carioca quick step	The carioca quick step is a lateral bodyweight exercise targeting the adductors but also promoting agility and overall conditioning. Itâ€™s a favorite of football players, particularly defensive backs, because it mimics the way they have to track wide receivers downfield. It can also help mobilize the hips for athletes and lifters of all ability levels.	3	3	3	2.00	3
683	Standing hip circle	The standing hip circle is a bodyweight exercise targeting the hips and abductor muscles. It is a classic way to "limber up" after sitting for a long period or before a lower-body workout or sports. It requires no equipment and can be helpful for everyone from beginners to advanced fitness enthusiasts.	2	2	2	2.00	6
684	Lateral cone hop	The lateral cone hop is an agility drill that involves jumping over cones or other short hurdles side to side rather than front to back. It can be performed for reps or for time and can be beneficial for track athletes, basketball players, or any other athletes who need explosive lateral power.	3	3	3	2.00	3
685	Side-To-Side Adductor Stretch		3	3	3	2.00	5
686	Dynamic pigeon stretch	The dynamic pigeon stretch is a lower-body stretch targeting the glutes, hips, and piriformis. It is influenced by the pigeon pose from yoga, but involves moving in and out of the pose. It can be part of a dynamic warm-up or mobility work performed anytime.	2	2	2	2.00	5
721	EZ-Bar Spider Curl - Gethin Variation	The EZ-bar spider curl is an isolation exercise targeting the biceps and performed face-down on an incline bench. The EZ-bar makes for a more comfortable wrist position.	4	4	4	2.00	5
687	Cross-over jack	The cross-over jack is a variation on the jumping jack, a popular calisthenics exercise used to improve overall conditioning. The difference between the jumping jack and the cross-over jack is that with the latter, the feet dont just come together each rep, they cross over each other. Its a great way to add variety to your warm-up or conditioning work.	2	2	2	2.00	5
688	Traveling thigh killa	The traveling thigh killa is a challenging lower-body bodyweight exercise that builds muscular endurance with a series of hops forward and backward, as well as bodyweight squats. It can be performed for time or reps, usually in a circuit workout or as a lower-body finisher.	2	2	2	2.00	5
689	FYR Thigh Killa	The thigh killa is a challenging lower-body bodyweight exercise that builds muscular endurance with a series of hops and bodyweight squats. It can be performed for time or reps, usually in a circuit workout or as a lower-body finisher.	2	2	2	2.00	5
690	HM Straddle Stretch		2	2	2	2.00	6
691	HM Right Leg Swing		2	2	2	2.00	6
692	HM Right Side-Kick		2	2	2	2.00	6
693	HM Frog Stretch		2	2	2	2.00	5
694	HM Kick-Out		2	2	2	2.00	5
695	HM Left Leg Swing		3	3	3	2.00	5
696	UNS Foam Roll Adductor		3	3	3	2.00	5
697	MetaBurn Groiner		2	2	2	2.00	5
698	Side-lying leg adduction scissor	The side-lying leg adduction scissor is a dynamic core exercise that combines the isometric hold of a side-lying leg lift with leg adductions to further challenge the core and adductors. It targets multiple muscles of the core, primarily the rectus abdominis or "six-pack" muscles. It can be performed for time or reps in the ab-focused portion of any workout.	3	3	3	2.00	5
699	Groin and Back Stretch		3	3	3	1.00	6
700	Adductor/Groin		3	3	3	1.00	6
701	Incline dumbbell biceps curl	The incline dumbbell biceps curl is an exercise targeting the biceps and performed face up on an incline bench. This creates a vertical arm angle, which helps to isolate the biceps and limit involvement of the shoulder muscles. This curl variation is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or arm-focused training.	4	4	4	2.00	5
702	Banded biceps curl in squat position	The banded biceps curl in squat position is an exercise targeting the biceps, although it also works the core and lower body.	4	4	4	2.00	5
703	Banded Hammer Press - Gethin Variation	The machine chest press is an upper body exercise targeting the pectoral muscles.	4	4	4	2.00	5
704	Band standing concentration curl	The band standing concentration curl is a variation of a popular biceps-focused exercise utilizing a band instead of a dumbbell. It allows you to focus on one biceps at a time and really squeeze out intense peak contractions. Band concentration curls are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
705	Brachialis SMR	Brachialis self-myofascial release (SMR) is a self-administered soft-tissue treatment for the upper body, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the biceps or brachialis muscles of the upper arm, some people find they can cause this often painful and tight muscle to relax or "release." Brachialis SMR is often accompanied by SMR on the triceps muscles or pectorals, or by stretches that target the biceps or pecs.	4	4	4	1.00	6
706	Wide-grip barbell curl	The wide-grip barbell curl is a variation of the classic barbell curl with the grip wider than shoulder width. It is thought that this helps build the inner or "short" head of the biceps muscles. This movement is usually performed for moderate to high reps, such as 8-12 reps per set.	4	4	4	1.00	5
707	EZ-bar spider curl	The EZ-bar spider curl is an exercise targeting the biceps and performed face down on either an incline bench or on the flat side of a preacher bench. The EZ-bar makes for a more comfortable wrist position, while the angle helps to isolate the biceps and limit involvement of the shoulder muscles. This curl variation is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or arm-focused training.	4	4	4	2.00	5
736	Flexor Incline Dumbbell Curls		4	4	4	1.00	5
786	Holman Left Arm Heavy Biceps Curl		4	4	4	2.00	5
708	Barbell Curl	The barbell curl is an arm exercise that is also one of the most recognizable movements in all of bodybuilding and fitness. It helps build sleeve-popping biceps and allows heavier loading than many other curl variations. It is usually performed in moderate to high reps, such as 8-12 reps per set, as part of the arm-focused portion of any workout.	4	4	4	2.00	5
709	Close-grip EZ-bar curl	The close-grip EZ-bar curl is an exercise targeting the biceps, particularly the long head. The main difference between this exercise and standard EZ-bar curls is that the hands are positioned closer together on the bar. It is thought that this helps build the outer biceps head and the peak. This curl variation is usually performed for moderate to high reps, such as 8-12 reps per set.	4	4	4	1.00	5
710	Preacher Curl	The EZ-bar preacher curl is a classic exercise for building bigger biceps. This move is all about isolation. With the back of the upper arms against the pad, itâ€™s next to impossible to cheat. Go light, get a great pump, and build that peak!	4	4	4	2.00	5
711	Barbell Curls Lying Against An Incline		4	4	4	1.00	5
712	Seated Close-Grip Concentration Barbell Curl		4	4	4	1.00	5
713	Close-grip barbell curl	The close-grip barbell curl is a curl variation where the hands are closer than shoulder width. It is thought that this helps build the outer biceps head and the peak. This curl variation is usually performed for moderate to high reps, such as 8-12 reps per set.	4	4	4	1.00	5
714	Drag curl	The drag curl is a biceps exercise that attempts to remove the influence of the front deltoids on the classic curl. With the elbows kept back, the barbell "drags" up the torso. It is usually performed for moderate to high reps, such as 8-15 reps per set, as part of an upper-body or arms-focused workout.	4	4	4	1.00	5
715	Reverse-grip barbell curl	The reverse-grip barbell curl is a variation on the biceps curl where the palms face downward. The switch from an underhand to an overhand grip brings the forearm and brachialis muscles more into the exercise. If it is uncomfortable to the wrists, try performing it on the angles of an EZ-curl bar.	4	4	4	2.00	5
716	Lying High Bench Barbell Curl		4	4	4	1.00	5
717	Seated wide-grip curl to close-grip curl	The seated wide-grip curl to close-grip curl is a variation on the classic seated dumbbell curl. It is thought that wide-grip curls target the inner head of the biceps more, while close-grip curls target the outer head or peak. This variation allows you to get the benefits of both.	4	4	4	1.00	5
722	Barbell curl-	The barbell curl is an arm exercise that is also one of the most recognizable movements in all of bodybuilding and fitness. It helps build sleeve-popping biceps and allows heavier loading than many other curl variations. It is usually performed in moderate to high reps, such as 8-12 reps per set, as part of the arm-focused portion of any workout.	4	4	4	2.00	5
723	Paul Carter Barbell Curl	The barbell curl is an arm exercise that is also one of the most recognizable movements in all of bodybuilding and fitness. It helps build sleeve-popping biceps and allows heavier loading than many other curl variations. It is usually performed in moderate to high reps, such as 8-12 reps per set, as part of the arm-focused portion of any workout.	4	4	4	2.00	5
724	Standing band biceps curl	The standing band biceps curl is an arm-focused exercise using a band for resistance. This variation is usually performed for moderate to high reps as part of an arms-focused or upper-body workout.	4	4	4	2.00	5
725	Close-Grip EZ-Bar Curl - Gethin Variation	The close-grip EZ-bar curl is an exercise targeting the biceps, particularly the long head. The main difference between this exercise and standard barbell curls is that the hands are positioned closer together on the bar. It is thought that this helps build the outer biceps head and the peak. This curl variation is usually performed for moderate to high reps, like at least 8-12 reps per set.	4	4	4	2.00	5
726	Seated Barbell Curl		4	4	4	2.00	5
727	AM Standing Barbell Curl	The standing EZ-bar curl is an immenselyp popular exercise targeting the biceps. It is commonly performed for moderate to high reps as part of an upper body or arms-focused workout. Many gyms even have EZ-bars at fixed weights, allowing for easy weight changes.	4	4	4	2.00	5
728	EZ-bar preacher curl	The EZ-bar preacher curl is a classic exercise for building bigger biceps. This move is all about isolation. With the back of the upper arms against the pad, its next to impossible to use momentum which forces the muscles to work harder.	4	4	4	2.00	5
729	30 Arms Standing Barbell Curl		4	4	4	2.00	5
730	30 Arms Incline Biceps Curl		4	4	4	2.00	5
731	Bicep Curls "21s"		4	4	4	2.00	5
732	Incline Hammer Curls		4	4	4	1.00	5
733	Hammer Curls	This curl is performed simultaneously with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail.	4	4	4	2.00	5
734	Biceps curl to shoulder press	The biceps curl to shoulder press is a dumbbell complex that combines two exercises that build and strengthen the biceps and shoulders or deltoids. It is usually performed one rep of each movement at a time, although you could perform more reps of each, or increase the reps in successive rounds (e.g., 1 rep in round 1, 2 reps in round 2, etc.). No matter how you structure the sets and reps, it is a time-efficient way to hit two crucial upper-body muscles in any workout.	4	4	4	1.00	5
735	Concentration curl	The concentration curl is a classic exercise for building the biceps one arm at a time. It can be performed bent over or kneeling, but is more often performed seated on a bench. Its great for emphasizing the biceps peak and is often used to finish a biceps workout. Like most curl variations, these are usually performed for moderate to high reps, such as 8-12 reps per set or more.	4	4	4	2.00	5
737	Dumbbell Bicep Curl	The dumbbell biceps curl is a single-joint exercise for building bigger and stronger biceps. Popular among gym goers of all experience levels, this move can be done seated or standing. It is generally performed for moderate to high reps, such as 8-12 reps or higher, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
738	Cross-body hammer curl	The cross-body hammer curl is a dumbbell exercise that targets the biceps, brachialis, and forearm muscles. Rather than lifting the weights directly in front of the body, you lift them across the torso. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail. This helps isolate the brachialis muscles on each arm. It is generally performed for moderate to high reps, such as 8-12 reps or more, as part of the arm-focused portion of a workout.	4	4	4	1.00	5
739	Dumbbell Alternate Bicep Curl	The alternating biceps curl is a single-joint exercise for building bigger and stronger biceps one arm at a time. Popular among gym goers of all experience levels, this move can be done seated or standing. It is generally performed for moderate to high reps, such as 8-12 reps or higher, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
740	Single-arm dumbbell preacher curl	The single-arm dumbbell preacher curl is an exercise that focuses on building the biceps, particularly the biceps peak. Most people will go light on this movement, performing it for moderate to high reps as part of an upper-body or arms-focused workout.	4	4	4	2.00	5
741	Alternate Incline Dumbbell Curl	The alternating incline dumbbell biceps curl is an exercise targeting the biceps and performed face up on an incline bench. This creates a vertical arm angle which helps to isolate the biceps and limit involvement of the shoulder muscles. This curl variation is usually performed for moderate to high reps, such as 8-12 rep per arm or more, as part of upper-body or arm-focused training.	4	4	4	2.00	5
742	Standing concentration curl	The standing concentration curl is a variation on the more common seated concentration curl, which is a staple of bodybuilding arm routines. It can serve as a substitute for preacher curl variations if a preacher bench is unavailable and is also a classic way to focus in on the biceps peak. It is usually performed for moderate to high reps, such as 8-10 reps per set, with a focus on strict form and controlled tempo.	4	4	4	1.00	5
743	Alternating incline dumbbell biceps curl	The alternating incline dumbbell biceps curl is an exercise targeting the biceps and performed face up on an incline bench. This creates a vertical arm angle which helps to isolate the biceps and limit involvement of the shoulder muscles. This curl variation is usually performed for moderate to high reps, such as 8-12 rep per arm or more, as part of upper-body or arm-focused training.	4	4	4	2.00	5
744	Alternate Hammer Curl	The alternating hammer curl is performed with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail.	4	4	4	2.00	5
745	Seated dumbbell biceps curl	The seated dumbbell biceps curl is a popular exercise for building bigger biceps. While curls can effectively be performed standing as well, performing them seated can enforce strict form and perhaps boost the mind-muscle connection. Like most curl variations, these are usually performed for moderate to high reps, such as 8-12 reps per set or more.	4	4	4	2.00	5
746	Preacher Hammer Dumbbell Curl		4	4	4	1.00	5
747	Dumbbell preacher curl	The dumbbell preacher curl is an exercise that focuses on building the biceps, particularly the biceps peak. All you need is a pair of dumbbells and a preacher bench. Its usually performed for moderate to high reps as part of an upper-body or arms-focused workout.	4	4	4	2.00	5
748	Lying Supine Dumbbell Curl		4	4	4	1.00	5
749	Standing Dumbbell Reverse Curl	With the reverse-grip dumbbell curl, the palms face down, not up. This unorthodox wrist position simultaneously targets the biceps while also building forearm and grip strength. The move can performed standing or seated.	4	4	4	1.00	5
750	Palms-out incline biceps curl	The palms-out incline biceps curl is an exercise targeting the biceps. It is largely similar to the incline dumbbell curl, but the palms-out position targets the long head of the biceps, which is responsible for the biceps "peak." This curl variation is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or arm-focused training.	4	4	4	1.00	5
751	Straight-arm plank with biceps curl	The straight-arm plank with biceps curl is a hybrid movement that trains the abdominal and biceps muscles simultaneously. It can address multiple muscle groups in a time-efficient muscle-building or circuit-style workout, while also providing an additional cardiovascular challenge.	4	4	4	1.00	5
752	Face-down incline dumbbell biceps curl	The face-down incline dumbbell biceps curl is an exercise targeting the biceps and performed face down on an incline bench. This creates a vertical arm angle, which helps to isolate the biceps and limit involvement of the shoulder muscles. This curl variation is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or arm-focused training.	4	4	4	1.00	5
753	Seated Dumbbell Inner Biceps Curl		4	4	4	1.00	5
754	Standing Inner-Biceps Curl		4	4	4	1.00	5
755	Seated hammer curl	The seated hammer curl is a popular exercise for building bigger biceps and forearms. The movement resembles hammering a nailâ€”hence the name. While curls can effectively be performed standing as well, performing them seated can enforce strict form and perhaps boost the mind-muscle connection. Like most curl variations, these are usually performed for moderate to high reps, such as 8-12 reps per set or more.	4	4	4	2.00	5
756	Paul Carter Incline Dumbbell Biceps Curl	The incline dumbbell biceps curl is an isolation exercise targeting the biceps. This variation targets the long head of the biceps more than a traditional curl and there is more overall tension to this muscle.	4	4	4	2.00	5
757	Paul Carter Concentration Curl	The concentration curl is a classic exercise for building the biceps one arm at a time. It can be performed bent over or kneeling, but is more often performed seated on a bench. Its great for emphasizing the biceps peak and is often used to finish a biceps workout. Like most curl variations, these are usually performed for moderate to high reps, such as 8-12 reps per set or more.	4	4	4	2.00	5
758	FYR Dumbbell Curl	The dumbbell biceps curl is a single-joint exercise for building bigger and stronger biceps. Popular among gym goers of all experience levels, this move can be done seated or standing. It is generally performed for moderate to high reps, such as 8-12 reps or higher, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
784	Holman Biceps Curl to Chest Punch		4	4	4	2.00	5
785	Holman Right Arm Heavy Biceps Curl		4	4	4	2.00	5
759	Dumbbell biceps curl to upright row	The dumbbell biceps curl to upright row is a dumbbell complex that combines two exercises that build and strengthen the biceps, traps, and the middle head of the deltoids. It is usually performed one rep of each movement at a time, although you could perform more reps of each, or increase the reps in successive rounds (e.g., 1 rep in round 1, 2 reps in round 2, etc.). No matter how you structure the sets and reps, it is a time-efficient way to hit multiple upper-body muscles in any workout.	4	4	4	2.00	5
760	FYR Dumbbell Hammer Curl	This curl is performed simultaneously with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail.	4	4	4	2.00	5
761	Dumbbell overhead hold with single-arm curl	The dumbbell overhead hold with single-arm curl combines an isometric overhead hold with a curl for the other arm. The two movements collectively target the muscles of the shoulders and arms, while providing a surprising core challenge. Expect to be challenged, even with light weight.	4	4	4	2.00	5
762	FYR Kneeling Biceps	The kneeling concentration curl allows you to target the biceps without having the ability to use momentum from the rest of your body to move the weight.	4	4	4	2.00	5
763	Lunge hold dumbbell curl	The lunge hold dumbbell curl is a challenging complex that combines an isometric hold at the bottom of a lunge with a dumbbell biceps curl. The two exercises combine to target the legs, core, and biceps. The curl will determine the amount of weight you can use, but even a light weight will make the lunge hold seriously challenging.	4	4	4	2.00	5
764	FYR Dumbbell Biceps Curl	The dumbbell biceps curl is a single-joint exercise for building bigger and stronger biceps. Popular among gym goers of all experience levels, this move can be done seated or standing. It is generally performed for moderate to high reps, such as 8-12 reps or higher, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
765	Alternating dumbbell snatch	The alternating dumbbell snatch is an explosive exercise that builds full-body power and targets the muscles of the hips, back, and shoulders. Performing it by alternating arms gives each arm the chance to recover, allowing you to do a greater amount of quality work. It can be performed for low reps with a focus on power and speed, or for higher reps to build muscle or as part of a metabolic conditioning circuit.	4	4	4	2.00	5
766	TBS Incline Dumbbell Curl	The incline dumbbell biceps curl is an isolation exercise targeting the biceps. This variation targets the long head of the biceps more than a traditional curl and there is more overall tension to this muscle.	4	4	4	2.00	5
767	TBS Hammer Curl	The alternating hammer curl is performed with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail.	4	4	4	2.00	5
768	Reverse-grip dumbbell curl	With the reverse-grip dumbbell curl, the palms face down, not up. This unorthodox wrist position simultaneously targets the biceps while also building forearm and grip strength. The move can be performed standing or seated. Because grip is a limiting factor, it is usually performed for moderate to high reps, such as 8-10 reps per set.	4	4	4	2.00	5
769	Incline Dumbbell Curl - Gethin Variation	The incline dumbbell biceps curl is an isolation exercise targeting the biceps. This variation targets the long head of the biceps more than a traditional curl and there is more overall tension to this muscle.	4	4	4	2.00	5
770	Hammer curl	The hammer curl is a dumbbell movement that focuses on the biceps, brachialis, and forearm muscles. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail. It is generally performed for moderate to high reps, such as 8-12 reps or more, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
771	Seated Dumbbell Curl - Gethin Variation	The seated dumbbell biceps curl is a standard exercise for building bigger biceps. While dumbbell biceps curls can be performed standing, this version involves sitting on a bench.	4	4	4	2.00	5
772	Dumbbell Hammer Curl - Gethin Variation	This curl is performed simultaneously with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail.	4	4	4	2.00	5
773	Single-arm seated dumbbell curl	The single-arm seated dumbbell curl is a popular exercise for building bigger biceps. Performing it one arm at a time may allow you to use slightly heavier weight, while focusing on really feeling the mind-muscle connection in the working arm. Like most curl variations, these are usually performed for moderate to high reps, such as 8-12 reps per set or more.	4	4	4	2.00	5
774	Lying Cable Curl - Gethin Variation	The lying cable biceps curl is an isolation exercise that eliminates the possibility of using momentum from the lower body to raise the weight.	4	4	4	2.00	5
775	Dumbbell biceps curl	The dumbbell biceps curl is a single-joint exercise for building bigger and stronger biceps. Popular among gym goers of all experience levels, this move can be done seated or standing. It is generally performed for moderate to high reps, such as 8-12 reps or higher, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
776	Seated Biceps Hammer Curl		4	4	4	2.00	5
777	HM Alternating Reverse Lunge With Biceps Curl		4	4	4	2.00	5
778	AM Hammer Curls	This curl is performed simultaneously with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail.	4	4	4	2.00	5
779	AM Seated Hammer Curls	The seated hammer curl is a popular exercise for building bigger biceps. The movement resembles hammering a nailâ€”hence the name. While hammer can be performed standing, this version involves sitting on a bench.	4	4	4	2.00	5
780	Seated alternating biceps curl	The seated alternating biceps curl is an exercise that builds bigger and stronger biceps. The alternating technique allows one arm to rest briefly while the other arm lifts. It is usually performed for moderate to high reps, such as 8-12 reps or more, as part of the upper-body or arm-focused portion of a workout.	4	4	4	2.00	5
781	Alternating hammer curl	The alternating hammer curl is performed with dumbbells but without wrist supination. Throughout each rep, the wrists remain neutral, like a carpenter hammering a nail. It is generally performed for moderate to high reps, such as 8-12 reps or more, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
782	Alternating biceps curl	The alternating biceps curl is a single-joint exercise for building bigger and stronger biceps one arm at a time. Popular among gym goers of all experience levels, this move can be done seated or standing. It is generally performed for moderate to high reps, such as 8-12 reps or higher, as part of the arm-focused portion of a workout.	4	4	4	2.00	5
783	Holman Slow Biceps Curl		4	4	4	2.00	5
787	Holman Alternating Front Lunge Biceps Curl		4	4	4	2.00	5
788	Holman Weighted Double-Time Biceps Curl		4	4	4	2.00	5
789	Holman Heavy Right Arm Biceps Curl		4	4	4	2.00	5
790	Holman Heavy Left Arm Biceps Curl		4	4	4	2.00	5
791	MetaBurn Dumbbell Drag Curl		4	4	4	2.00	5
792	MetaBurn Hammer Curl to Overhead Press		4	4	4	2.00	5
793	MetaBurn Biceps Curl To Lateral Raise		4	4	4	2.00	5
794	FYR2 Alternating Dumbbell Curl		4	4	4	2.00	5
795	FYR2 Pulse Biceps Curl		4	4	4	2.00	5
796	FYR2 Seesaw Dumbbell Biceps Curl		4	4	4	2.00	5
797	FYR2 Single-Dumbbell Biceps Curl		4	4	4	2.00	5
798	FYR2 Dumbbell Curl-Row Complex		4	4	4	2.00	5
799	30 Arms Standing Dumbbell Hammer Curl 21s		4	4	4	2.00	5
800	30 Arms Standing Biceps Curl		4	4	4	2.00	5
801	30 Arms Standing Alternating Hammer Curl		4	4	4	2.00	5
802	30 Arms Standing Alternating Biceps Curl		4	4	4	2.00	5
803	30 Arms Single-Arm Hammer Preacher Curl		4	4	4	2.00	5
804	30 Arms Single-Arm Dumbbell Preacher Curl		4	4	4	2.00	5
805	30 Arms Seated Dumbbell Concentration Curl		4	4	4	2.00	5
806	30 Arms Seated Biceps Curl		4	4	4	2.00	5
807	30 Arms Seated Alternating Biceps Curl		4	4	4	2.00	5
808	30 Arms Incline Hammer Curl		4	4	4	2.00	5
809	30 Arms Incline Dumbbell Triceps Extension		4	4	4	2.00	5
810	30 Arms Hammer Curl		4	4	4	2.00	5
811	Reverse Plate Curls		4	4	4	1.00	5
812	Standing Biceps Stretch		4	4	4	1.00	6
813	Suspended Curl		4	4	4	1.00	5
814	Plate hammer curl	The plate hammer curl is an exercise that targets the long head of the biceps as well as the brachialis and brachioradialis muscles. Typically hammer curls are done with dumbbells, but in this case, holding a weight plate places the hands in the same neutral position.	4	4	4	1.00	5
815	Barbell spider curl	The barbell spider curl is an exercise targeting the biceps and performed face down on either an incline bench or on the flat side of a preacher bench. The vertical bench angle helps to isolate the biceps and limit involvement of the shoulder muscles. This curl variation is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or arm-focused training.	4	4	4	2.00	5
816	Barbell forehead curl	The barbell forehead curl is a classic movement from the Golden Age of bodybuilding and is often associated with Dave "The Blond Bomber" Draper. The barbell is brought up to your forehead instead of to your chest, emphasizing the squeeze and peak contraction. It is usually performed for moderate to high reps, such as 8-12 reps per set.	4	4	4	2.00	5
817	Overhead cable curl	Also known as a crucifix curl, the overhead cable curl is a biceps-focused exercise performed between two cable stacks, using a pair of D-handles. The arms and elbows are held at shoulder height throughout the movement, and both hands curl in toward the ears. This position is designed to eliminate shoulder involvement and momentum, while targeting the biceps peak. This movement is generally done for moderate to high reps, such as 8-12 reps per set or more, as part of arm-focused training.	4	4	4	2.00	5
818	Standing One-Arm Cable Curl	The single-arm cable biceps curl is a single-joint isolation exercise for building the biceps. This move is intended to be strict and deliberate; this is not an exercise for using momentum or otherwise cheating.	4	4	4	1.00	5
819	Reverse Cable Curl		4	4	4	1.00	5
820	Standing Biceps Cable Curl	The cable straight-bar biceps curl takes a classic bodybuilding exercise, the standing barbell curl, and replaces the barbell with a handle attached to a cable. This is a common burnout move performed for moderate to high reps, such as 8-12 reps per set, as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
821	Cable rope hammer curl	The cable rope hammer curl is a popular arm-focused exercise performed with a rope handle attached by a cable to a weight stack. It uses a neutral (palms facing one another) grip, which targets the forearms and brachialis muscles in addition to the biceps. Because grip is a limitation, it is usually performed for moderate to high reps, such as 8-12 reps per set or more.	4	4	4	2.00	5
822	Lying cable biceps curl	The lying cable biceps curl is a cable exercise that targets the biceps. It is performed lying on the back, either on a bench or the ground, with the feet facing toward a cable stack. This movement is usually performed for moderate to high reps for a burn and pump as part of an arm-focused workout.	4	4	4	1.00	5
823	Cable rope preacher hammer curl	The cable rope preacher hammer curl is a single-joint arm exercise that builds strength and size in the biceps using a cable stack, a preacher bench, and a rope grip. The neutral or "hammer" grip amplifies activation of both the grip and the brachialis muscles, building arm thickness. The angle of the bench also effectively removes the shoulders from the movement, largely isolating the biceps. It is generally performed for higher reps, at least 8-15 per set.	4	4	4	1.00	5
824	Lying Close-Grip Bar Curl On High Pulley	The lying high-cable biceps curl is an unusual move for building the bicepsâ€”but itâ€™s a highly effective one. Lying prone and curling down toward you provides a different stimulus than more standard approaches allow.	4	4	4	1.00	5
825	Cable EZ-Bar Preacher Curl - Gethin Variation	The cable preacher curl is a single-joint arm exercise that builds strength and size in the biceps using a cable stack and a preacher bench. It is popular in muscle-building arm workouts because the angle of the bench effectively removes the shoulders from the movement, largely isolating the biceps. It is generally performed for higher reps, at least 8-15 per set.	4	4	4	2.00	5
826	Squatting cable EZ-bar biceps curl	The squatting cable EZ-bar biceps curl is an exercise that builds and strengthens the biceps while the lower body is in a static squat position. It is usually performed for higher rep sets, such as 8-12 reps per set or more, in combination with other curls or arm training. It is most similar in arm positioning to a preacher curl, but has some unique benefits to the lower body, as well.	4	4	4	2.00	5
890	Calf Press On The Leg Press Machine	The leg press calf raise is an exercise that uses the leg press machine to work the calves. With the toes and balls of your feet on the platform but heels off, you push forward to work the calves.	5	5	5	2.00	5
827	Cable straight-bar biceps curl	The cable straight-bar biceps curl takes a classic bodybuilding exercise, the standing barbell curl, and replaces the barbell with a handle attached to a cable. This is a common burnout move performed for moderate to high reps, such as 8-12 reps per set, as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
828	Standing reverse-grip cable curl	The standing reverse-grip cable curl takes a classic bodybuilding exercise, the reverse barbell curl, and tweaks it by using a handle attached to a cable stack instead. It targets the forearm muscles and brachialis to a greater degree than underhand biceps curl variations. Because grip is a limitation, this move is commonly performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
829	Lying high-cable biceps curl	The lying high-cable biceps curl is a single-joint exercise targeting the biceps in a prone (face-up) position. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	4	4	4	2.00	5
830	High-Pulley Cable Curl - Gethin Variation	Also known as a crucifix curl, the overhead cable curl is a biceps-focused exercise performed between two cable stacks, using a pair of D-handles. The arms and elbows are held at shoulder height throughout the movement, and both hands curl in toward the ears. This position is designed to eliminate shoulder involvement and momentum, while targeting the biceps peak. This movement is generally done for moderate to high reps, such as 8-12 reps per set or more, as part of arm-focused training.	4	4	4	2.00	5
831	Standing High Cable Curl - Gethin Variation	The cable straight-bar biceps curl takes a classic bodybuilding exercise, the standing barbell curl, and replaces the barbell with a handle attached to a cable. This is a common burnout move performed for moderate to high reps, such as 8-12 reps per set, as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
832	High Cable Curls	The lying high-cable biceps curl is a single-joint exercise targeting the biceps in a prone (face-up) position. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	4	4	4	2.00	5
833	Seated cable biceps curl	The seated cable biceps curl is a single-joint arm exercise intended to isolate the biceps. The seated position helps eliminate the use of momentum. This movement is usually performed for moderate to high reps for a burn and pump as part of an arm-focused workout.	4	4	4	2.00	5
834	Lying Close-Grip Bar Curl On High Pulley - Gethin Variation	The lying high-cable biceps curl is an unusual move for building the bicepsâ€”but itâ€™s a highly effective one. Lying prone and curling down toward you provides a different stimulus than more standard approaches allow.	4	4	4	2.00	5
835	Standing Cable Curl - Gethin Variation	The cable straight-bar biceps curl takes a classic bodybuilding exercise, the standing barbell curl, and replaces the barbell with a handle attached to a cable. This is a common burnout move performed for moderate to high reps, such as 8-12 reps per set, as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
836	Double Arm Cable Biceps Curl		4	4	4	2.00	5
837	AM Cable Biceps Curl	The cable straight-bar biceps curl takes a classic bodybuilding exercise, the standing barbell curl, and replaces the barbell with a handle attached to a cable. This is a common burnout move performed for moderate to high reps, such as 8-12 reps per set, as part of an upper-body or arm-focused workout.	4	4	4	2.00	5
838	Single-arm cable biceps curl	The single-arm cable biceps curl is a single-joint isolation exercise for building the biceps. This move is intended to be strict and deliberate; this is not an exercise for using momentum or otherwise cheating. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an arm-focused workout.	4	4	4	2.00	5
839	UP Cable Curl With Straight Bar		4	4	4	2.00	5
840	30 Arms Cable Rope Hammer Curl		4	4	4	2.00	5
841	30 Arms Squatting Cable Straight-Bar Curl		4	4	4	2.00	5
842	30 Arms High Cable Curl		4	4	4	2.00	5
843	30 Arms Cable Straight-Bar Curl		4	4	4	2.00	5
844	30 Arms Cable Concentration Curl		4	4	4	2.00	5
845	30 Arms BFR High Cable Curl		4	4	4	2.00	5
846	BFR cable rope hammer curl	The blood flow restriction (BFR) cable rope hammer curl is an arm movement that builds biceps size and strength using a cable stack, rope grip, and blood flow restriction bands. It is popular in high-rep "pump"-style arm workouts. The bands should be placed as high as possible on your arms, at a tightness of no greater than 8 on a scale of 10. Most BFR workouts recommend using a far lighter weight than usual, perhaps as low as 25-50 percent of a normal working weight.	4	4	4	2.00	5
847	Machine Bicep Curl		4	4	4	1.00	5
848	Machine Preacher Curls	The machine preacher curl is an isolation exercise targeting the biceps.	4	4	4	1.00	5
849	Single-arm machine preacher curl	The single-arm machine preacher curl is a popular exercise to build size and strength in the biceps. It approximates the motion of a free-weight preacher curl, but uses a selectorized weight stack or plate-loaded machine. Many such machines offer different grips and grip widths. Machine biceps curls are often done for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or arm-focused portion of a workout.	4	4	4	2.00	5
850	Machine preacher curl	The machine preacher curl is a popular exercise to build size and strength in the biceps. It approximates the motion of a free-weight preacher curl, but uses a selectorized weight stack or plate-loaded machine. Many such machines offer different grips and grip widths. Machine biceps curls are often done for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or arm-focused portion of a workout.	4	4	4	2.00	5
851	Smith machine drag curl	The Smith machine drag curl is a biceps-focused exercise using the bar in a Smith machine. It is usually trained in moderate to high reps, at least 8-15 reps per set, and can work in the biceps-focused portion of any workout.	4	4	4	2.00	5
852	30 Arms BFR Machine Preacher Curl		4	4	4	2.00	5
853	Seated Biceps		4	4	4	1.00	6
854	TBS Chin-Up	The a chin-up is a variation of the pull-up exercise in which the reps are performed with the palms facing toward the body, in an underhand position, with a grip that is narrower than shoulder-width. Like other pull-up variations, it builds strength and muscle in the upper back, biceps, and core, but it utilizes the biceps slightly more than overhand pull-ups. It can be used as a more shoulder-friendly alternative to straight-bar pull-ups, or to help perform more reps than you can perform overhand.	4	4	4	2.00	5
855	Pull-up - Gethin Variation	The pull-up is a multi-joint bodyweight exercise that builds strength and muscle in the upper back, biceps, and core. It is often used as a measurement tool in military or tactical fitness tests, and is an excellent gauge of â€œrelative strengthâ€ which is strength in relation to bodyweight.	4	4	4	2.00	5
856	UN Pull-Up Supinated		4	4	4	2.00	5
857	UN Pull-Up Pronated		4	4	4	2.00	5
858	UN Pull-Up Neutral		4	4	4	2.00	5
859	EZ-Bar Curl	The standing EZ-bar curl is an immensely popular exercise targeting the biceps. It is commonly performed for moderate to high reps as part of an upper body or arms-focused workout. Many gyms even have EZ-bars at fixed weights, allowing for easy weight changes.	4	4	4	2.00	5
860	Reverse Barbell Preacher Curls	The reverse-grip barbell curl is a variation on the biceps curl where the palms face downward. The switch from an underhand to an overhand grip brings the forearm and brachialis muscles more into the exercise. If it is uncomfortable to the wrists, try performing it on the angles of an EZ-curl bar.	4	4	4	1.00	5
861	Close-Grip EZ-Bar Curl with Band		4	4	4	1.00	5
862	Standing EZ-Bar Curl - Gethin Variation	The standing EZ-bar curl is an immenselyp popular exercise targeting the biceps. It is commonly performed for moderate to high reps as part of an upper body or arms-focused workout. Many gyms even have EZ-bars at fixed weights, allowing for easy weight changes.	4	4	4	2.00	5
863	TBS EZ-Bar Curl	The standing EZ-bar curl is an immenselyp popular exercise targeting the biceps. It is commonly performed for moderate to high reps as part of an upper body or arms-focused workout. Many gyms even have EZ-bars at fixed weights, allowing for easy weight changes.	4	4	4	2.00	5
864	Standing EZ-bar curl	The standing EZ-bar curl is a popular exercise targeting the biceps. It is commonly performed for moderate to high reps as part of an upper-body or arm-focused workout. Many gyms even have EZ-bars at fixed weights, allowing for easy weight changes.	4	4	4	2.00	5
865	30 Arms Standing Overhand EZ-Bar Curl		4	4	4	2.00	5
866	30 Arms EZ-Bar Spider Curl		4	4	4	2.00	5
867	30 Arms EZ-Bar Preacher Curl		4	4	4	2.00	5
868	30 Arms Standing EZ-Bar Curl		4	4	4	2.00	5
869	Calf Raises - With Bands		5	5	5	1.00	5
870	Peroneals Stretch		5	5	5	2.00	6
871	Posterior Tibialis Stretch		5	5	5	2.00	6
872	Calf SMR	Calf self-myofascial release (SMR) is a self-administered soft-tissue treatment for the lower body, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the calf muscles of the lower leg, some people find they can cause this often painful and tight muscle to relax or "release." Calf SMR is often accompanied by SMR on the quadriceps muscles, or by stretches that target the calves.	5	5	5	1.00	6
873	Rocking Standing Calf Raise		5	5	5	1.00	5
874	Standing barbell calf raise	The standing barbell calf raise is a popular exercise to target the calf muscles of the lower leg, particularly the gastrocnemius muscle. It can be performed for time or for reps, either using a barbell or Smith machine bar if balance is a problem.	5	5	5	1.00	5
875	Barbell Seated Calf Raise		5	5	5	1.00	5
876	Smith machine standing calf raise	The Smith machine standing calf raise is a machine-based exercise targeting the muscles of the calves, particularly the gastrocnemius or upper calf muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the lower-body portion of a workout.	5	5	5	2.00	5
877	Calf Raise On A Dumbbell		5	5	5	1.00	5
878	Standing Dumbbell Calf Raise	The standing dumbbell calf raise is a popular exercise to target the calf muscles of the lower leg, and in particular the gastrocnemius muscles. It can be performed for time or for reps, either two dumbbells, or one if balance is a problem and you would like to use your free hand to hold a fixed object.	5	5	5	2.00	5
879	Single-leg standing dumbbell calf raise	The single-leg standing dumbbell calf raise is a popular exercise to target the calf muscles of the lower leg, particularly the gastrocnemius muscle. It can be performed for time or for reps, either with two dumbbells or with one if balance is a problem and you would like to use your free hand to hold a fixed object.	5	5	5	2.00	5
880	Dumbbell walking calf raise	The dumbbell walking calf raise is a dynamic exercise targeting the calf muscles of the lower leg, particularly the gastrocnemius muscle. It can be performed for distance or for reps.	5	5	5	2.00	5
881	Balance Board		5	5	5	1.00	5
882	Weighted donkey calf raise	The weighted donkey calk raise is a strength and muscle-building exercise focused on the muscles of the lower leg, most prominently the gastrocnemius muscle. While traditional donkey calf raises involved either a specific machine or carrying another person on ones back, this method uses a weight belt. It can be done in traditional muscle-building rep ranges, or for higher reps as part of lower-body training.	5	5	5	2.00	5
883	Anterior Tibialis-SMR		5	5	5	1.00	6
884	Foot-SMR		5	5	5	1.00	6
885	Agility Ladder		5	5	5	2.00	1
886	Single-leg machine seated calf raise	The single-leg machine seated calf raise is an exercise targeting the calf muscles of the lower leg, particularly the soleus muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set, but occasionally for higher reps of 20 per set or more.	5	5	5	2.00	5
887	Smith Machine Calf Raise	The Smith machine standing calf raise is a machine-based exercise targeting the muscles of the calves, particularly the gastrocnemius or upper calf muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the lower-body portion of a workout.	5	5	5	2.00	5
888	Standing Calf Raises	The standing calf raise is a popular movement to target the calf muscles of the lower leg, and in particular the gastrocnemius muscles. When unweighted, it is usually performed for high reps or for time.	5	5	5	1.00	5
889	Seated Calf Raise	The machine seated calf raise is an exercise targeting the calf muscles of the lower leg, particularly the soleus muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set, and occasionally for very high burnout-focused sets of 50-100 total reps.	5	5	5	2.00	5
1022	Holman Foot-Elevated Push-Up		6	6	6	2.00	5
1023	Holman Feet-Elevated Push-Up		6	6	6	2.00	5
891	Calf Press	The standing calf raise is a popular movement to target the calf muscles of the lower leg, and in particular the gastrocnemius muscles. When unweighted, it is usually performed for high reps or for time.	5	5	5	1.00	5
892	Smith Machine Reverse Calf Raises		5	5	5	1.00	5
893	Seated Single-Leg Calf Press - Gethin Variation	The single-leg machine seated calf raise is an exercise targeting the calf muscles of the lower leg, particularly the soleus muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set, but occasionally for higher reps of 20 per set or more.	5	5	5	2.00	5
894	Seated Calf Raise - Gethin Variation	The machine seated calf raise is an exercise targeting the calf muscles of the lower leg, particularly the soleus muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set, and occasionally for very high burnout-focused sets of 50-100 total reps.	5	5	5	2.00	5
895	Donkey Calf Raise - Gethin Variation	The donkey calk raise is a strength and muscle-building exercise focused on the muscles of the lower leg, most prominently the gastrocnemius muscle. While traditional donkey calf raises involved either a specific machine or carrying another person on ones back, this method uses a weight belt. It can be done in traditional muscle-building rep ranges, or for higher reps as part of lower-body training.	5	5	5	2.00	5
896	Standing Calf Raise Facing Hack Squat Machine - Gethin Variation	The reverse hack squat calf raise is a varation of the standing calf raise to target them in a different manner.	5	5	5	2.00	5
897	Calf Press On A Hack Squat Machine - Gethin Variation	The hack squat calf raise is a variation of the standing calf raise to target them in a different manner than seated or fully standing.	5	5	5	2.00	5
898	Smith Machine Standing Calf Raises - Gethin Variation	The Smith machine standing calf raise is a machine-based exercise targeting the muscles of the calves, particularly the gastrocnemius or upper calf muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the lower-body portion of a workout.	5	5	5	2.00	5
899	Hack squat calf raise	The hack squat calf raise is a variation of the standing calf raise performed in a hack squat machine. This allows for heavy loading, but also shoulder comfort from the pads of the hack squat. Calf raise variations are often performed for relatively high reps, such as 10-20 reps per set or more.	5	5	5	2.00	5
900	Seated Calf Press - Gethin Variation	The machine seated calf raise is an exercise targeting the calf muscles of the lower leg, particularly the soleus muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set, and occasionally for very high burnout-focused sets of 50-100 total reps.	5	5	5	2.00	5
901	Leg press calf raise	The leg press calf raise is a variation of the standing calf raise performed in a leg press machine. This allows for heavy loading, but also shoulder comfort from the pads of the leg press. Calf raise variations are often performed for relatively high reps, such as 10-20 reps per set or more.	5	5	5	2.00	5
902	Machine seated calf raise	The machine seated calf raise is an exercise targeting the calf muscles of the lower leg, particularly the soleus muscle. It is usually performed for moderate to high reps, such as 8-12 reps per set, and occasionally for very high burnout-focused sets of 50-100 total reps.	5	5	5	2.00	5
903	30 Legs Seated Calf Raise		5	5	5	2.00	5
904	30 Legs Standing Calf Raise		5	5	5	2.00	5
905	Peroneals-SMR		5	5	5	2.00	6
906	Knee Circles		5	5	5	1.00	6
907	Standing Gastrocnemius Calf Stretch		5	5	5	2.00	6
908	Wall calf stretch	The wall calf stretch is a stretch targeting the calf muscles. This is a simple way to stretch these often-tight muscles without any equipment needed.	5	5	5	2.00	6
909	Seated Calf Stretch		5	5	5	2.00	6
910	Standing Calf Raise	The standing calf raise is a popular movement to target the calf muscles of the lower leg, and in particular the gastrocnemius muscles. When unweighted, it is usually performed for high reps or for time.	5	5	5	2.00	5
911	Standing calf raise-	The standing calf raise is a popular movement to target the calf muscles of the lower leg, particularly the gastrocnemius muscle. When unweighted, it is usually performed for high reps or for time.	5	5	5	2.00	5
912	HM Left Calf-Spike Sumo Pulse		5	5	5	2.00	5
913	Ankle Circles		5	5	5	1.00	6
914	Calf Stretch Elbows Against Wall		5	5	5	1.00	6
915	Standing Soleus And Achilles Stretch		5	5	5	1.00	6
916	Cross Over - With Bands		6	6	6	1.00	5
917	Bench Press - With Bands		6	6	6	1.00	5
918	Bench Press With Short Bands		6	6	6	1.00	4
919	Feet-Elevated TRX Push-Up		6	6	6	1.00	5
920	Band-suspended kettlebell bench press	The band-suspended kettlebell bench press is a bench press variation where kettlebells or weight plates are hung from the ends of a barbell by looped bands. The suspended weights can be in addition to normally loaded weight plates, or in the place of them. Because the instability of the weights makes the lift difficult, this bench press variety is a popular accessory movement for building the traditional bench press in powerlifting training.	6	6	6	2.00	5
921	HM Banded Cross-Over Pull		6	6	6	2.00	5
922	Rusin Band Pull-Apart		6	6	6	2.00	5
923	UNS Banded Push-Up		6	6	6	2.00	5
924	Taylor Band-Assisted One-Arm Push-Up		6	6	6	2.00	5
925	Incline band bench press	The incline band bench press is variation of the incline press, a popular upper-body exercise targeting the upper pectoral muscles. While it can be a strength-focused movement, it is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
926	Band push-up	The band push-up is a progression of the popular bodyweight version of the exercise commonly used in military and tactical physical fitness tests. Adding the dynamic resistance of the band matches the strength curve of the push-up and helps build upper-body muscle and strength, emphasizing the chest, triceps, and shoulders, but also working the upper back and core.	6	6	6	2.00	5
1024	Total Fitness Plyo Push-Up	The plyo push-up is a bodyweight exercise aimed at increasing upper-body power and strength. It targets the muscles of the chest, triceps, and shoulders, and can be trained in low reps for power and strength, or higher reps for conditioning.	6	6	6	2.00	5
927	Band chest fly	Similar to the cable chest fly, the band chest fly is a single-joint movement that works the pectoral muscles. The fly is common in upper-body and chest-focused muscle-building workouts, and the band variation works well as a pre-exhaust at the beginning of a workout or a finishing movement at the end. It is often used in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
928	Close-grip bench press	The close-grip bench press is a popular exercise targeting the triceps and chest. The main difference between this exercise and the standard bench press is that the hands and elbows are placed closer together, which places more of an emphasis on the triceps. The close-grip bench press is often used as an accessory movement for the traditional bench press, or as a triceps builder for arm training. Similar to the bench press, it can be trained in low reps for strength or higher reps for muscle or strength endurance.	6	6	6	2.00	5
929	Barbell Bench Press - Medium Grip	The bench press is a compound exercise that builds strength and muscle in the chest and triceps. When many people think of listing, the bench press is often the first exercise that comes to mind	6	6	6	2.00	5
930	Decline barbell bench press	The decline barbell bench press is a popular upper-body exercise targeting the lower pectoral muscles. While it can be a strength-focused movement, it is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
931	Wide-grip bench press	The wide-grip bench press is a compound exercise targeting the chest and, to a lesser extent, the triceps. The main difference between this exercise and the standard bench press is that the hands are placed farther apart on the bar. Many lifters find they can handle more weight going wide than with narrower grips, although its also worth noting that plenty of banged-up lifters have said benching with a wide grip may also have contributed to their shoulder injuries and pain. The wide-grip bench is often used as a chest-building movement in chest or upper-body workouts, or as an accessory movement for the traditional bench press.	6	6	6	1.00	5
932	Wide-Grip Decline Barbell Bench Press		6	6	6	1.00	5
933	Barbell Incline Bench Press Medium-Grip	The incline bench press is an upper body compound movement that targets the upper chest.	6	6	6	2.00	5
934	Neck Press		6	6	6	1.00	5
935	Front Raise And Pullover		6	6	6	1.00	5
936	Board bench press	The board bench press is an upper-body exercise that is commonly performed as an assistance movement for the bench press. It targets the same muscles as the bench press, including the chest and shoulders, but really focuses on the triceps. Because you can load it more heavily than a full bench press, it allows you to overload the triceps and lock out of the bench press.	6	6	6	2.00	4
937	Barbell Bench Press-Wide Grip	The wide-grip bench pressis a compound exercise targeting the chest, primarily. The main difference between this exercise and the standard bench press is that the hands are placed wider apart on the bar.	6	6	6	1.00	5
938	Wide-Grip Decline Barbell Pullover		6	6	6	1.00	5
939	Barbell Guillotine Bench Press		6	6	6	1.00	5
940	Band-suspended kettlebell bench press	The band-suspended kettlebell bench press is a bench press variation where kettlebells or weight plates are hung from the ends of a barbell by looped bands. The suspended weights can be in addition to normally loaded weight plates, or in the place of them. Because the instability of the weights makes the lift difficult, this bench press variety is a popular accessory movement for building the traditional bench press in powerlifting training.	6	6	6	2.00	5
941	Paul Carter Incline Bench Press	The incline bench press is an upper body compound movement that targets the upper chest.	6	6	6	2.00	5
942	Incline bench press	The incline bench press is a popular barbell exercise targeting the chest muscles, particularly the upper pectoral muscles. While it can be a strength-focused movement, it is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
943	Bench press	The bench press is a popular barbell exercise that builds strength and muscle in the chest, triceps, and shoulders. It is a popular way to measure overall upper-body strength, and is contested in the sport of powerlifting. When many people think of lifting, the bench press is often the first exercise that comes to mind. It can be performed for low reps for strength, higher reps for muscle, or for higher reps to build or measure strength endurance, like in the 225-pound bench press rep test in the NFL combine.	6	6	6	2.00	5
944	TBS Close-Grip Bench Press	The close-grip bench pressis a compound exercise targeting the triceps and chest. The main difference between this exercise and the standard bench press is that the hands and elbows are placed closer together.	6	6	6	2.00	5
945	AM Flat Bench Barbell Press	The bench press is a compound exercise that builds strength and muscle in the chest and triceps. When many people think of listing, the bench press is often the first exercise that comes to mind	6	6	6	2.00	5
946	UP Bench Press	The bench press is a compound exercise that builds strength and muscle in the chest and triceps. When many people think of listing, the bench press is often the first exercise that comes to mind	6	6	6	2.00	5
947	UP Close-Grip Bench Press	The close-grip bench pressis a compound exercise targeting the triceps and chest. The main difference between this exercise and the standard bench press is that the hands and elbows are placed closer together.	6	6	6	2.00	5
948	King Maker Barbell Bench Press	The bench press is a compound exercise that builds strength and muscle in the chest and triceps. When many people think of listing, the bench press is often the first exercise that comes to mind	6	6	6	2.00	5
949	King Maker Incline Barbell Bench Press	The incline bench press is an upper body compound movement that targets the upper chest.	6	6	6	2.00	5
950	30 Chest Incline Barbell Bench Press		6	6	6	2.00	5
951	30 Chest Barbell Bench Press		6	6	6	2.00	5
952	30 Chest 30-Degree Incline Dumbbell Press		6	6	6	2.00	5
953	Spoto press	The Spoto press is a variation of the popular barbell exercise the bench press that builds strength and muscle in the chest, triceps, and shoulders. It differs from the bench press in that the lifter pauses for a few seconds at the bottom of the movement before pressing the bar back up. This pause removes all momentum and increases the time under tension for the chest and shoulder muscles to help develop upper-body musculature and strength.	6	6	6	2.00	5
1162	Behind Head Chest Stretch		6	6	6	1.00	6
954	Kettlebell plyo push-up	The kettlebell plyo push-up is an explosive upper-body movement that uses a kettlebell primarily as a platform for the hands. A short step, dumbbell, or other stationary object could also be used in place of the kettlebell. It can be performed for reps or time, either for low reps to build explosive power or for higher reps for conditioning.	6	6	6	2.00	5
955	Extended Range One-Arm Kettlebell Floor Press		6	6	6	1.00	5
956	Kettlebell alternating floor press	The kettlebell alternating floor press limits the range of motion you would achieve with a dumbbell or kettlebell bench press, but still targets the chest, triceps, and anterior delts. This allows you to build strength in the top portion of the lift, overload the triceps, and work on strengthening the shoulder stabilizers.	6	6	6	1.00	5
957	One-Arm Kettlebell Floor Press		6	6	6	1.00	5
958	Leg-Over Floor Press		6	6	6	1.00	5
959	Band-suspended kettlebell bench press	The band-suspended kettlebell bench press is a bench press variation where kettlebells or weight plates are hung from the ends of a barbell by looped bands. The suspended weights can be in addition to normally loaded weight plates, or in the place of them. Because the instability of the weights makes the lift difficult, this bench press variety is a popular accessory movement for building the traditional bench press in powerlifting training.	6	6	6	2.00	5
960	FYR2 Push-Up to Kettlebell Hike Combo		6	6	6	2.00	5
961	Pushups	The push-up is a popular bodyweight exercise that is commonly used in military and tactical physical fitness tests. Itâ€™s a classic movement to build upper-body muscle and strength, emphasizing the chest, triceps, and shoulders, but also working the upper back and core.	6	6	6	2.00	5
962	Incline Push-Up	The hands-elevated push-up is a variation on the push-up, a body-weight standard. The hands are elevated, so that your body is aligned at an angle to the floor rather than parallel.	6	6	6	2.00	5
963	Hands-elevated push-up	The hands-elevated push-up is a variation on the classic push-up where the hands are placed on a bench or other elevated surface. Having the hands higher than the feet makes it easier than push-ups on the floor, but also puts the emphasis more on the triceps. It can be used as a substitute for floor push-ups or as a mechanical dropset after maxing out on floor push-ups.	6	6	6	1.00	5
964	Decline Push-Up	The feet-elevated push-up is a variation on the push-up, a body-weight standard. The feet are elevated, so that your body is aligned at an angle to the floor rather than parallel.	6	6	6	2.00	5
965	Single-Arm Push-Up		6	6	6	1.00	5
966	Close push-up to wide push-up	The close push-up to wide push-up combines two variations of a push-up to emphasize the strengthening of different muscles. The close push-up emphasizes the triceps, while the wide push-up emphasizes the chest and shoulders.	6	6	6	2.00	5
967	Wide-grip hands-elevated push-up	The wide-grip hands-elevated push-up is a variation on the elevated push-up performed with the hands farther apart than with a standard push-up. Having the hands higher than the feet makes it easier than wide-grip push-ups on the floor, but the extra width also puts more emphasis on the chest muscles. It can be used as a substitute for wide-grip floor push-ups, or as a mechanical dropset after maxing out on floor push-ups.	6	6	6	1.00	5
968	Push-Ups With Feet On An Exercise Ball		6	6	6	2.00	5
969	Feet-elevated push-up	The feet-elevated push-up is a variation on the push-up, a bodyweight standard. The feet are elevated so that your body is aligned at an angle to the floor rather than parallel. This makes it more difficult than push-ups on the floor, but also puts more emphasis on the shoulder muscles. It is often used as a bodyweight substitute for incline presses, or as a burnout movement for a chest or shoulder workout.	6	6	6	2.00	5
970	Isometric Wipers	The typewriter push-up is an advanced push-up variation where the hands are extra wide and you lower toward each hand in alternating reps. It is more challenging to each working arm than traditional push-ups and also stretches and challenges the chest.	6	6	6	1.00	5
971	Clock push-up	The clock push-up is a series of regular push-ups performed one at a time, moving your hands one step to the side between each one until youve completed a full circle. It targets the same muscles as traditional push-ups, such as the chest, triceps, and shoulders, but adds an endurance and core challenge to traditional push-ups.	6	6	6	1.00	5
972	Incline Push-Up Depth Jump		6	6	6	2.00	3
973	Push-Up Wide	The wide push-up is a variation of the push-up with the hands wider than shoulder-width apart. It targets upper-body muscle groups including the chest, shoulders, and triceps, but has more of a chest emphasis than narrower-grip push-up variations. If wide push-ups lead to pain in the front of your shoulder, opt for a narrower version.	6	6	6	1.00	5
974	Sphinx push-up	The sphinx push-up is a difficult variation of the push-up that ends with the forearms on the ground in front of the body, rather than with the chest on the ground. It puts more stress on the triceps than traditional push-ups. It can be performed for time or reps in any bodyweight workout or during any arms-focused portion of a workout.	6	6	6	2.00	5
975	Close-Hands Push-Up	The close push-up is an upper-body exercise that targets the chest, triceps, and shoulders. The close hand position places more emphasis on the triceps.	6	6	6	1.00	5
976	Tiger-bend push-up	The tiger-bend push-up is an advanced push-up variation where you shift onto your forearms at the bottom position and then back onto your hands and up again. It targets the triceps far more than regular push-ups.	6	6	6	1.00	5
977	Plyo push-up	The plyo push-up is a bodyweight exercise aimed at increasing upper-body power and strength. It targets the muscles of the chest, triceps, and shoulders, and can be trained in low reps for power and strength, or higher reps for conditioning.	6	6	6	1.00	3
978	Close-grip hands-elevated push-up	The close-grip hands-elevated push-up is a variation on the classic push-up where the hands are placed on a bench or other elevated surface. Having the hands higher than the feet makes it easier than close-grip push-ups on the floor, but also puts the emphasis more on the triceps. It can be used as a substitute for floor push-ups or close-grip push-ups, or as a mechanical dropset after maxing out on floor push-ups.	6	6	6	2.00	5
979	Suspended push-up	The suspended push-up is a bodyweight pushing exercise performed on a suspension strap system or gymnastic rings. It targets the chest, shoulders, and triceps, but is also challenging to the core and upper back. It can work in traditional strength and muscle-building rep ranges or for higher reps.	6	6	6	2.00	5
1394	HM Alternating Step-Back		9	9	9	2.00	5
980	Push Up to Side Plank	The push-up to side plank is an upper-body and core-focused exercise combining two popular bodyweight movements. It targets the chest, triceps, and shoulders with the push-up, and the obliques and hip external rotator muscles with the side plank. It can be performed as part of a dynamic warm-up or any bodyweight strength-training workout.	6	6	6	2.00	5
981	Isometric Chest Squeezes		6	6	6	1.00	3
982	Side-to-side push-up	The side-to-side push-up is a variation of the push-up exercise where you side-step the opposite hand and foot and perform a push-up.	6	6	6	1.00	5
983	Typewriter push-up	The typewriter push-up is an advanced push-up variation where the hands are extra wide and you lower toward each hand in alternating reps. It is more challenging to each working arm than traditional push-ups and also stretches and challenges the chest.	6	6	6	1.00	5
984	Diamond push-up	The diamond push-up is an advanced variation of the push-up exercise performed with the hands in a diamond shape. It increases the challenge to the triceps, but also targets the chest and shoulders.	6	6	6	2.00	5
985	Judo push-up	The judo push-up is an advanced push-up variation that blends elements of the yoga poses downward- and upward-facing dog. This movement increases the demands on the shoulders, but also has mobility benefits. It can work in a dynamic warm-up or mobility-focused workout, but also in bodyweight strength training.	6	6	6	1.00	5
986	Superman Push-Up		6	6	6	1.00	3
987	Wide push-up	The wide push-up is a variation of the push-up with the hands wider than shoulder-width apart. It targets upper-body muscle groups including the chest, shoulders, and triceps, but has more of a chest emphasis than narrower-grip push-up variations. If wide push-ups lead to pain in the front of your shoulder, opt for a narrower version.	6	6	6	1.00	5
988	One-Arm Push-Up		6	6	6	1.00	5
989	Clapping Push-Up	Also known as a plyo push-up, the clapping push-up is a bodyweight exercise aimed at increasing upper-body power and strength. It targets the muscles of the chest, triceps, and shoulders, and can be trained in low reps for power and strength, or higher reps for conditioning.	6	6	6	1.00	3
990	Staggered push-up	The staggered push-up is a variation of the push-up exercise where your hand position is staggered, with one hand forward and one back. It targets the same muscles as a traditional push-up, including the chest, triceps, and shoulders, but is more difficult to the rear arm and core.	6	6	6	1.00	5
991	Reverse-grip hands-elevated push-up	The reverse-grip hands-elevated push-up is a bodyweight exercise performed on a Smith machine or other elevated surface. It targets the chest, triceps, and shoulders. It can work as a regression of floor reverse-grip push-ups, or in a progressive mechanical dropset moving the bar up once you reach failure at a lower height.	6	6	6	1.00	5
992	Triple Clap Push-Up		6	6	6	1.00	3
993	Side kick-through push-up	The side kick-through push-up is a full-body movement that begins in a bear crawl position and ends with a leg kicked out to the side, with a push-up performed between kick-throughs. It is commonly performed for reps or timed bodyweight circuits and animal-style flows, but can also work on its own or as part of a dynamic warm-up or mobility sequence.	6	6	6	2.00	5
994	Swimming		6	6	6	2.00	1
995	FYR Push-Up	The push-up is a popular bodyweight exercise that is commonly used in military and tactical physical fitness tests. Itâ€™s a classic movement to build upper-body muscle and strength, emphasizing the chest, triceps, and shoulders, but also working the upper back and core.	6	6	6	2.00	5
996	Frog push-up	The frog push-up is an advanced push-up variation that is performed with the legs bent and butt in the air. It heavily targets the triceps and shoulders, but is also quite challenging to the core.	6	6	6	2.00	5
997	Wide push-up plank hold	The wide push-up plank hold is a full-body exercise targeting the core. Because the arms arent directly under the body, it can be more difficult than traditional push-up planks, especially for the upper back and chest, but also for the core.	6	6	6	2.00	5
998	Close push-up	The close push-up is an upper-body exercise that targets the chest, triceps, and shoulders. The close hand position places more emphasis on the triceps.	6	6	6	2.00	5
999	Push-Up - Gethin Variation	The push-up is a popular bodyweight exercise that is commonly used in military and tactical physical fitness tests. Itâ€™s a classic movement to build upper-body muscle and strength, emphasizing the chest, triceps, and shoulders, but also working the upper back and core.	6	6	6	2.00	5
1000	HM Incline Push-Up On Chair		6	6	6	2.00	5
1001	HM Push-Up		6	6	6	2.00	5
1002	HM Push-Plank		6	6	6	2.00	5
1003	AM Chest Dips	The chest dip is a chest-building exercise in which the lifter hangs between two parallel handles. Leaning the torso slightly forward shifts the emphasis from the triceps to the chest.	6	6	6	2.00	5
1004	Push-up	The push-up is a popular bodyweight exercise that is commonly used in military and tactical physical fitness tests. Itâ€™s a classic movement to build upper-body muscle and strength, emphasizing the chest, triceps, and shoulders, but also working the upper back and core.	6	6	6	2.00	5
1005	UP Push-up	The push-up is a popular bodyweight exercise that is commonly used in military and tactical physical fitness tests. Itâ€™s a classic movement to build upper-body muscle and strength, emphasizing the chest, triceps, and shoulders, but also working the upper back and core.	6	6	6	2.00	5
1006	UN Push-Up		6	6	6	2.00	5
1007	UNS Foam Roll Pecs		6	6	6	2.00	5
1008	UN Hands Elevated Push-Up		6	6	6	2.00	5
1009	Holman Seal Drag to Push-Up		6	6	6	2.00	5
1010	Holman Hand-Elevated Push-Up with Hand Row		6	6	6	2.00	5
1011	Holman Push-Up		6	6	6	2.00	5
1012	Holman Slow Hips-Up Chest Press		6	6	6	2.00	5
1013	Holman Jump-Out Push-Up with Hand Hop Back		6	6	6	2.00	5
1014	Holman Froggy Push-Up to Donkey Kick		6	6	6	2.00	5
1015	Holman Push-Up to Sit Back		6	6	6	2.00	5
1016	Holman Sit Back Push-Up		6	6	6	2.00	5
1017	Holman Alternating Staggered Push-Up		6	6	6	2.00	5
1018	Holman Foot-Up Diving Push-Up		6	6	6	2.00	5
1019	Holman Narrow Push-Up		6	6	6	2.00	5
1020	Holman Dynamo Push-Up		6	6	6	2.00	5
1021	Holman Jump to Push-Up		6	6	6	2.00	5
1025	Scapular push-up	The scapular push-up is an upper-body exercise aimed at increasing the stability of the scapulae and mobility in the shoulders. It is often performed as part of a dynamic warm-up before an upper-body workout, or as part of a mobility session.	6	6	6	2.00	5
1026	King Maker Push-up	The push-up is a popular bodyweight exercise that is commonly used in military and tactical physical fitness tests. Itâ€™s a classic movement to build upper-body muscle and strength, emphasizing the chest, triceps, and shoulders, but also working the upper back and core.	6	6	6	2.00	5
1027	Warrior push-up	The warrior push-up is a series of push-up and plank variations combined into a single sequence. They include a Judo push-up, plank, side plank, mountain climber, diamond push-up, and regular push-up. Done together, they tax the upper-body muscles from different angles and increase time under tension for the entire body.	6	6	6	2.00	5
1028	Taylor Roll-Over Push-Up		6	6	6	2.00	5
1029	Taylor One-Arm Push-Up Slow Negative		6	6	6	2.00	5
1030	30 Chest Push-Up To Isometric Hold		6	6	6	2.00	5
1031	30 Chest Push-Up		6	6	6	2.00	5
1032	30 Chest Bench Push-Up		6	6	6	2.00	5
1033	MetaBurn 3-Phase Push-Up		6	6	6	2.00	5
1034	MetaBurn Fast Feet To Push-Up		6	6	6	2.00	5
1035	MetaBurn Judo Push-Up To Pike Push-Up		6	6	6	2.00	5
1036	MetaBurn Pike Push-Up		6	6	6	2.00	5
1037	MetaBurn Push-Up To Frogger		6	6	6	2.00	5
1038	MetaBurn Push-Up With Hand Side-Step		6	6	6	2.00	5
1039	MetaBurn Push-Up With Hand-Up Rotation		6	6	6	2.00	5
1040	MetaBurn Sphinx Push-Up		6	6	6	2.00	5
1041	MetaBurn Spiderman Push-Up		6	6	6	2.00	5
1042	Roberston Push-up to Down Dog		6	6	6	2.00	5
1043	FYR2 Push-Up-Breakdancer-Shoulder-Tap Complex		6	6	6	2.00	5
1044	ACFT Hand-release push-up	The hand-release push-up is a variation of the push-up, a popular bodyweight exercise commonly used in military and tactical physical fitness tests. Itâ€™s a movement to build upper-body strength and endurance, emphasizing the chest, triceps, and shoulders, but also working the upper back and core. This specific exercise is part of the new Army Combat Fitness Test or ACFT.	6	6	6	2.00	5
1045	1.5-rep push-up	The 1.5-rep push-up is a more difficult variation of the push-up, commonly used to train for military and tactical physical fitness tests. It builds upper-body muscle and strength, emphasizing the chest, core, upper back, triceps, and shoulders.	6	6	6	2.00	5
1046	ACFT Triple-clap push-up	The triple-clap push-up is an explosive bodyweight exercise aimed at increasing upper-body power and strength. It is an advanced exercise targeting the muscles of the chest, triceps, core, and shoulders.	6	6	6	2.00	5
1047	ACFT Superman push-up	The Superman push-up is an explosive bodyweight exercise aimed at increasing upper-body power and strength. It is an advanced exercise targeting the muscles of the chest, triceps, shoulders, and core that involves pressing up off the floor and lifting the hands and feet off the ground simultaneously at the top of the movement.	6	6	6	2.00	5
1048	Cross-over push-up	The cross-over push-up is a variation of the push-up that adds a degree of difficulty by stepping over a small box or step between repetitions. It can be performed for time or for reps and creates a greater core stabilization challenge by forcing the core muscles to maintain the a neutral spine throughout the movement.	6	6	6	2.00	5
1049	Leverage Incline Chest Press		6	6	6	1.00	5
1050	Butterfly	The machine chest fly is an exercise targeting the chest. The motion is often compared to bear-hugging a tree trunk. In chest workouts, this exercise often follows compound moves such as the bench press.	6	6	6	2.00	5
1051	Leverage Chest Press	The machine chest press is an upper body exercise targeting the pectoral muscles.	6	6	6	1.00	5
1052	Decline Smith Press	The Smith machine decline bench press is a machine-based exercise targeting the chest muscles, particularly the lower pectoral muscles. The Smith machine mimics a barbell but provides more stability. This movement is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body workout.	6	6	6	1.00	5
1053	Smith machine bench press	The Smith machine bench press is a machine-based movement targeting the chest. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body focused workout.	6	6	6	2.00	5
1054	Leverage Decline Chest Press		6	6	6	1.00	5
1055	Machine chest press	The machine chest press is a machine-based exercise targeting the chest. It approximates the motion of a bench press but is usually performed facing forward and seated upright. Many machines offer multiple grip options, such as overhand, neutral (palms facing), or underhand. The chest press is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a pre-exhaust or muscle-building upper-body workout.	6	6	6	2.00	5
1056	Smith Machine Incline Bench Press	The Smith machine incline bench press is a machine-based movement targeting the chest, particularly the upper chest. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body focused workout.	6	6	6	2.00	5
1057	Smith Machine Close-Grip Bench Press	The Smith machine close-grip bench press is a machine-based movement targeting the chest and triceps. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest, arms, or upper-body focused workout.	6	6	6	2.00	5
1058	Smith Machine Decline Press	The Smith machine decline bench press is a machine-based exercise targeting the chest muscles, particularly the lower pectoral muscles. The Smith machine mimics a barbell but provides more stability. This movement is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body workout.	6	6	6	1.00	5
1234	Single-leg glute bridge	The single-leg glute bridge is a lower-body exercise that targets the glutes, lower back, and hamstrings. It is performed one side at a time.	8	8	8	2.00	5
1059	Smith machine bench press throw	The Smith machine bench press throw is an exercise that helps develop pushing power that carries over to the traditional bench press. It involves pushing a relatively light weight (such as 30-50 percent of your 1RM) explosively and actually letting go at the top of the rep. It can work as power or speed-style training in a strength or athleticism-focused workout plan.	6	6	6	1.00	5
1060	Machine chest fly	The machine chest fly is a machine-based exercise targeting the chest. It approximates the motion of a dumbbell fly or cable fly, but is usually performed facing forward and seated upright. The motion is often compared to bear-hugging a tree trunk. The chest fly is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a pre-exhaust or muscle-building upper-body workout.	6	6	6	2.00	5
1061	Machine bench press	The machine bench press is a machine-based exercise targeting the chest and upper body. It approximates the motion of a bench press, but uses a selectorized weight-stack or plate-loaded machine. Many such machines also allow you to choose between different grips and grip widths. Machine-based presses are often done for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or chest-focused portion of a workout.	6	6	6	2.00	5
1062	Machine Seated Chest Press - Gethin Variation	The machine chest press is an upper body exercise targeting the pectoral muscles.	6	6	6	2.00	5
1063	Smith machine weighted push-up	The Smith machine weighted push-up is a pushing movement performed with a plate resting on the back or shoulders. It is performed most safely with a foot or so of space at the bottom to minimize the risk of getting "pinned" under the bar. It targets all the same muscles as a push-up, including the chest, triceps, and shoulders.	6	6	6	2.00	5
1064	Smith machine incline bench press-	The Smith machine incline bench press is a machine-based movement targeting the chest, particularly the upper chest. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body focused workout.	6	6	6	2.00	5
1065	Smith machine decline bench press	The Smith machine decline bench press is a machine-based exercise targeting the chest muscles, particularly the lower pectoral muscles. The Smith machine mimics a barbell but provides more stability. This movement is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body workout.	6	6	6	2.00	5
1066	AM Pec Dec	The pec deck is a machine-based exercise targeting the chest. It approximates the motion of a dumbbell fly or cable fly, but is usually performed facing forward and seated upright. The motion is often compared to bear-hugging a tree trunk. The chest fly is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a pre-exhaust or muscle-building upper-body workout.	6	6	6	2.00	5
1067	30 Chest Machine Flat Chest Press		6	6	6	2.00	5
1068	Smith machine push-up	The Smith machine push-up is an upper-body exercise targeting the chest, shoulders, and triceps. It is similar in form to bodyweight push-ups, but with the hands on the bar of the Smith machine. This allows you to vary the height to increase or decrease difficulty, or to perform a mechanical dropset by raising the bar after hitting failure at a certain height.	6	6	6	2.00	5
1069	30 Chest Smith Machine Incline Chest Press		6	6	6	2.00	5
1070	30 Chest Smith Machine Chest Press		6	6	6	2.00	5
1071	30 Chest Machine Incline Chest Press		6	6	6	2.00	5
1072	30 Chest Machine Fly		6	6	6	2.00	5
1073	30 Chest 30-Degree Incline Smith Machine Press		6	6	6	2.00	5
1074	Low-cable cross-over	The low-cable cross-over is an isolation movement that uses a cable stack to target the upper portion of the pectoral muscles. It is common in upper-body and chest-focused muscle-building workouts, often in combination with presses or flyes from other angles to target all portions of the chest.	6	6	6	2.00	5
1075	Incline cable chest fly	The incline cable chest fly is an isolation movement that uses a cable stack and an incline bench to target the upper portion of the pectoral muscles. It is common in upper-body and chest-focused muscle-building workouts, often after pressing movements like the barbell or dumbbell bench press or as a finishing movement at the end of the workout. It is often used in combination with other flyes to target the chest from different angles.	6	6	6	2.00	5
1076	Cable Crossover	The cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Since its done using adjustable pulleys, you can target different parts of your chest by setting the pulleys at different levels. It is common in upper body and chest-focused muscle-building workouts, often as a pre-exhaust at the beginning of a workout, or a finishing movement at the end. It is often in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1077	Incline cable chest press	The incline cable chest press is a pressing movement that uses a cable stack and an incline bench to target the upper portion of the pectoral muscles, similar to an incline dumbbell press. It is common in upper-body and chest-focused muscle-building workouts, where it can be effective as a primary movement in classic hypertrophy rep ranges, as a pre-exhaust, or as a high-rep finisher. It is often used in combination with other presses or flyes to target the chest from different angles.	6	6	6	1.00	5
1078	Cable Chest Press		6	6	6	1.00	5
1079	Single-arm cable cross-over	The single-arm cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Working the chest one side at a time allows you to focus on the balance between the sides of your chest and really feel the chest muscles contracting. It is common in upper-body and chest-focused muscle-building workouts, often in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1080	Cable cross-over	The cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Since its done using adjustable pulleys, you can target different parts of your chest by setting the pulleys at different levels. It is common in upper-body and chest-focused muscle-building workouts, often as a pre-exhaust at the beginning of a workout or a finishing movement at the end. It is often used in combination with other presses or flyes to target the chest from different angles.	6	6	6	1.00	5
1081	Standing Cable Chest Press		6	6	6	1.00	5
1395	HM Alternating Step-Up With Chair		9	9	9	2.00	5
1396	HM Right Knee-Up		9	9	9	2.00	5
1397	HM Low Lunge With External Twist		9	9	9	2.00	5
1082	Lying cable chest fly	The lying cable chest fly is an isolation movement that uses a cable stack and a flat bench to build bigger and stronger pectoral muscles. It is common in upper-body and chest-focused muscle-building workouts, often as a pre-exhaust at the beginning of a workout or as a finishing movement at the end. It is often used in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1083	Paul Carter Cable Cross-Over	The cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Since its done using adjustable pulleys, you can target different parts of your chest by setting the pulleys at different levels. It is common in upper body and chest-focused muscle-building workouts, often as a pre-exhaust at the beginning of a workout, or a finishing movement at the end. It is often in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1084	One-Arm Cable Crossover - Gethin Variation	The single-arm cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Working the chest one side at a time allows you to focus on balance between sides of your chest, and really feel the chest muscles contracting. It is common in upper body and chest-focused muscle-building workouts, often in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1085	Incline Cable Fly - Gethin Variation	The incline cable chest fly is an isolation movement that uses a cable stack and an incline bench to target the upper portion of the pectoral muscles. It is common in upper-body and chest-focused muscle-building workouts, often after pressing movements like the barbell or dumbbell bench press or as a finishing movement at the end of the workout. It is often used in combination with other flyes to target the chest from different angles.	6	6	6	2.00	5
1086	Cable Cross-Over - Gethin Variation	The cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Since its done using adjustable pulleys, you can target different parts of your chest by setting the pulleys at different levels. It is common in upper body and chest-focused muscle-building workouts, often as a pre-exhaust at the beginning of a workout, or a finishing movement at the end. It is often in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1087	Seated cable chest fly	The seated cable chest fly is an isolation movement that uses a cable stack and an upright bench to target the pectoral muscles. Being able to brace against a seat can help you stabilize your torso and focus on isolating the pecs, feeling them stretch and contract. It is usually used in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1088	Single-arm incline cable cross-over-	The single-arm incline cable cross-over is an isolation movement that uses a cable stack and a bench to target the upper part of the pectoral muscles. Working the chest one side at a time allows you to focus on balance between the sides of your chest and really feel the chest muscles contracting. It is common in upper-body and chest-focused muscle-building workouts, often in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1089	High-to-low cable chest fly	The high-to-low cable chest fly is an isolation movement that uses a cable stack to target the lower portion of the pectoral muscles. It is common in upper-body and chest-focused muscle-building workouts, often after pressing movements like the barbell or dumbbell bench press or as a finishing movement at the end of the workout. It is often used in combination with other flyes to target the chest from different angles.	6	6	6	2.00	5
1090	UP Cable Cross-Over	The cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Since its done using adjustable pulleys, you can target different parts of your chest by setting the pulleys at different levels. It is common in upper body and chest-focused muscle-building workouts, often as a pre-exhaust at the beginning of a workout, or a finishing movement at the end. It is often in combination with other presses or flyes to target the chest from different angles.	6	6	6	2.00	5
1091	UP Cable Fly		6	6	6	2.00	5
1092	30 Chest Low-To-High Cable Fly		6	6	6	2.00	5
1093	30 Chest Incline Cable Fly		6	6	6	2.00	5
1094	30 Chest Incline Cable Chest Press		6	6	6	2.00	5
1095	30 Chest High-To-Low Cable Press		6	6	6	2.00	5
1096	30 Chest High-To-Low Cable Fly		6	6	6	2.00	5
1097	30 Chest Shoulder-Height Cable Fly		6	6	6	2.00	5
1098	Cable Pec Fly		6	6	6	2.00	5
1099	Chest Push (multiple response)		6	6	6	1.00	3
1100	Medicine Ball Chest Pass	The medicine ball pass is a simple partner-based exercise that involves throwing a weighted ball back-and-forth. It can be part of a dynamic warm-up for lifting or athletics, but can also work as active rest or as a component of circuit training.	6	6	6	2.00	3
1101	Medicine ball sprawl to chest press	The medicine ball sprawl to chest press is a sequence of athletic movements using a medicine ball or other small weight. It involves performing a sprawl with the hands on the ball, followed by a standing chest press holding the ball. It is challenging to the cardiovascular system, but also the muscles of the core, shoulders, and upper back. It can be performed for reps or for time, usually in dedicated ab training or as part of a medicine ball and bodyweight circuit workout.	6	6	6	2.00	5
1102	Medicine ball push-up	The medicine ball push-up is a simple way to make a classic bodyweight exercise more difficult. It targets all the same muscles as the push-up: chest, triceps, shoulders, upper back, and core. The addition of the medicine ball adds a degree of difficulty and can increase chest and triceps activation.	6	6	6	2.00	5
1103	Chest Push (single response)		6	6	6	1.00	3
1104	Chest Push with Run Release		6	6	6	1.00	3
1105	Chest Push from 3 point stance		6	6	6	1.00	3
1106	Dumbbell Bench Press	The dumbbell bench press is a mainstay of workout enthusiasts worldwide. Itâ€™s a classic move for building a bigger, stronger chest. As such, itâ€™s often placed first in mass-building chest workouts.	6	6	6	2.00	5
1107	Dumbbell Flyes	The dumbbell chest fly is a popular exercise that targets the pectoral or chest muscles. It attempts to isolate the chest muscles, stretching and contracting them while limiting involvement of the shoulders. Unlike a press, where the elbows bend and flex, flyes should keep a relatively consistent elbow angle. The motion is sometimes compared to "hugging a tree." Dumbbell flyes are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body focused workout.	6	6	6	2.00	5
1108	Incline dumbbell bench press	The incline dumbbell bench press is a popular upper-body exercise targeting the upper pectoral muscles. While it can be a strength-focused movement, it is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
1109	Decline Dumbbell Flyes	The decline dumbbell chest fly is an upper body isolation exercise targeting the lower chest. It will require less weight than a decline press, which makes it a great hypertrophy exercise with high reps.	6	6	6	2.00	5
1110	Reverse-grip incline dumbbell bench press	The reverse-grip incline dumbbell bench press is an upper-body exercise targeting the pectoral muscles. Pressing with a reverse grip targets the upper chest in particular, especially when performed on an incline. This press variation is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	1.00	5
1111	Incline Dumbbell Flyes	The incline dumbbell chest fly is an upper body isolation exercise targeting the upper chest and is typically used with aesthetic goals in mind. It will require less weight than an incline press, which makes it a great hypertrophy exercise with high reps.	6	6	6	2.00	5
1112	Neutral-grip dumbbell bench press	The neutral-grip dumbbell bench press is a variation on a classic chest-building exercise where the palms face each other instead of forward. This shift puts the elbows closer to the sides, placing more emphasis on the triceps, and perhaps also the inner chest. The neutral-grip press can be performed in lower reps for strength or higher reps for muscle growth.	6	6	6	2.00	5
1113	Decline dumbbell bench press	The decline dumbbell bench press is a popular upper-body exercise targeting the lower pectoral muscles. While it can be a strength-focused movement, it is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
1114	Single-arm kettlebell row	The single-arm kettlebell row is a popular muscle- and strength-building exercise that works the muscles of the back and core simultaneously. It has all the same benefits as a single-arm dumbbell row, but some people find a kettlebell more comfortable to hold during the movement.	6	6	6	2.00	5
1115	Hammer Grip Incline DB Bench Press		6	6	6	1.00	5
1116	Straight-arm dumbbell pull-over	The straight-arm dumbbell pull-over is an exercise that targets the muscles of the pecs, lats, and serratus anterior muscles. Performing this movement with straight arms makes it more difficult, increases the stretch on the serratus muscles and lats, and forces the core to work harder. Old-school bodybuilders would perform pull-overs with light weights for sets of 20 between sets of heavy 20-rep squats, but they are more popular today in moderate rep ranges, such as 8-12 reps per set, as part of an upper-body workout.	6	6	6	2.00	5
1117	Incline Dumbbell Bench With Palms Facing In		6	6	6	1.00	5
1118	Incline Dumbbell Flyes - With A Twist		6	6	6	1.00	5
1119	Bent-arm dumbbell pull-over	The bent-arm dumbbell pull-over was a staple exercise of the "Golden Era" of bodybuilding and a favorite of Arnold Schwarzenegger himself. Done properly, the exercise targets the pecs, lats, and serratus anterior muscles. Old-school bodybuilders would perform them with light weights for sets of 20 between sets of heavy 20-rep squats, but pull-overs are more popular today in moderate rep ranges, such as 8-12 reps per set, as part of an upper-body workout.	6	6	6	2.00	5
1120	Close-grip dumbbell bench press	The close-grip dumbbell bench press is a popular variation of the dumbbell bench press in which the dumbbells are held closer than shoulder width. This places more emphasis on the triceps, and perhaps also the inner chest. The close-grip dumbbell bench press can be performed in lower reps for strength or higher reps for muscle growth.	6	6	6	2.00	5
1121	Single-dumbbell push-up	The single-dumbbell push-up is a more difficult push-up variation where you balance your hands on the ends of a dumbbell. This simple change makes many muscle groups work harder, helping encourage muscle and strength gains across the upper body.	6	6	6	2.00	5
1122	One-Arm Flat Bench Dumbbell Flye		6	6	6	1.00	5
1123	Dumbbell Fix Dumbbell Floor Chest Fly		6	6	6	2.00	5
1124	Dumbbell Fix Traveling Push-Up		6	6	6	2.00	5
1125	Incline dumbbell chest fly	The incline dumbbell chest fly is an upper-body exercise targeting the chest. Performing it at an incline helps to target the upper chest in particular, while limiting involvement of the shoulders. Fly variations are usually performed for moderate to high reps, such as 8-12 reps per set or more.	6	6	6	2.00	5
1126	Paul Carter Dumbbell Shrug	The standing dumbbell shrug is a popular movement to build and strengthen the trapezius muscles. Itâ€™s a often trained on a bodybuilding-style shoulder or back training day, but can also work well in full-body or strength-focused training.	6	6	6	2.00	5
1127	Dumbbell push-up row	The dumbbell push-up row combines pressing, rowing, and core stabilization into a single sequence. Its popular in time-efficient strength and muscle-building workouts.	6	6	6	2.00	5
1128	TBS Dumbbell Incline Press	The incline dumbbell bench press is an upper body exercise targeting the upper pectoral muscles.	6	6	6	2.00	5
1129	Incline Dumbbell Fly - Gethin Variation	The incline dumbbell chest fly is an upper body isolation exercise targeting the upper chest and is typically used with aesthetic goals in mind. It will require less weight than an incline press, which makes it a great hypertrophy exercise with high reps.	6	6	6	2.00	5
1130	Dumbbell bench press-	The dumbbell bench press is a mainstay of lifters worldwide. Its a classic move for building a bigger, stronger chest and triceps. Its often placed first in mass-building chest workouts, but can also be utilized as an accessory movement for the barbell bench press in strength training. It can be performed in lower strength-focused rep ranges, or for higher reps to build muscle.	6	6	6	2.00	5
1131	Decline dumbbell fly and press	The decline dumbbell fly and press is a dumbbell complex that targets the chest muscles, particularly the lower pecs. By alternating the single-joint fly with the multijoint press, you get the benefits of both and put serious stress on the chest muscles even with relatively light weight. Because the fly will be the limiting factor in weight selection, this pairing is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
1283	Pigeon stretch	The pigeon stretch is a lower-body stretch targeting the glutes, hips, and piriformis. It is similar to the pigeon pose from yoga, but is also popular as part of dynamic warm-ups or cool-downs in strength training. It can also be performed anytime to help combat training-related soreness.	8	8	8	2.00	5
1132	Incline dumbbell fly and press	The incline dumbbell fly and press is a dumbbell complex that targets the chest muscles, particularly the upper pecs. By alternating the single-joint fly with the multijoint press, you get the benefits of both and put serious stress on the chest muscles even with relatively light weight. Because the fly will be the limiting factor in weight selection, this pairing is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
1133	Single-arm decline dumbbell bench press	The single-arm decline dumbbell bench press is an upper-body exercise targeting the pectoral muscles, particularly the lower pecs. Because balance can be an issue, this press variation is usually performed with lighter weight for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
1134	Single-arm incline dumbbell bench press	The single-arm incline dumbbell bench press is an upper-body exercise targeting the pectoral muscles. Because balance can be an issue, this press variation is usually performed with lighter weight for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	6	6	6	2.00	5
1135	Incline Dumbbell Press - Gethin Variation	The incline dumbbell bench press is an upper body exercise targeting the upper pectoral muscles.	6	6	6	2.00	5
1136	Dumbbell Chest Press - Gethin Variation	The dumbbell bench press is a mainstay of workout enthusiasts worldwide. Itâ€™s a classic move for building a bigger, stronger chest. As such, itâ€™s often placed first in mass-building chest workouts.	6	6	6	2.00	5
1137	Dumbbell Floor Press - Gethin Variation	The dumbbell floor press limits the range of motion you would achieve with a regular dumbbell bench press, but still targets the chest, triceps, and anterior delts. This allows you to build strength in the top portion of the lift and work on strengthening the shoulder stabilizers.	6	6	6	2.00	5
1138	Decline Dumbbell Press - Gethin Variation	The decline dumbbell bench press is an upper body isolation exercise targeting the lower chest. Utilizing dumbbells instead of a barbell increases the difficulty of stabilizing the weight.	6	6	6	2.00	5
1139	Dumbbell chest fly	The dumbbell chest fly is a popular exercise that targets the pectoral or chest muscles. It attempts to isolate the chest muscles, stretching and contracting them while limiting involvement of the shoulders. Unlike a press, where the elbows bend and flex, flyes should keep a relatively consistent elbow angle. The motion is sometimes compared to "hugging a tree." Dumbbell flyes are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest or upper-body focused workout.	6	6	6	2.00	5
1140	Machine rear delt fly	The machine rear delt fly is an exercise targeting the rear head of the shoulder muscle or deltoids, as well as the muscles of the upper back. Its sort of the reverse of the machine chest fly, and is sometimes performed on the same machine, but facing the opposite direction. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	6	6	6	2.00	5
1141	AM Dumbbell Bench Press	The dumbbell bench press is a mainstay of workout enthusiasts worldwide. Itâ€™s a classic move for building a bigger, stronger chest. As such, itâ€™s often placed first in mass-building chest workouts.	6	6	6	2.00	5
1142	UP Incline Dumbbell Press	The incline dumbbell bench press is an upper body exercise targeting the upper pectoral muscles.	6	6	6	2.00	5
1143	UP Incline Dumbbell Fly	The incline dumbbell chest fly is an upper body isolation exercise targeting the upper chest and is typically used with aesthetic goals in mind. It will require less weight than an incline press, which makes it a great hypertrophy exercise with high reps.	6	6	6	2.00	5
1144	Holman Push-Up to Belly Touch		6	6	6	2.00	5
1145	Single-arm dumbbell floor press	The single-arm dumbbell floor press is a multijoint pressing exercise performed lying on the floor, either with the knees bent or straight. It has less range of motion than a regular dumbbell bench press, but still targets the chest, triceps, and anterior delts. By performing it with one arm, you can strengthen weakness on certain sides or simply use it as a way to challenge the core more during this exercise.	6	6	6	2.00	5
1146	Total Fitness Weighted Push-Up	The plate-weighted push-up is a simple way to make a classic bodyweight exercise more difficult. It targets all the same muscles as the push-up: chest, triceps, shoulders, upper back, and core. You can balance a plate on your upper back yourself, but its easier and safer to have someone else put it there. If you stack a few plates up, be sure to have a spotter close at hand.	6	6	6	2.00	5
1147	King Maker Standing Dumbbell Shoulder Press	The standing dumbbell shoulder press is a classic deltoid-builder (especially the front deltoids) thatâ€™s ubiquitous in gyms around the world. Performing the move standing up as opposed to seated allows for more weight to be used.	6	6	6	2.00	5
1148	30 Chest Incline Dumbbell Fly		6	6	6	2.00	5
1149	30 Chest Incline Dumbbell Bench Press		6	6	6	2.00	5
1150	30 Chest Dumbbells-Together Press		6	6	6	2.00	5
1151	30 Chest Dumbbells-Together Incline Bench Press		6	6	6	2.00	5
1152	30 Chest Dumbbell Fly		6	6	6	2.00	5
1153	30 Chest Dumbbell Bench Press		6	6	6	2.00	5
1154	30 Chest 30-Degree Incline Dumbbell Fly		6	6	6	2.00	5
1155	FYR2 Single-Dumbbell Push-Up		6	6	6	2.00	5
1156	Bodyweight Flyes	The double-bar roll-out chest fly is a chest exercise that utilizes two rotating barbells as "handles" for a chest fly. It targets the muscles of the chest, but is also an intense core workout. Its a tough movement that is usually performed in the chest-focused portion of a workout.	6	6	6	1.00	5
1157	Close-grip EZ-bar bench press	The close-grip EZ-bar bench press is an exercise targeting the chest, shoulders, and triceps. This move is more commonly done with a straight bar and is often only performed with an EZ-bar as part of a complex of movements such as pull-overs or skullcrushers.	6	6	6	2.00	5
1158	Chest dip	The chest dip is a bodyweight exercise performed on parallel bars or on a pull-up and dip station. It targets the chest, triceps, and shoulders. Dips with a chest focus are usually performed with the torso leaning forward and the elbows angled out from the torso. Dips can be performed for low reps for strength or higher reps for muscle growth.	6	6	6	2.00	5
1159	Drop Push		6	6	6	1.00	3
1160	Forward Drag with Press		6	6	6	1.00	7
1161	Chain Press		6	6	6	1.00	4
1163	Pass-through stretch with band	The pass-through stretch with band is a popular move to build and maintain mobility in the shoulder joint and to strengthen the muscles of the upper back and rotator cuff. It is common in CrossFit and Olympic lifting training and is usually performed as part of a warm-up or paired with movements in a workout. It can also be performed with a PVC pipe or dowel if a band isnt available.	6	6	6	1.00	6
1164	Weighted Push-Up	The plate-weighted push-up is a simple way to make a classic bodyweight exercise more difficult. It targets all the same muscles as the push-up: chest, triceps, shoulders, upper back, and core. You can balance a plate on your upper back yourself, but its easier and safer to have someone else put it there. If you stack a few plates up, be sure to have a spotter close at hand.	6	6	6	2.00	5
1165	Heavy Bag Thrust		6	6	6	1.00	3
1166	Decline Explosive Push-Up		6	6	6	1.00	3
1167	Suspended Chest Fly		6	6	6	1.00	5
1168	Svend press	The Svend press is an exercise where the chest is targeted by performing presses while squeezing two weight plates together. It is usually performed for relatively high reps with light weights as an accessory movement to the bench press or as a burnout movement on chest day.	6	6	6	1.00	5
1169	Bar Push-Up Smith Machine	The hands-elevated push-up is a variation on the push-up, a body-weight standard. The hands are elevated, so that your body is aligned at an angle to the floor rather than parallel.	6	6	6	1.00	3
1170	Plate-weighted push-up	The plate-weighted push-up is a simple way to make a classic bodyweight exercise more difficult. It targets all the same muscles as the push-up: chest, triceps, shoulders, upper back, and core. You can balance a plate on your upper back yourself, but its easier and safer to have someone else put it there. If you stack a few plates up, be sure to have a spotter close at hand.	6	6	6	2.00	5
1171	Double-bar roll-out chest fly	The double-bar roll-out chest fly is a chest exercise that utilizes two rotating barbells as "handles" for a chest fly. It targets the muscles of the chest, but is also an intense core workout. Its a tough movement that is usually performed in the chest-focused portion of a workout.	6	6	6	2.00	5
1172	Holman Plate Dynamo Push-Up		6	6	6	2.00	5
1173	Holman Towel Drag Two Steps to Push-Up		6	6	6	2.00	5
1174	Taylor Val Slide Push-Up/Fly Combo		6	6	6	2.00	5
1175	Exercise ball chest stretch	The exercise ball chest stretch is a simple stretch for the pectoral muscles that can be made more dynamic with help from a medicine ball. It can work in a dynamic warm-up, paired with movements in a workout, or as part of a cool-down or recovery strategy. If the stretch causes pain in the front of your shoulder, dial back the intensity or choose another chest stretch.	6	6	6	1.00	6
1176	Bosu Ball Push-Up		6	6	6	1.00	5
1177	Feet-elevated push-up on ball	The feet-elevated push-up on ball is a variation on the push-up, a bodyweight standard. The feet are elevated on a ball to align the body parallel to the floor and provide a greater stabilization challenge. This makes it more difficult than push-ups on the floor, but also puts more emphasis on the shoulder muscles. It can be a challenging non-gym substitute for incline presses, or as a burnout movement for a chest or shoulder workout.	6	6	6	2.00	5
1178	Standing alternating band speed row	The standing alternating band speed row is an explosive back exercise using exercise bands. It targets the muscles of the middle and upper back, including the lats (latissimus dorsi), rhomboids, and trapezius, as well as the biceps. It can be performed for time or reps either as part of a power or speed-focused portion of a workout or as a burnout at the end of a workout.	7	7	7	2.00	5
1179	Band roundhouse elbow	The band roundhouse elbow is an explosive rotational power exercise using exercise bands. It targets the muscles of the obliques and deep core, but also engrains full-body coordination and striking ability. It can work in an ab workout, in martial arts training, or in general strength and muscle training.	7	7	7	2.00	5
1180	Palms-down wrist curl over bench	The palms-down wrist curl over bench is an exercise targeting the forearms. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a grip or arm-focused workout.	7	7	7	2.00	5
1181	Palms-up wrist curl over bench	The palms-up wrist curl over bench is an exercise targeting the forearms. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a grip or arm-focused workout.	7	7	7	2.00	5
1182	Standing behind-the-back wrist curl	The standing behind-the-back wrist curl is a popular exercise to target the muscles in the forearms, wrists, and fingers. It is generally performed for moderate to high reps, such as 8-15 reps per set, and can work as isolated forearm training or as part of an arms-focused workout.	7	7	7	1.00	5
1183	Seated finger curl	The seated finger curl is an exercise targeting the muscles of the hands and forearms. It is popular with rock climbers and other athletes looking to build forearm size and strength. The range of motion is tiny, but done for moderate to high reps, these will definitely make the forearms burn.	7	7	7	1.00	5
1184	Seated palms-up wrist curl	The seated palms-up wrist curl is an exercise targeting the forearms. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a grip or arm-focused workout.	7	7	7	2.00	5
1185	Bottoms-Up Clean From The Hang Position		7	7	7	1.00	5
1186	Seated One-Arm Dumbbell Palms-Up Wrist Curl		7	7	7	1.00	5
1187	Palms-Up Dumbbell Wrist Curl Over A Bench		7	7	7	1.00	5
1188	Seated palms-down wrist curl	The seated palms-down wrist curl is an exercise targeting the forearms. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a grip or arm-focused workout.	7	7	7	1.00	5
1189	Palms-Down Dumbbell Wrist Curl Over A Bench		7	7	7	1.00	5
1190	Seated One-Arm Dumbbell Palms-Down Wrist Curl		7	7	7	1.00	5
1191	Seated Dumbbell Palms-Up Wrist Curl		7	7	7	1.00	5
1192	Partner farmers walk	The partner farmers walk is a protocol for performing farmers carries with dumbbells or other weights. One partner walks for a predetermined distance or time, then passes the weight to the other partner who walks for the same distance or time.	7	7	7	1.00	5
1193	Dumbbell suitcase carry	The dumbbell suitcase carry is similar to a dumbbell farmers carry, but only uses one dumbbell rather than two. This simple change provides a significant challenge to the abdominal muscles. It can be a challenging finisher to any workout, or work well in fat-loss circuit training or as an accessory movement to heavy lifts like the deadlift.	7	7	7	2.00	5
1194	Suitcase Dumbbell Carry	The dumbbell suitcase carry is similar to a dumbbell farmerâ€™s carry, but only uses one dumbbell rather than two. This simple change provides a significant challenge to the abdominal muscles. It can be a challenging finisher to any workout, or work well in fat-loss circuit training or as an accessory movement to heavy lifts like the deadlift.	7	7	7	2.00	5
1195	Side plank with dumbbell external rotation	The side plank with dumbbell external rotation is a movement that combines an isometric side plank hold with a dumbbell rotation to target both the core and the rotator cuff muscles. You probably wont be able to use much weight without disrupting your balance, but even at light weight, this is a movement that can help address multiple muscle groups in a dynamic warm-up or as accessory work at the end of a workout.	7	7	7	2.00	5
1196	Rickshaw Carry		7	7	7	1.00	7
1197	Dumbbell farmers walk	The dumbbell farmers walk is an exercise with roots in competitive strongman training, but which is also popular in CrossFit and functional training. It can be a challenging finisher to any workout, or work well in fat-loss circuit training or as an accessory movement to heavy lifts like the deadlift.	7	7	7	2.00	7
1198	Wrist Roller		7	7	7	1.00	5
1199	Standing Olympic Plate Hand Squeeze		7	7	7	1.00	5
1200	Plate Pinch		7	7	7	1.00	5
1201	Landmine Press and Catch	The single-arm linear jammer is an explosive pressing movement performed using an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. The linear jammer involves pressing the weight into the air, then catching it with the other hand. The movement focuses primarily on the muscles of the shoulders or deltoids. It can be trained in traditional muscle and strength-focused rep ranges, for lower reps with a focus on explosive pressing power, or for higher reps.	7	7	7	2.00	5
1202	Plate halo	The plate halo is an exercise targeting the shoulder complex. Its usually performed as part of a dynamic warm-up prior to an upper-body workout.	7	7	7	2.00	5
1203	Bryant Wrist Curl		7	7	7	2.00	5
1204	Seated Two-Arm Palms-Up Low-Pulley Wrist Curl		7	7	7	1.00	5
1205	Cable Wrist Curl		7	7	7	1.00	5
1206	Single-arm cable push-down	The single-arm cable push-down is a single-joint isolation movement that develops the triceps muscle one arm at a time. Because the action is purely at the elbow joint, it is difficult to use any substantial weight. Reps are usually high, such as 8-12 reps per set or more, with a focus on strict form and feeling the mind-muscle connection.	7	7	7	2.00	5
1207	Wrist Circles		7	7	7	1.00	6
1208	Kneeling Forearm Stretch		7	7	7	1.00	6
1209	Hip Extension with Bands		8	8	8	1.00	5
1210	Hip Lift with Band		8	8	8	1.00	4
1211	HM Monster Walk		8	8	8	2.00	5
1212	UNS Banded Glute Bridge		8	8	8	2.00	5
1213	FYR2 Banded Glute Bridge		8	8	8	2.00	5
1214	Piriformis SMR	Piriformis self-myofascial release (SMR) is a self-administered soft-tissue treatment for the lower body, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the piriformis muscles in the upper gluteal region, some people find they can cause this often painful and tight muscle to relax or "release." Piriformis SMR is often accompanied by SMR on the iliotibial (IT) band or tensor fascia lata (TFL muscles), or by stretches that target the glutes and hips.	8	8	8	2.00	6
1215	Barbell glute bridge	The barbell glute bridge is a popular exercise targeting the muscles of the glutes and hamstrings. It can be done as a strength movement on its own, as an activation drill or warm-up for lower-body training, or as a burnout at the end of a lower-body workout.	8	8	8	2.00	4
1216	Barbell Hip Thrust	The barbell hip thrust is an exercise that engages the posterior chain, particular the glutes. It involves fully extending your hips while holding a weighted barbell across the midsection.	8	8	8	2.00	4
1217	Kneeling Squat		8	8	8	1.00	4
1218	Kneeling Jump Squat		8	8	8	1.00	2
1219	UN Rear Foot Elevated Split Squat		8	8	8	2.00	5
1220	Kettlebell thruster	The kettlebell thruster is a popular kettlebell movement that combines a kettlebell front squat with a kettlebell press, while holding the bell in a goblet or bottoms-up grip. It is preceded by a clean at the start of each set, and you can perform a clean between each rep if you choose. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a larger kettlebell combination or complex.	8	8	8	2.00	5
1221	Taylor Kettlebell Swing		8	8	8	2.00	5
1222	UN Goblet Squat		8	8	8	2.00	5
1223	Single-arm triceps kick-back	The single-arm triceps kick-back is a popular movement to increase size and strength of the triceps. It is usually performed for moderate to high reps, at least 8-12 reps, as part of an upper-body or arm-focused workout.	8	8	8	2.00	5
1224	Holman Lateral High Knees to Quad Touch Jump		8	8	8	2.00	5
1225	FYR2 Dumbbell Hip Thrust		8	8	8	2.00	5
1226	FYR2 Glute Bridge Dumbbell Floor Press		8	8	8	2.00	5
1227	Suspended Hip Thrust		8	8	8	1.00	5
1228	Single-leg cable hip extension	The single-leg cable hip extension is an isolation exercise that targets the glutes, specifically the gluteus maximus. It is a common burnout movement on a lower-body focused day and is usually performed for moderate to high reps, such as 8-12 reps per set or more.	8	8	8	2.00	5
1229	Pull Through		8	8	8	1.00	5
1230	Cable rope pull-through deadlift	The cable rope pull-through deadlift is an exercise targeting the glutes and hamstrings using a proper hip-hinging motion.	8	8	8	2.00	5
1231	UNS Cable Pull-Through		8	8	8	2.00	5
1232	30 Legs Glute-Ham Raise		8	8	8	2.00	5
1233	Glute bridge	The glute bridge is a popular lower-body bodyweight exercise that primarily targets the glutes, but also activates the lower back and hamstrings. It can be performed with body weight alone, or with added resistance such as barbells, dumbbells, or bands. It can be performed for time or reps and works perfectly in a dynamic warm-up for lower-body training, but can also be performed for glute activation anytime.	8	8	8	2.00	5
1390	HM Alternating Cross Lunge		9	9	9	2.00	5
1391	HM Alternating Front Kick		9	9	9	2.00	5
1235	Step-up with knee raise	The step-up with knee raise is a lower-body exercise targeting the quads, glutes, and hamstrings. It differs from a traditional step-up in that at the top, you lift the trailing leg up to full hip flexion. This gives the exercise a greater range of motion and more of a focus on powerful hip extension in the working leg. When performed with body weight, these are usually performed for high reps as part of a dynamic warm-up, as cardio acceleration, or as part of the lower-body portion of a workout or circuit.	8	8	8	2.00	5
1236	Glute Kickback		8	8	8	1.00	5
1237	Standing hip extension	The standing hip extension is a movement that activates the glutes and hamstrings. It is often performed either for time or reps as part of a dynamic warm-up.	8	8	8	1.00	5
1238	Lying glute stretch	The lying glute stretch is a stretch to help increase flexibility in the glutes and hips. It involves rotating a single leg over the body while lying flat on the back, and reaching around the leg to facilitate a stretch. It is commonly included in dynamic warm-ups or cool-downs, but can also be performed as full-body mobility work anytime.	8	8	8	2.00	6
1239	Knee Across The Body		8	8	8	2.00	6
1240	Seated Glute		8	8	8	1.00	6
1241	Lying Glute		8	8	8	1.00	6
1242	One Knee To Chest		8	8	8	2.00	6
1243	Seated Glute Stretch		8	8	8	1.00	6
1244	Neck Bridge Supine		8	8	8	1.00	5
1245	Walking High Knee		8	8	8	2.00	5
1246	Walking Butt Kicks		8	8	8	2.00	5
1247	Walking Glute Stretch		8	8	8	2.00	5
1248	Lunge kick	The lunge kick is a lower-body, cardio-based exercise performed at a high intensity. It includes a kick of the front leg to make the movement more powerful. It can be performed either for time or reps and is a great inclusion in a fat-loss or athleticism-focused circuit workout.	8	8	8	2.00	5
1249	Curtsy lunge	The curtsy lunge is a lower-body bodyweight movement that targets the muscles of the hips and glutes. It is usually performed for moderate to high reps, at least 8-12 reps per leg.	8	8	8	2.00	5
1250	Alternating standing glute stretch	The alternating standing glute stretch focuses on improving lower-body mobility and flexibility, particularly in the hips and glutes. It involves performing a partial squat in a "figure 4" position. It can be performed as part of a lower-body warm-up or done post-workout to help combat tightness and soreness.	8	8	8	2.00	6
1251	Side-lying leg lift	The side-lying leg lift is a bodyweight exercise targeting the muscles of the hips and glutes. It can be a worthy addition to a dynamic warm-up on a lower-body or strength-focused training day, a component of a lower-body circuit or workout, or a glute activation drill to do anytime. Generally, leg lifts are done for high reps, such as 8-15 reps per leg or more.	8	8	8	2.00	5
1252	FYR Progressive High Knee	High knees is a full-body, cardio-based exercise with an emphasis on the lower body. It is often performed for reps or time as part of a dynamic warm-up.	8	8	8	2.00	5
1253	Glute-Ham Raise - Gethin Variation	The glute ham raise is an exercise targeting the glutes and hamstrings on a GHD.	8	8	8	2.00	5
1254	Lunge glute stretch	The lunge glute stretch is a lower-body stretch targeting the glutes, hips, and piriformis. It is influenced by the pigeon pose from yoga, but is performed with straight arms. It can be part of a dynamic warm-up or mobility work performed anytime.	8	8	8	2.00	6
1255	Natural Glute Ham Raise - Gethin Variation	The glute ham raise is an exercise targeting the glutes and hamstrings on a GHD.	8	8	8	2.00	5
1256	Groiner	The groiner is an explosive bodyweight exercise targeting the legs, shoulders, and core. It also includes a dynamic stretch of the hips. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	8	8	8	2.00	5
1257	HM Alternating Donkey Kick		8	8	8	2.00	5
1258	HM Alternating Slow Step-Down With Chair		8	8	8	2.00	5
1259	HM Right Side Iron Cross		8	8	8	2.00	5
1260	HM Single-Leg Bridge		8	8	8	2.00	5
1261	HM Hi-Low		8	8	8	2.00	5
1262	HM Kick-Back		8	8	8	2.00	5
1263	HM Left Side Iron Cross		8	8	8	2.00	5
1264	HM Left Side-Kick		8	8	8	2.00	5
1265	HM Leg Lifts		8	8	8	2.00	5
1266	Walking lunge	The walking lunge is a lower-body exercise that targets the glutes, quads, and hamstrings while challenging stability and balance. It can be performed for reps, time, or distance in the lower-body portion of any workout.	8	8	8	2.00	5
1267	High Plyometric Box Jump		8	8	8	2.00	5
1268	Barbell hip thrust-	The barbell hip thrust is a popular exercise that targets the posterior chain, particularly the glutes and hamstrings. It involves fully extending your hips while holding a weighted barbell across the front of the hips. It is a great movement to activate the glutes prior to other lower-body training, but can also be performed in the main part of a workout, or for high reps as a glute burnout.	8	8	8	2.00	5
1269	UN Glute Bridge		8	8	8	2.00	5
1270	Holman Donkey Kick		8	8	8	2.00	5
1271	Holman Hip Raise with Alternating Kick		8	8	8	2.00	5
1272	Holman Left Leg Donkey Kick		8	8	8	2.00	5
1273	Holman Diagonal Right Leg Step-Out to Right Knee-Up		8	8	8	2.00	5
1274	Holman Right Leg Donkey Kick		8	8	8	2.00	5
1275	Holman Butt Tap to Jump		8	8	8	2.00	5
1276	Holman Butt Tap to Jump-Forward-Jump-Back		8	8	8	2.00	5
1277	Holman Traveling High Knees to Squat Thrust		8	8	8	2.00	5
1278	Holman Butt Kicker to High Knees		8	8	8	2.00	5
1279	Holman Daisy Cutter		8	8	8	2.00	5
1280	Holman Frogger		8	8	8	2.00	5
1281	Holman Hip Raise with Chest Press		8	8	8	2.00	5
1282	Total Fitness Bear Crawl	The bear crawl is a popular bodyweight crawling exercise. While it looks simple, the bear crawl is an intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups, the shoulders, core, and legs in particular. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	8	8	8	2.00	5
1392	HM Worlds Greatest Stretch		9	9	9	2.00	6
1393	HM Alternating Sprawl Kick-Through		9	9	9	2.00	5
1284	Levitating side kick-through	The levitating side kick-through is a full-body movement that starts in a bear crawl position and ends with a leg kicked out to the side. In between reps, you kick into the air in a partial handstand. It is commonly performed for reps or time in bodyweight circuits and animal-style flows, but can also work on its own or as part of a dynamic warm-up or mobility sequence.	8	8	8	2.00	5
1285	30 Legs Hip Thrust		8	8	8	2.00	5
1286	Dumbbell single-leg hip thrust	The dumbbell single-leg hip thrust is a single-sided exercise that targets the posterior chain, particularly the glutes and hamstrings. It involves balancing on one foot and fully extending your hips while holding a dumbbell across the front of your hip. It is a great movement to activate the glutes prior to other lower-body training, but can also be performed in the main part of a workout, or for high reps as a glute burnout.	8	8	8	2.00	5
1287	Medicine ball duck walk	The medicine ball duck walk is a dynamic medicine ball movement that challenges both the upper and lower body, while also elevating the heart rate. Its a great movement to include in medicine ball or bodyweight circuit training to increase fatigue and burn serious calories while hammering the muscles of the legs.	8	8	8	2.00	5
1288	Exercise ball hip thrust	The exercise ball hip thrust is a simple yet effective way to work the glutes and hamstrings. Proper form is essential to really feel the burn in the glutes, and the ball can help guide you into the right form better than a bench, which is the usual support for hip thrusts. Unlike the bench version, the ball hip thrust is best performed with body weight or bands as resistance for safety reasons. It can be an excellent component of a warm-up for lower-body training, or a glute activation drill performed anytime.	8	8	8	2.00	5
1289	Downward Facing Balance		8	8	8	1.00	5
1290	Band Good Morning (Pull Through)		9	9	9	1.00	4
1291	Standing Hamstring and Calf Stretch		9	9	9	2.00	6
1292	Hamstring-SMR		9	9	9	1.00	6
1293	Barbell Deadlift	The barbell deadlift is a compound exercise used to develop overall strength and size in the posterior chain. It is a competition lift in the sport of powerlifting, but is also considered a classic benchmark of overall strength. When performed with the hands outside the knees, it is often called a "conventional" deadlift. When the feet are wide and the hands are inside the knees, it is a sumo deadlift.	9	9	9	2.00	5
1294	Clean Deadlift		9	9	9	1.00	2
1295	Sumo deadlift	The sumo deadlift is a compound movement in which the feet are set in a wide stance with toes pointed out and grip is placed inside of the legs. It is allowed to be performed instead of conventional deadlifts in most powerlifting competitions. The sumo deadlift targets the hamstrings, glutes, and upper back/traps, but also has a greater emphasis on stretching and strengthening the adductor and hip muscles due to the wide stance.	9	9	9	1.00	4
1296	Romanian Deadlift from Deficit		9	9	9	1.00	2
1297	Power Snatch		9	9	9	1.00	2
1298	Power Clean from Blocks		9	9	9	1.00	2
1299	Snatch Deadlift		9	9	9	1.00	2
1300	Power clean	The power clean is a full-body movement in which the bar is pulled from the floor and caught in the front rack position in three pulls or phases. The bar is received in the "power" position, with the hips higher than a full-depth squat position. The power clean can be used as a component of the clean and press or clean and jerk, but is also a valuable lift to build explosive power and strength.	9	9	9	2.00	5
1301	Hang Snatch		9	9	9	1.00	2
1302	Wide Stance Stiff Legs		9	9	9	1.00	2
1303	Clean		9	9	9	1.00	2
1304	Good Morning	The barbell good morning is an exercise that targets glute, hamstring, and lower back development. It is often trained as an accessory movement to the deadlift, but also has value on its own. It is sometimes performed for reps in traditional strength-focused rep ranges such as 5-8 reps per set, but due to the risk posed to the lower back, is rarely treated as a max-effort single-rep lift.	9	9	9	2.00	4
1305	Barbell stiff-legged deadlift	The barbell stiff-legged deadlift targets the hamstrings, glutes, lower and upper back, as well as the core. It is a popular accessory movement for the deadlift, but also a muscle-building hamstring movement.	9	9	9	2.00	5
1306	Romanian Deadlift	The barbell stiff-legged deadlift targets the hamstrings, glutes, lower and upper back, as well as the core. It is a popular accessory movement for the deadlift, but also a muscle-building hamstring movement.	9	9	9	2.00	5
1307	Sumo Deadlift with Chains		9	9	9	1.00	4
1308	Sumo Deadlift with Bands		9	9	9	1.00	4
1309	Good Morning off Pins		9	9	9	1.00	4
1310	Stiff-Legged Deadlift	The barbell stiff-legged deadlift targets the hamstrings, glutes, lower and upper back, as well as the core. It is a popular accessory movement for the deadlift, but also a muscle-building hamstring movement.	9	9	9	1.00	5
1311	Snatch Pull		9	9	9	1.00	5
1312	Hanging Bar Good Morning		9	9	9	1.00	4
1313	Reverse Band Sumo Deadlift		9	9	9	1.00	4
1314	Muscle Snatch		9	9	9	1.00	2
1315	Split Snatch		9	9	9	1.00	2
1316	Hang Snatch - Below Knees		9	9	9	1.00	2
1317	30 Legs Sumo Deadlift		9	9	9	2.00	5
1318	Kettlebell pass-through lunge	The kettlebell pass-through lunge is a dynamic leg and core exercise in which a lifter passes a weight under their front leg during lunges. It is a unique coordination challenge, but also challenging to the musculature of the abdomen, lower body, shoulders, and upper back. It is most commonly performed for higher reps, such as 10-15 reps per side, or for time. It can work in circuit-style workouts, or in lower-body or full-body time-efficient training.	9	9	9	2.00	5
1319	Kettlebell One-Legged Deadlift	The kettlebell single-leg deadlift is a variation on the kettlebell deadlift where one foot stays planted on the ground while the other raises into the air at the bottom of the movement. Its popular in lower-body training for strength and muscle building, but also trains balance, grip, and the core muscles.	9	9	9	2.00	5
1320	Single-arm kettlebell clean	The single-arm kettlebell clean is an explosive kettlebell exercise where the lifter pulls the weight to shoulder level in a single movement. While the kettlebell clean is often used as a transitional movement into the press or front squat, it is also a valuable strength and power exercise in its own right. It can be performed in low rep ranges for strength or higher rep ranges for technique practice or muscle growth.	9	9	9	1.00	5
1321	Single-leg kettlebell deadlift	The kettlebell single-leg deadlift is a variation on the kettlebell deadlift where one foot stays planted on the ground while the other raises into the air at the bottom of the movement. Its popular in lower-body training for strength and muscle building, but also trains balance, grip, and the core muscles.	9	9	9	2.00	5
1322	Romanian Deadlift with Kettlebell		9	9	9	1.00	5
1323	Single-arm kettlebell swing	The single-arm kettlebell swing is a popular exercise emphasizing the muscles of the hamstrings, glutes, and back. Because you are only swinging with one arm at a time, it is also uniquely challenging to the grip and core muscles. It is often used to train explosive power, for aerobic or cardiovascular conditioning, or in circuit training.	9	9	9	2.00	5
1324	Kettlebell Dead Clean		9	9	9	1.00	5
1325	Alternating Hang Clean		9	9	9	1.00	5
1326	One-Arm Open Palm Kettlebell Clean		9	9	9	1.00	5
1327	Open Palm Kettlebell Clean		9	9	9	1.00	5
1328	Kettlebell Hang Clean		9	9	9	1.00	5
1329	Double Kettlebell Alternating Hang Clean		9	9	9	1.00	5
1330	Romanian Deadlift With Dumbbells	The dumbbell stiff-legged deadlift targets the hamstrings, glutes, low and upper back, as well as the core. The purpose of the stiff-legged, as opposed to Romanian deadlift with slightly bent knees, is to engage the hamstrings and low back to an even greater degree.	9	9	9	1.00	5
1331	Stiff-Legged Dumbbell Deadlift	The dumbbell stiff-legged deadlift targets the hamstrings, glutes, low and upper back, as well as the core. The purpose of the stiff-legged, as opposed to Romanian deadlift with slightly bent knees, is to engage the hamstrings and low back to an even greater degree.	9	9	9	2.00	5
1332	Vertical Swing		9	9	9	1.00	3
1333	Dumbbell Fix Dumbbell Swing		9	9	9	2.00	5
1334	Dumbbell Lying Hamstring Curl		9	9	9	2.00	5
1335	30 Legs Dumbbell Stiff-Legged Deadlift		9	9	9	2.00	5
1336	Box jump	The box jump is an explosive exercise that strengthens the muscles of the lower body, including the quads, glutes, calves, and hamstrings. They also develop power in the lower body while revving the heart rate. Box jumps can be performed for low reps to focus on strength and power, or for higher reps for metabolic conditioning. Most coaches recommend stepping down rather than jumping down between reps.	9	9	9	1.00	3
1337	Box Jump (Multiple Response)	The box jump is a plyometric exercise that strengthens the muscles of the lower body, including the quads, glutes, calves and hamstrings. They also develop power in the lower-body while revving the heart rate.	9	9	9	2.00	3
1338	Sled push-	The sled push is a conditioning exercise that targets the cardiovascular system and the muscles of the lower body. It involves pushing a sled along turf or another flat surface either for time or distance. Depending on your type of equipment, you may be pushing handles or straps in front of the sled. It can be used as part of a dynamic warm-up or for power training, as a finisher, or as part of a conditioning workout or circuit.	9	9	9	1.00	1
1339	Lying Hamstring		9	9	9	1.00	6
1340	Chair Leg Extended Stretch		9	9	9	1.00	6
1341	Suspended Leg Curl		9	9	9	1.00	5
1342	Box Skip		9	9	9	1.00	3
1343	Power Stairs		9	9	9	1.00	7
1344	Seated Hamstring and Calf Stretch		9	9	9	1.00	6
1345	Hamstring slide	The hamstring slide is a bodyweight exercise targeting the hamstrings. Lying supine on a smooth surface, bend your knees to pull both heels toward you. The sliding action requires a pad, cloth, or furniture sliders under the heels. These are considered more difficult than exercise ball hamstring curls and are a great primer movement before heavy squats or deadlifts, or as an accessory movement later in a lower-body workout.	9	9	9	1.00	5
1346	Seated Band Hamstring Curl		9	9	9	2.00	5
1347	Lying cable leg curl	The lying cable leg curl is a classic machine exercise for building greater muscle size and strength in the hamstrings. Its easy to learn, easy to master, and poses little in the way of injury risk. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of lower-body training.	9	9	9	2.00	5
1348	Standing cable leg curl	The standing cable leg curl is an isolation exercise for the hamstrings. It is often used as a variation of leg curl machines and for working each side independently. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of lower-body training.	9	9	9	2.00	5
1349	Lying Leg Curls	The lying leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It is similar to the seated leg curl, but the open hip angle in the lying leg curl may incorporate more glute and calf activation. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	1.00	5
1350	Glute Ham Raise	The glute ham raise is an exercise targeting the glutes and hamstrings on a GHD.	9	9	9	2.00	4
1351	Reverse Hyperextension		9	9	9	1.00	5
1352	Seated Leg Curl	The leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It comes in seated and lying varieties, but the seated leg curl machine is more common in commercial gyms. Leg curl variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1353	Standing Leg Curl		9	9	9	1.00	5
1354	Smith machine stiff-legged deadlift	The Smith machine stiff-legged deadlift is a machine-based exercise targeting the muscles of the hamstrings, glutes, and upper back. The Smith machine mimics a barbell but provides more stability. This movement can be programmed like a traditional stiff-legged or Romanian deadlift, in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a full-body or lower-body workout.	9	9	9	1.00	5
1355	Lying Leg Curl - Gethin Variation	The lying leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It is similar to the seated leg curl, but the open hip angle in the lying leg curl may incorporate more glute and calf activation. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1356	Paul Carter Leg Extension	The leg extension is an isolation exercise for the quads.	9	9	9	2.00	5
1357	Lying leg curl	The lying leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It is similar to the seated leg curl, but the open hip angle in the lying leg curl may incorporate more glute and calf activation. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1358	Seated Hamstring Curl - Gethin Variation	The leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It comes in seated and lying varieties, but the seated leg curl machine is more common in commercial gyms. Leg curl variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1359	Single-leg lying leg curl	The single-leg lying leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It is similar to the seated leg curl, but the open hip angle in the lying leg curl may incorporate more glute and calf activation. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training. Performing it one leg a time allows you to focus on the mind-muscle connection of each leg and address muscle imbalances.	9	9	9	2.00	5
1360	Leg curl	The leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It comes in seated and lying varieties, but the seated leg curl machine is more common in commercial gyms. Leg curl variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1361	Leg Extension - Gethin Variation	The leg extension is an isolation exercise for the quads.	9	9	9	2.00	5
1362	Single-leg leg extension-	The single-leg leg extension is a popular machine-based exercise for the legs, particularly the quadriceps. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training. Performing it one leg a time allows you to focus on the mind-muscle connection of each leg and address muscle imbalances.	9	9	9	2.00	5
1363	Lying Hamstring Curls - Gethin Variation	The lying leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It is similar to the seated leg curl, but the open hip angle in the lying leg curl may incorporate more glute and calf activation. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1364	AM Seated Hamstring Curl	The leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It comes in seated and lying varieties, but the seated leg curl machine is more common in commercial gyms. Leg curl variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1365	UP Hamstring Curl	The lying leg curl is a popular machine-based exercise for the legs, particularly the hamstrings. It is similar to the seated leg curl, but the open hip angle in the lying leg curl may incorporate more glute and calf activation. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	9	9	9	2.00	5
1366	30 Legs Leg Extension		9	9	9	2.00	5
1367	30 Legs Seated Leg Curl		9	9	9	2.00	5
1368	Natural Glute Ham Raise	The glute ham raise is an exercise targeting the glutes and hamstrings on a GHD.	9	9	9	1.00	5
1369	Standing leg swing	The standing leg swing is a dynamic stretching exercise that involves moving one leg up in front of you, as if to punt an imaginary football. This is a classic move for warming up the body and stretching the hamstrings.	9	9	9	1.00	6
1370	Linear Acceleration Wall Drill		9	9	9	2.00	3
1371	Knee Tuck Jump	The tuck jump is a vertical jump, an explosive lower-body exercise that is a common way to measure explosive hip and lower-body strength in athletes. The more explosive you are, the higher youll be able to jump.	9	9	9	2.00	3
1372	Leg-Up Hamstring Stretch		9	9	9	2.00	6
1373	Inchworm	The inchworm is a popular bodyweight exercise that involves â€œwalkingâ€ the hands on the floor from a bent-over toe-touch position into a straight-arm plank. It is usually performed as part of a dynamic warm-up to help raise core body temperature and â€œlimber upâ€ the body from head to toe.	9	9	9	1.00	6
1374	Moving Claw Series		9	9	9	2.00	3
1375	Lying groin stretch with band	The lying groin stretch with band is a simple way to stretch a chronically tight muscle group of the lower body. It is common in stretching and yoga classes but can also be performed individually as part of a warm-up, paired with movements in a workout, or as part of a cool-down or recovery strategy.	9	9	9	2.00	6
1376	90/90 Hamstring		9	9	9	1.00	6
1377	Worlds greatest stretch	The worlds greatest stretch is a popular movement that earned its name because it targets multiple parts of the body, including the hips, shoulders, and thoracic spine, in a single sequence. This makes it a great dynamic warm-up, post-workout stretch, or mobility work you can do anytime.	9	9	9	2.00	6
1378	The Straddle		9	9	9	2.00	6
1379	Prone Manual Hamstring		9	9	9	2.00	5
1380	Knee To Chest		9	9	9	1.00	6
1381	Hurdle Hops		9	9	9	2.00	3
1382	Hip Stretch With Twist		9	9	9	1.00	6
1383	Linear 3-Part Start Technique		9	9	9	2.00	3
1384	Alternating Leg Swing		9	9	9	1.00	6
1385	Single-leg balance and reach	The single-leg balance and reach is an exercise that focuses on lower-body strength and stability.	9	9	9	1.00	6
1386	High Kick		9	9	9	1.00	6
1387	Boss Everline 10-Yard Sprints		9	9	9	2.00	5
1388	Standing hamstring stretch	The standing hamstring stretch is an exercise that stretches the hamstrings, the muscles that cover the back of the thighs. It involves looping a band around one foot and then pulling it, which produces an intense stretch in the hamstrings. It can be performed prior to training the lower body or playing sports, or as a restorative stretch anytime.	9	9	9	2.00	6
1389	Reverse lunge	The reverse lunge is a lower-body exercise targeting the quads, glutes, and hamstrings. The reverse lunge places more emphasis on the glutes than other lunge variations.	9	9	9	2.00	6
1398	HM Ninja Crawl		9	9	9	2.00	5
1399	HM Pigeon Stretch		9	9	9	2.00	5
1400	Single-Leg Deadlift Walk		9	9	9	2.00	5
1401	Total Fitness Hamstring Slide	The hamstring slide is a bodyweight exercise targeting the hamstrings. Lying supine on a smooth surface, you bend your knees to pull both heels toward you. The sliding action requires a pad, cloth, or furniture sliders under the heel. These are considered more difficult than exercise ball hamstring curls, and are a great primer movement before heavy squats or deadlifts, or as an accessory movement later in a lower-body workout.	9	9	9	2.00	5
1402	30 Legs Walking Lunge		9	9	9	2.00	5
1403	Glute ham raise-	The glute ham raise is an exercise targeting the glutes and hamstrings on a GHD, or glute ham developer bench. The unassisted version of the movement requires serious hamstring strength, so it is more common to see versions that use a band or PVC pipe for assistance. It is commonly performed as an accessory movement for heavy barbell lifts. While a single rep may be a struggle at first, with time, strong athletes can build up to doing them for 8-12 reps per set.	9	9	9	1.00	5
1404	Lying hamstring stretch with band	The lying hamstring stretch with band is a simple way to stretch a chronically tight muscle group of the lower body. It is common in stretching and yoga classes but can also be performed individually as part of a warm-up, paired with movements in a workout, or as part of a cool-down or recovery strategy.	9	9	9	1.00	6
1405	Upper Back-Leg Grab		9	9	9	1.00	6
1406	Seated Hamstring		9	9	9	1.00	6
1407	Alternating lunge jump	The alternating lunge jump is an explosive bodyweight exercise that targets the lower-body muscles, including the quads, glutes, and hamstrings. It can be performed for time or reps in power training, and is also effective in any fat-loss or athleticism-focused workout.	9	9	9	1.00	6
1408	Runners Stretch		9	9	9	2.00	6
1409	Exercise ball leg curl	The exercise ball leg curl is an exercise targeting the hamstrings. In particular, it targets the knee flexion function of the hamstrings, as opposed to deadlift variations, which target the other hamstring function, hip flexion. Many lifters opt for this exercise when they dont have access to a lying leg curl machine, but it is worth considering even if you already do machine curls.	9	9	9	2.00	5
1410	Ball Hamstring Hat Trick	The exercise ball leg curl is an exercise targeting the hamstrings. In particular, it targets the knee flexion function of the hamstrings, as opposed to deadlift variations, which target the other hamstring function, hip flexion. Many lifters opt for this exercise when they donâ€™t have access to a lying leg curl machine, but it is worth considering even if you already do machine curls.	9	9	9	2.00	5
1411	Band-assisted pull-up	The band-assisted pull-up is a variation of the pull-up exercise in which the reps are performed with an elastic band looped around the feet or knees. This reduces weight and resistance at the bottom of the rep, while increasing it toward the top. Like other pull-up variations, it builds strength and muscle in the upper back, biceps, and core, and is often used as a way to help people boost their pull-up numbers or perform their first rep.	10	10	10	2.00	5
1412	Assisted Chin-Up	The reverse-grip chin-up is a variation of the pull-up exercise in which the reps are performed with the palms facing toward the body, in an underhand position, with a band looped around the feet or knees. This reduces weight and resistance at the bottom of the rep, while increasing it toward the top. Like other pull-up variations, it builds strength and muscle in the upper back, biceps, and core, but it utilizes the biceps slightly more than overhand band-assisted pull-ups.	10	10	10	1.00	5
1413	UN Band Assisted Pull-up Pronated		10	10	10	2.00	5
1414	UN Band Assisted Pull-up Neutral		10	10	10	2.00	5
1415	UN Band Assisted Pull-up Supinated		10	10	10	2.00	5
1416	FYR2 Monster Band Face-Pull Hold		10	10	10	2.00	5
1417	Single-arm band low row	The single-arm band low row is a single-arm row variation utilizing a band for resistance that is anchored low. It targets the muscles of the middle back, like the lats (latissimus dorsi) and rhomboids, but also the core. It is usually performed for moderate to high reps, at least 8-15 reps per set, in the later stages of a back or upper-body workout.	10	10	10	2.00	5
1418	Latissimus dorsi SMR	Latissimus dorsi self-myofascial release (SMR) is a self-administered soft-tissue treatment for the upper body, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the lat muscles of the mid back, some people find they can cause this often painful and tight area to relax or "release." Latissimus dorsi SMR is often accompanied by SMR on the pectorals or rhomboids, or by stretches that target the lats.	10	10	10	2.00	6
1419	Bent-arm barbell pull-over	The bent-arm barbell pull-over was a staple exercise of the "Golden Era" of bodybuilding and a favorite of Arnold Schwarzenegger himself. Done properly, the exercise targets the pecs, lats, and serratus anterior muscles. Old-school bodybuilders would perform them with light weights for sets of 20 between sets of heavy 20-rep squats, but pull-overs are more popular today in moderate rep ranges, such as 8-12 reps per set, as part of an upper-body workout.	10	10	10	2.00	5
1420	Barbell pull-over to press	The barbell pull-over to press is a complex that combines two popular exercises into one sequence that works much of the upper body, particularly the chest, triceps, and serratus anterior muscles. It is commonly performed with an EZ-bar, but can also be performed with a straight bar or neutral-grip bar. Because the pull-over will determine the amount of weight you can use, this movement is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body portion of a workout.	10	10	10	1.00	5
1421	Single-arm barbell bent-over row	The single-arm barbell bent-over row is a barbell exercise focused on the muscles of the middle back, such as the lats (latissimus dorsi) and rhomboids. It also targets the biceps and grip. If the loose end of the barbell moves around, it can be secured by placing it in the corner of a room.	10	10	10	2.00	5
1422	Reverse Barbell Row		10	10	10	2.00	5
1423	Side kick-through to kettlebell high pull	The side kick-through to kettlebell high pull is a combination of a popular bodyweight exercise and an explosive kettlebell movement. Between them, the pairing targets the traps, shoulders, core, hips, hamstrings, and glutes. This combination can be performed for time or for reps, often as circuit-style training for conditioning or fat loss.	10	10	10	2.00	5
1424	FYR2 Alternating Kettlebell Snatch		10	10	10	2.00	5
1425	FYR2 Alternating Kettlebell Swing		10	10	10	2.00	5
1426	FYR2 American Kettlebell Swing		10	10	10	2.00	5
1427	FYR2 Double-Kettlebell Standing Clean		10	10	10	2.00	5
1428	FYR2 Kettlebell Swing High Pull		10	10	10	2.00	5
1429	FYR2 Kettlebell Swing-Clean-Press Combo		10	10	10	2.00	5
1430	FYR2 Kettlebell Swing-Clean-Press-Row Combo		10	10	10	2.00	5
1431	FYR2 Single-Arm Kettlebell Clean		10	10	10	2.00	5
1432	FYR2 Single-Arm Kettlebell Swing		10	10	10	2.00	5
1433	PJR pull-over-	The PJR pull-over is a triceps-focused version of the pull-over exercise, usually performed on either a flat or slightly inclined bench. The low position of the movement stretches the tricepsâ€”particularly the long head of the muscleâ€”while the top position is a triceps press that contracts all three heads. It can be done in any type of strength or muscle-focused workout, in traditional muscle-building rep ranges, such as 8-12 reps, or for higher reps.	10	10	10	2.00	5
1434	Dumbbell seal row	The dumbbell seal row is a weighted exercise targeting the muscles of the middle back, including the lats (latissimus dorsi) and rhomboids. It can be performed on a special elevated bench, on a bench placed on top of boxes or benches, or on a bench with a slight incline. The higher the bench, the greater the range of motion and stretch at the bottom of the movement. It is usually performed as an assistance movement for back strength and muscle growth, in rep ranges of 8-12 reps per set or higher.	10	10	10	2.00	5
1435	Incline Dumbbell Row - Gethin Variation	The incline dumbbell row is an upper body isolation exercise targeting the lower lats and upper back muscles.	10	10	10	2.00	5
1436	FYR Bent-Over Dumbbell Row	The dumbbell bent-over row is a popular exercise to develop and strengthen the muscles of the upper and middle back, like the latissimus (lat), lower trapezius, and rear deltoids. It can work equally well in strength, muscle-building, or circuit-style fat-loss workouts.	10	10	10	2.00	5
1437	Straight-Arm Dumbbell Pull-Over - Gethin Variation	The straight-arm dumbbell pull-overpull-over was a staple exercise of the Golden Era of bodybuilding and a favorite of Arnold Schwarzenegger himself. Done properly, the exercise hits the bottom of the pecs, the lats, the abs, and the triceps.	10	10	10	2.00	5
1438	Bent-Over Dumbbell Row - Gethin Variation	The dumbbell bent-over row is a popular exercise to develop and strengthen the muscles of the upper and middle back, like the latissimus (lat), lower trapezius, and rear deltoids. It can work equally well in strength, muscle-building, or circuit-style fat-loss workouts.	10	10	10	2.00	5
1439	Bent-over dumbbell rear delt fly	The bent-over dumbbell rear delt fly is a popular upper-body exercise that targets the muscles on the back of the shoulder joint, specifically the rear head of the deltoid. Since pressing movements build the front and (to a lesser degree) side deltoid heads, this move is often done to promote balanced shoulder development. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a shoulder or upper-body workout.	10	10	10	2.00	5
1440	Band Resisted Dumbbell Row		10	10	10	2.00	5
1441	Holman Right Arm Weighted Half Jack		10	10	10	2.00	5
1442	Holman Left Arm Weighted Half Jack		10	10	10	2.00	5
1443	Holman Renegade Row		10	10	10	2.00	5
1444	Holman Renegade Row with Opposite Foot Step-Out		10	10	10	2.00	5
1445	Holman Renegade Row to Weighted Burpee		10	10	10	2.00	5
1446	Holman Weighted Double-Arm Cross Punch		10	10	10	2.00	5
1447	Holman Standing Flat Back Row		10	10	10	2.00	5
1448	Total Fitness Dumbbell Isometric Row Hold	The dumbbell bent-over row is a popular exercise to develop and strengthen the muscles of the upper and middle back, like the latissimus (lat), lower trapezius, and rear deltoids. It can work equally well in strength, muscle-building, or circuit-style fat-loss workouts.	10	10	10	2.00	5
1449	Dumbbell renegade row	The dumbbell renegade row combines rowing and core training into a single difficult movement. Its popular in time-efficient strength and muscle-building workouts, as well as in circuit-style training.	10	10	10	2.00	5
1450	MetaBurn Bent-Over Row to Rear-Delt Raise		10	10	10	2.00	5
1451	FYR2 Bent-Over Reverse Fly		10	10	10	2.00	5
1452	Weighted pull-up	The weighted pull-up is a more advanced variation of the pull-up exercise in which the lifter adds extra weight to their body. Options for adding weight include a dip belt, weighted vest, chains, a dumbbell placed between the feet or legs, or looping a kettlebell over the foot. Like other pull-up variations, the weighted pull-up builds strength and muscle in the upper back, biceps, and core.	10	10	10	2.00	5
1453	Rocky Pull-Ups/Pulldowns		10	10	10	1.00	5
1454	Gironda Sternum Chins		10	10	10	1.00	5
1455	Floor rope climb	The floor rope climb is an exercise that involves performing partial rope climbs in a prone position with the feet on the floor. It can help prepare someone for full rope climbs, but also trains the muscles of the back, biceps, and grip. It can be done for time or reps.	10	10	10	1.00	5
1456	Overhead Lat		10	10	10	1.00	6
1457	Around-the-world pull-up	The around-the-world pull-up is a more advanced version of the classic pull-up. It focuses stress more directly on the individual arms or sides of the back, while also boosting the time under tension at the top of each rep. It can be used as a progression toward a one-arm pull-up, or simply as a way to increase the challenge and variety of your pull-up training.	10	10	10	1.00	5
1458	L-sit chin-up	The L-sit chin-up is an exercise targeting the back, biceps, core, and overall upper-body strength. It is considered significantly more difficult than standard chin-ups, and as such, is often performed for relatively low reps, such as 5-8 reps per set or less, with a focus on strength and form.	10	10	10	1.00	5
1459	Back Flyes - Gethin Variation	The incline dumbbell reverse fly is an upper-body exercise targeting the posterior or rear deltoids, as well as the postural muscles of the upper back. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	10	10	10	2.00	5
1483	Rope Lat Pull-down - Gethin Variation	The close-grip pull-down is a variation on the lat pull-down, acable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1540	Deadlift with Bands		11	11	11	1.00	4
1541	Deadlift with Chains		11	11	11	1.00	4
1460	Incline straight-arm pull-over	The incline straight-arm pull-over is an upper-body exercise targeting the chest and lats (latissimus dorsi). Performing it on an incline bench emphasizes the stretch on the chest in particular. If this movement causes pain in the front of the shoulders, perform it with a more limited range of motion or try pull-overs using a high cable stack instead. Pull-over variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of chest or back-focused upper-body training.	10	10	10	2.00	5
1461	Machine high row	The machine high row is a machine-based exercise targeting the back muscles, including the lats, rhomboids, and middle and lower traps. It approximates the motion of a free-weight row, but uses a selectorized weight-stack or plate-loaded machine. Many such machines also allow you to choose between different grips and grip widths. Machine rows are often done for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or back-focused portion of a workout.	10	10	10	2.00	5
1462	AM T-Bar Row		10	10	10	2.00	5
1463	Assisted Single-Arm Pull-Up		10	10	10	3.00	5
1464	Assisted Single-Arm Chin-Up		10	10	10	3.00	5
1465	Holman Renegade Punch-Under		10	10	10	2.00	5
1466	Holman Renegade Row to Split Jump		10	10	10	2.00	5
1467	Holman Dirty Dog to Renegade Row		10	10	10	2.00	5
1468	Holman Renegade Row to Side Punch to Forward Punch		10	10	10	2.00	5
1469	Standing dumbbell knee crunch	The standing dumbbell knee crunch is a great way to train the abs while standing up. Additionally, the deltoids are worked because the lifter holds a pair of dumbbells overhead throughout.	10	10	10	2.00	5
1470	Close-grip pull-down	The close-grip pull-down is a variation on the lat pull-down that is performed with an overhand grip and the hands slightly closer than shoulder-width apart. This increases the range of motion beyond wider grips, and may increase the time under tension in each rep. This variation is usually performed for moderate to high reps as part of a back or upper-body workout.	10	10	10	2.00	5
1471	Shotgun row	The shotgun row is a single-arm row variation utilizing a cable stack in a staggered stance. It targets the muscles of the middle back, like the lats (latissimus dorsi) and rhomboids, but also the core. It is usually performed for moderate to high-reps, at least 8-15 reps per set, in the later stages of a back or upper-body workout.	10	10	10	2.00	5
1472	Close-Grip Front Lat Pulldown	The close-grip pull-down is a variation on the lat pull-down, acable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1473	Straight-arm rope pull-down	The straight-arm rope pull-down is a variation of the straight-arm lat pull-down performed using a cable stack machine and a rope grip. It can either be performed in an athletic upright stance, or slightly bent over. It both stretches and contracts the muscles of the lats (latissimus dorsi) as well as providing additional activation to the other upper back muscles and the core. Because the triceps are also isometrically involved in the movement, it is usually performed for higher reps, such as 8-15 reps or more.	10	10	10	2.00	5
1474	Lat pull-down	The lat pull-down is a cable-based exercise thats ubiquitous in gyms around the world. This back builder is easy to learn and highly effective at building back size and strength. Its usually trained in moderate to high reps, such as 8-12 reps per set. If grip strength is a limitation, you can wear wrist straps.	10	10	10	2.00	5
1475	Straight-Arm Pulldown	The straight-arm bar pull-down is a variation of the straight-arm lat pull-down performed using a cable stack machine. It can either be performed in an athletic upright stance, or slightly bent-over. It both stretches and contracts the muscles of the lats (latissimus dorsi) as well as providing additional activation to the other upper back muscles and the core. Because the triceps are also isometrically involved in the movement, it is usually performed for higher reps, like 8-15 reps or above.	10	10	10	2.00	5
1476	Single-arm kneeling lat pull-down	The single-arm kneeling lat pull-down is a variation of the lat pull-down exercise performed one arm at a time, with the knees on the ground, rather than sitting on a bench or machine. It has all of the same benefits of a lat pull-down performed on a bench or machine, in addition to providing further activation to the core and lower body.	10	10	10	1.00	5
1477	Elevated Cable Rows	The cable seated row is a popular exercise to train the muscles of the upper back, including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids, using a cable stack. It also targets the biceps to a lesser degree. The cable row can work well in a variety of rep-ranges, but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	10	10	10	1.00	5
1478	Full Range-Of-Motion Lat Pulldown		10	10	10	1.00	5
1479	Kneeling lat pull-down	The kneeling lat pull-down is a variation of the lat pull-down exercise performed with the knees on the ground rather than sitting on a bench or machine. It has all of the same benefits of a lat pull-down performed on a bench or machine, in addition to providing further activation to the core and lower body.	10	10	10	2.00	5
1480	Behind-the-neck pull-down	The behind-the-neck pull-down is a cable exercise intended to target the muscles of the upper and middle back. If you have the requisite shoulder mobility, it can help you target the upper back muscles, including the trapezius and rhomboids, as well as the lats (latissimus dorsi). It is popular among elite bodybuilders and physique athletes, but some coaches consider it unsafe to the shoulder joint, particularly for people with existing shoulder problems.	10	10	10	2.00	5
1481	Straight-arm cable pull-over	The straight-arm cable pull-over is an exercise that focuses on the muscles of the lats (latissimus dorsi) and chest using a cable stack and a flat bench. It is most commonly used for higher reps, such as 10-15 or more, in muscle-building workouts. It is also an effective substitute for dumbbell pull-overs or a pull-over machine, if you dont have access to them or they aggravate your shoulders.	10	10	10	2.00	5
1482	Cable Straight-Arm Pulldown - Gethin Variation	The straight-arm bar pull-down is a variation of the straight-arm lat pull-down performed using a cable stack machine. It can either be performed in an athletic upright stance, or slightly bent-over. It both stretches and contracts the muscles of the lats (latissimus dorsi) as well as providing additional activation to the other upper back muscles and the core. Because the triceps are also isometrically involved in the movement, it is usually performed for higher reps, like 8-15 reps or above.	10	10	10	2.00	5
1508	Muscle Up		10	10	10	2.00	5
1542	Rack Pull with Bands		11	11	11	1.00	4
1484	Straight-Arm Pull-Down - Gethin Variation	The straight-arm bar pull-down is a variation of the straight-arm lat pull-down performed using a cable stack machine. It can either be performed in an athletic upright stance, or slightly bent-over. It both stretches and contracts the muscles of the lats (latissimus dorsi) as well as providing additional activation to the other upper back muscles and the core. Because the triceps are also isometrically involved in the movement, it is usually performed for higher reps, like 8-15 reps or above.	10	10	10	2.00	5
1485	High-cable standing row	The high-cable standing row is an exercise targeting the lats. The high position allows for more engagement of the upper back, as well, specifically the rhomboids and teres major.	10	10	10	2.00	5
1486	Lat Pull-down - Gethin Variation	The lat pull-down is a cable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1487	Wide-Grip Lat Pull-Down - Gethin Variation	The lat pull-down is a cable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1488	Behind-The-Neck Pull-Down - Gethin Variation	The behind-the-neck pull-down is a cable exercise intended to target the muscles of the upper and middle back. If you have the requisite shoulder mobility, it can help you targets the upper back muscles, including the trapezius and rhomboids, as well as the lats (latissimus dorsi). It is popular among elite bodybuilders and physique athletes, but some coaches consider it unsafe to the shoulder joint, in particular to people with existing shoulder problems.	10	10	10	2.00	5
1489	Single-Arm Cable Row - Gethin Variation	The single-arm cable seated row is a version of the cable row movement that train the muscles of the upper back one side at a time. It targets a wide range of muscles including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids, as well as the biceps. The single-arm row can work well in a variety of rep-ranges, but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	10	10	10	2.00	5
1490	Scapular Rows		10	10	10	2.00	5
1491	Standing V-Grip Cable Rows		10	10	10	2.00	5
1492	AM Close-Grip Pull-Down	The close-grip pull-down is a variation on the lat pull-down, acable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1493	AM Wide-Grip Pull-Down	The lat pull-down is a cable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1494	UP Lat Pull-Down	The lat pull-down is a cable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1495	Reverse-grip lat pull-down	The reverse-grip lat pull-down is variation on the lat pull-down that targets the lower lats more than an overhand grip. Because the hands are relatively close together, it also increases the range of motion beyond wider-grip pull-down variations. It can be performed for low reps, such as 5-6 per set, for back strength, or for higher reps for size.	10	10	10	2.00	5
1496	Machine seated row	The machine seated row is a popular exercise targeting the back muscles, particularly the lats (latissimus dorsi), rhomboids, and middle and lower trapezius. There is a wide variety of seated row machines, but most of them approximate the motion of a free-weight row, but in an upright, forward-facing position. Machine row variations are often performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or back-focused portion of a workout.	10	10	10	1.00	5
1497	Machine-assisted pull-up	The machine-assisted pull-up takes a classic back-building exercise and adds assistance to make the movement easier than the bodyweight version. The amount of assistance can easily be changed by moving the pin in the stack. While some people use this variation as a substitute for pull-ups or as an assistance exercise for pull-ups, it is also effective as a way to perform the pull-up motion in traditional muscle-building ranges. This variation is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or back-focused training.	10	10	10	1.00	5
1498	Single-arm pull-down	The single-arm pull-down is a variation on the lat pull-down that is performed one arm at a time, usually with a D-shaped handle and a cable stack. Many lifters find they can feel the lat (latissimus dorsi) muscles working better with single-arm variations.	10	10	10	2.00	5
1499	Chest-Supported Smith Machine Row - Gethin Variation		10	10	10	2.00	5
1500	Single-arm machine high row	The single-arm machine high row is a machine-based exercise targeting the back muscles, including the lats, rhomboids, and middle and lower traps. It approximates the motion of a free-weight row, but uses a selectorized weight-stack or plate-loaded machine. Many such machines also allow you to choose between different grips and grip widths. Machine-based rows are often done for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or back-focused portion of a workout.	10	10	10	2.00	5
1501	Machine Pull-Over - Gethin Variation		10	10	10	2.00	5
1502	Seated Machine Row - Gethin Variation	The machine seated row is an exercise targeting the back muscles, emphasizing the mid- to upper-back.	10	10	10	2.00	5
1503	Wide-Grip Machine Row		10	10	10	2.00	5
1504	King Maker Lat Pull-Down	The lat pull-down is a cable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	10	10	10	2.00	5
1505	Robertson Half-Kneeling Landmine Press		10	10	10	2.00	5
1506	Pullups	The pull-up is a multi-joint bodyweight exercise that builds strength and muscle in the upper back, biceps, and core. It is often used as a measurement tool in military or tactical fitness tests, and is an excellent gauge of â€œrelative strengthâ€ which is strength in relation to bodyweight.	10	10	10	2.00	5
1507	Pull-up	The pull-up is a multijoint bodyweight exercise that builds strength and muscle in the upper back, biceps, and core. It is often used as a measurement tool in military or tactical fitness tests, and is an excellent gauge of "relative strength" which is strength in relation to body weight.	10	10	10	1.00	5
1509	Rope climb	The rope climb is an exercise that is used commonly in CrossFit workouts and as a test of upper-body strength. It was even contested at the Olympics in the early 20th century. It targets a wide range of upper-body musculature, including the hands and forearms, shoulders, biceps, lats (latissimus dorsi), and core.	10	10	10	2.00	5
1510	Wide-Grip Rear Pull-Up		10	10	10	1.00	5
1511	Side To Side Chins		10	10	10	2.00	5
1512	Neutral-grip pull-up	The neutral-grip pull-up is a multijoint bodyweight exercise in which the reps are performed with the palms facing one another. Like other pull-up variations, it builds strength and muscle in the upper back, biceps, and core. It can be used as a more shoulder-friendly alternative to straight-bar pull-ups, or to help perform more reps than you can perform overhand.	10	10	10	2.00	5
1513	Kipping Muscle Up		10	10	10	2.00	5
1514	One Arm Against Wall		10	10	10	2.00	6
1515	One Handed Hang	The single-arm hang is a static exercise that involves hanging from a bar by one hand. It is an advanced hanging exercise that demands above-average shoulder stability and grip strength, and may not be appropriate for some people. However, if someone is strong and stable enough to perform it, the movement can help build those same qualities.	10	10	10	2.00	6
1516	Standing side bend stretch	The standing side bend stretch is a stretching exercise targeting the obliques, the muscles that run along the side of the core. It is a common inclusion in dynamic warm-ups for the upper body, but can also be performed to help "limber up" for lifting or athletics anytime.	10	10	10	2.00	6
1517	Burpee to pull-up	The burpee to pull-up is a variation of the bodyweight burpee in which the jump at the top of each rep leads into a jumping pull-up. It is popular in circuit-style and metcon workouts.	10	10	10	2.00	3
1518	Negative pull-up	The negative pull-up is a multijoint bodyweight exercise that focuses on just one half of the traditional pull-up: the lowering, eccentric, or "negative" portion. Because muscles are stronger eccentrically than they are concentrically, many people can perform negatives even if they cant perform full pull-ups. For this reason, it is a popular training tool to help people earn their first pull-up rep, or as a back-off exercise after doing full pull-ups.	10	10	10	2.00	5
1519	Chin-Up	The a chin-up is a variation of the pull-up exercise in which the reps are performed with the palms facing toward the body, in an underhand position, with a grip that is narrower than shoulder-width. Like other pull-up variations, it builds strength and muscle in the upper back, biceps, and core, but it utilizes the biceps slightly more than overhand pull-ups. It can be used as a more shoulder-friendly alternative to straight-bar pull-ups, or to help perform more reps than you can perform overhand.	10	10	10	2.00	5
1520	HM Superman Lat Pull		10	10	10	2.00	5
1521	AM Pull-Up	The pull-up is a multi-joint bodyweight exercise that builds strength and muscle in the upper back, biceps, and core. It is often used as a measurement tool in military or tactical fitness tests, and is an excellent gauge of â€œrelative strengthâ€ which is strength in relation to bodyweight.	10	10	10	2.00	5
1522	UP Chin-Up		10	10	10	2.00	5
1523	Holman Alternating Forward and Side Punch		10	10	10	2.00	5
1524	Jump to pull-up	The jump to pull-up is a bodyweight exercise that targets the muscles of the back, biceps, and, to a lesser degree, legs. It involves jumping up to a pull-up bar between reps. Similar to a push-press, the legs help power through the most difficult portion of the pull-up, allowing you to perform more reps. Jumping pull-ups are often performed for moderate to high reps, such as 8-12 reps per set or more, as an accessory to other pulling or pull-up training, or as a full-body movement in a circuit or metcon.	10	10	10	2.00	5
1525	Bent-over scapular slide	The bent-over scapular slide is an upper-body exercise that helps with scapular and shoulder mobility. It is commonly performed for time or reps as part of a dynamic warm-up for the upper body.	10	10	10	2.00	5
1526	Iron cross stretch	The iron cross stretch is a bodyweight stretch that focuses on hip and thoracic spine mobility.	10	10	10	2.00	5
1527	Total Fitness Standing Lat Stretch		10	10	10	2.00	5
1528	King Maker Pull-Up	The pull-up is a multi-joint bodyweight exercise that builds strength and muscle in the upper back, biceps, and core. It is often used as a measurement tool in military or tactical fitness tests, and is an excellent gauge of â€œrelative strengthâ€ which is strength in relation to bodyweight.	10	10	10	2.00	5
1529	Medicine ball slam	The medicine ball slam is an explosive exercise for developing power, strength, and speed. Muscles worked include the abdominals, legs, triceps, shoulders, and lats. The slams are usually done in rapid succession to complete one set. It can also be a component of a power or athleticism-focused circuit workout.	10	10	10	2.00	3
1530	Catch and Overhead Throw		10	10	10	1.00	3
1531	FYR2 Bent-Over Medicine Ball Slam		10	10	10	2.00	5
1532	Dynamic Back Stretch		10	10	10	1.00	6
1533	Chair Lower Back Stretch		10	10	10	1.00	6
1534	Side-Lying Floor Stretch		10	10	10	1.00	6
1535	Band good morning-	The band good morning is an exercise targeting the hamstrings and glutes. It is often performed in powerlifting-style training for high reps, or in the place of barbell good mornings.	11	11	11	2.00	5
1536	FYR2 Monster Banded Good Morning		11	11	11	2.00	5
1537	Band deadlift	The band deadlift is a lower-body exercise that mainly targets the hamstrings while also benefiting the glutes and lats using a proper hip-hinging motion.	11	11	11	2.00	5
1538	Lower back SMR	Lower back self-myofascial release (SMR) is a self-administered soft-tissue treatment, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the quadratus lumborum or spinal erector (erector spinae) muscles of the lower back, some people find they can cause this often painful and tight area to relax or "release." Lower back SMR is often accompanied by SMR on the glutes or piriformis muscles, or by stretches that target the piriformis or hips. However, some people find that SMR on the lower back can aggravate existing pain or injury, so be cautious when performing it.	11	11	11	2.00	6
1539	Barbell deficit deadlift	The barbell deficit deadlift is a compound exercise targeting the posterior chain. It is commonly utilized in powerlifting training to build pulling strength off the floor, but is also an effective muscle-building movement for the glutes and hamstrings. It is usually performed with lighter weight, and perhaps for higher reps, than traditional deadlifts. If these make your back sore, decrease the deficit and/or wear a weightlifting belt.	11	11	11	1.00	4
1543	Rack pull	The rack pull is a variation of the deadlift performed from an elevated height, either using boxes, safety pins, or the safeties in a squat rack. It targets all the same muscles as the deadlift, including the glutes, hamstrings, upper back, lower back, and grip. It can be used to strengthen deadlift lockout, but also as a deadlift alternative for people who cant deadlift from the floor without pain.	11	11	11	2.00	4
1544	Seated Good Mornings		11	11	11	1.00	4
1545	Stiff Leg Barbell Good Morning		11	11	11	1.00	5
1546	Reverse Band Deadlift		11	11	11	1.00	4
1547	Paul Carter Romanian Deadlift	The barbell stiff-legged deadlift targets the hamstrings, glutes, lower and upper back, as well as the core. It is a popular accessory movement for the deadlift, but also a muscle-building hamstring movement.	11	11	11	2.00	5
1548	TBS Good Morning	The barbell good morning is an exercise that targets glute, hamstring, and lower back development. It is often trained as an accessory movement to the deadlift, but also has value on its own. It is sometimes performed for reps in traditional strength-focused rep ranges such as 5-8 reps per set, but due to the risk posed to the lower back, is rarely treated as a max-effort single-rep lift.	11	11	11	2.00	5
1549	TBS Romanian Deadlift	The barbell stiff-legged deadlift targets the hamstrings, glutes, lower and upper back, as well as the core. It is a popular accessory movement for the deadlift, but also a muscle-building hamstring movement.	11	11	11	2.00	5
1550	Barbell deadlift-	The barbell deadlift is a compound exercise used to develop overall strength and size in the posterior chain. It is a competition lift in the sport of powerlifting, but is also considered a classic benchmark of overall strength. When performed with the hands outside the knees, it is often called a "conventional" deadlift. When the feet are wide and the hands are inside the knees, it is a sumo deadlift.	11	11	11	2.00	5
1551	Deadlift - Gethin Variation	The barbell deadlift is a compound exercise used to develop overall strength and size in the posterior chain. It is a competition lift in the sport of powerlifting, but is also considered a classic benchmark of overall strength. When performed with the hands outside the knees, it is often called a "conventional" deadlift. When the feet are wide and the hands are inside the knees, it is a sumo deadlift.	11	11	11	2.00	5
1552	Barbell good morning	The barbell good morning is an exercise that targets glute, hamstring, and lower back development. It is often trained as an accessory movement to the deadlift, but also has value on its own. It is sometimes performed for reps in traditional strength-focused rep ranges such as 5-8 reps per set, but due to the risk posed to the lower back, is rarely treated as a max-effort single-rep lift.	11	11	11	2.00	5
1553	UP Conventional Deadlift	The barbell deadlift is a compound exercise used to develop overall strength and size in the posterior chain. It is a competition lift in the sport of powerlifting, but is also considered a classic benchmark of overall strength. When performed with the hands outside the knees, it is often called a "conventional" deadlift. When the feet are wide and the hands are inside the knees, it is a sumo deadlift.	11	11	11	2.00	5
1554	30 Day Back Barbell Rack Pull		11	11	11	2.00	5
1555	FYR Sumo Deadlift High Pull	The kettlebell sumo deadlift high pull is a dynamic kettlebell exercise that focuses on the muscles of the posterior chain, including the hamstrings, glutes, traps, rear delts, and upper back. It can be done in lower reps for power or strength, or higher reps for conditioning and fat loss. It can also be a component of a circuit-style kettlebell workout, either for time or reps.	11	11	11	2.00	5
1556	Kettlebell deadlift	The kettlebell deadlift is a foundational movement in kettlebell training. Its often taught as a buildup or regression to the kettlebell swing, as well as to instruct the "hip hinge" motion in a more approachable manner than with a barbell.	11	11	11	2.00	5
1557	HM Kettlebell Swing		11	11	11	2.00	5
1558	KV Romanian Deadlift with Kettlebell		11	11	11	2.00	5
1559	FYR2 Kettlebell Good Morning		11	11	11	2.00	5
1560	FYR2 Kettlebell Romanian Deadlift		11	11	11	2.00	5
1561	FYR2 Kettlebell Staggered-Stance Deadlift		11	11	11	2.00	5
1562	Dumbbell Fix Dumbbell Deadlift		11	11	11	2.00	5
1563	Dumbbell skier	As the name suggests, the dumbbell skier takes the motion of skiing and replaces the poles with dumbbells. The hip and torso motion are similar to a kettlebell swing, as are the muscles it targets, including the hamstrings, glutes, upper back, and grip. However, unlike the traditional kettlebell swing, the arms are outside of the knees. This movement can be performed for time or for reps, but is usually performed for relatively high reps, such as 8-12 sets per rep or more, as part of a fat-loss or athleticism-focused circuit or workout.	11	11	11	2.00	5
1564	TBS Dumbbell Romanian Deadlift	The dumbbell stiff-legged deadlift targets the hamstrings, glutes, low and upper back, as well as the core. The purpose of the stiff-legged, as opposed to Romanian deadlift with slightly bent knees, is to engage the hamstrings and low back to an even greater degree.	11	11	11	2.00	5
1565	Stiff-Legged Dumbbell Deadlift - Gethin Variation	The dumbbell stiff-legged deadlift targets the hamstrings, glutes, low and upper back, as well as the core. The purpose of the stiff-legged, as opposed to Romanian deadlift with slightly bent knees, is to engage the hamstrings and low back to an even greater degree.	11	11	11	2.00	5
1566	UNS Dumbbell Romanian Deadlift		11	11	11	2.00	5
1567	Holman Slow Deadlift		11	11	11	2.00	5
1568	Holman Deadlift to Overhead Press		11	11	11	2.00	5
1569	Holman Staggered-Stance Deadlift		11	11	11	2.00	5
1570	Holman Deadlift to Front Raise		11	11	11	2.00	5
1571	Holman Deadlift to Chest Press		11	11	11	2.00	5
1572	Holman Deadlift to Squat Thrust		11	11	11	2.00	5
1573	Holman Deadlift to Biceps Curl		11	11	11	2.00	5
1574	Dumbbell kickstand deadlift	The dumbbell kickstand deadlift is a movement targeting the muscles of the hamstrings, glutes, and back. The kickstand position can help focus the stretch and contraction on each individual leg, similar to a single-leg Romanian deadlift, while presenting less of a balance challenge. It can be performed in low reps, such as 5-8 reps per set, for strengthening the posterior chain, or for higher reps for muscle growth.	11	11	11	2.00	5
1709	30 Back Plate Hyperextension		12	12	12	2.00	5
2226	HM Sumo Pulse		13	13	13	2.00	5
2227	HM Sumo Squat		13	13	13	2.00	5
2228	HM Alternating Side-Kick		13	13	13	2.00	5
1575	Single-leg stiff-legged deadlift to row	The single-leg stiff-legged deadlift to row takes two popular strength moves and combines them into one full-body blaster. Between the deadlift and the row, youll target the glutes, hamstrings, quads, back, and biceps. Because balance can be a challenge, this movement is usually done with relatively light weights for high reps, such as 8-12 reps per set or more.	11	11	11	2.00	5
1576	FYR2 Dumbbell Deadlift		11	11	11	2.00	5
1577	FYR2 Dumbbell Deadlift to Dumbbell Upright Row		11	11	11	2.00	5
1578	Atlas Stones		11	11	11	2.00	7
1579	Axle Deadlift		11	11	11	1.00	7
1580	Atlas Stone Trainer		11	11	11	1.00	7
1581	Partner Flat-Bench Back Extension	The partner bench back extensionis a clever way to perform this exercise, which works the spinal erectors in the lower back. There are machines and angled apparatus that allow this exercise to performed solo; but, lacking those, all you need is a bench and a workout partner.	11	11	11	1.00	5
1582	Keg Load		11	11	11	1.00	7
1583	Partner bench back extension	The partner bench back extension is a clever way to target the glutes and spinal erector muscles. There are machines and angled benches that allow this exercise to be performed solo, but, lacking those, all you need is a bench and a workout partner. It is usually performed for high reps as a burnout or accessory movement for lower-body training.	11	11	11	1.00	5
1584	Rack Pull - Gethin Variation	The rack pull is a variation of the deadlift performed from an elevated height, either using boxes, safety pins, or the safeties in a squat rack. It targets all the same muscles as the deadlift, including the glutes, hamstrings, upper back, lower back, and grip. It can e used to strengthen deadlift lockout, but also as a deadlift alternative for people who canâ€™t deadlift from the floor without pain.	11	11	11	2.00	5
1585	Hex Bar Deadlift - Gethin Variation	The hex bar deadlift is a variety of deadlift performed in a hexagonal barbell also known as a trap bar. The bar is held with a parallel (palms in) grip outside of the legs. It is biomechanically different from a barbell deadlift in that it lines up with a lifterâ€™s center of gravity, rather than placing it in front of their body. The trap bar deadlift can be trained in traditional strength and muscle-focused rep range, or for higher reps. It activates all of the same muscle groups as conventional or sumo deadlifts, including the glutes, quads, hamstring, lower back, lats, upper back, and grip.	11	11	11	2.00	5
1586	Holman Deadlift		11	11	11	2.00	5
1587	ACFT Low-handle trap bar deadlift	The low-handle trap bar deadlift is a variety of deadlift performed in a hexagonal barbell also known as a trap bar. This specific exercise is part of the new Army Combat Fitness Test or ACFT. The bar is held with a parallel (palms in) grip outside of the legs. It is biomechanically different from a barbell deadlift in that it lines up with a lifters center of gravity, rather than placing the weight in front of their body. It activates all of the same muscle groups as conventional or sumo deadlifts, including the glutes, quads, hamstrings, lower back, lats, upper back, and grip.	11	11	11	2.00	5
1588	Neutral-grip lat pull-down	The neutral-grip lat pull-down is a variation on the lat pull-down that uses a handle with a neutral (palms facing in) grip. This arrangement helps to build lat width and target the upper lats. This movement is usually performed for moderate to high reps, such as 8-12 per set or higher, as part of an upper-body or back-focused workout.	11	11	11	2.00	5
1589	Seated cable deadlift	The seated cable deadlift is a version of the deadlift or hip hinge movement that is performed on a seated cable row machine. Similar to a stiff-legged deadlift or 45-degree back extension, it targets the muscles of the lower back, as well as the glutes and upper back to a lesser degree. It is usually utilized in higher rep ranges, at least 8-12 reps per set, on a back-focused muscle-building day, or as a deadlift accessory lift to strengthen the lower back.	11	11	11	2.00	5
1590	Cable stiff-legged deadlift	The cable stiff-legged deadlift is a lower-body exercise that mainly targets the hamstrings, while also benefiting the glutes using a proper hip-hinging motion.	11	11	11	2.00	5
1591	Single-leg cable stiff-legged deadlift	The single-leg cable stiff-legged deadlift is a lower-body exercise that mainly targets the hamstrings, while also benefiting the glutes using a proper hip-hinging motion. Training one leg at a time allows for working out imbalances.	11	11	11	2.00	5
1592	UNS Banded Dumbbell Romanian Deadlift		11	11	11	2.00	5
1593	Seated Back Extension		11	11	11	1.00	5
1594	Back extension	The back extension is an exercise used to build lower back strength that also targets the hamstrings and glutes. It is often performed on a 45-degree bench with the feet anchored. Unweighted back extensions are often performed for high reps, such as 15-20 reps or more, but the movement can also be performed with added weight in lower rep ranges, such as 8-12 reps per set.	11	11	11	2.00	5
1595	Hyperextensions With No Hyperextension Bench		11	11	11	1.00	5
1596	Superman	The Superman is a bodyweight exercise that consists of isometric holds in an extended spine position. It targets the muscles of the posterior chain, including the muscles of the glutes, spinal erectors, and upper back. It can be performed as part of a dynamic warm-up, or for muscle activation or mobility anytime.	11	11	11	2.00	6
1597	Hug A Ball		11	11	11	2.00	6
1598	Childs pose	Childâ€™s pose is a traditional yoga pose that is also popular in fitness and strength training. It targets mobility of the thoracic spine and control of the vertebral column. It can be performed for time or reps as part of a dynamic warm-up or as a mobility or restorative exercise anytime. It can also work as part of a yoga or bodyweight sequence with other poses.	11	11	11	2.00	6
1599	Pelvic Tilt Into Bridge		11	11	11	2.00	6
1600	Hug Knees To Chest		11	11	11	2.00	6
1601	Pyramid		11	11	11	2.00	6
1602	Partner Superman with alternating high-five	The partner Superman with alternating high-five is an exercise in which both partners perform isometric holds for reps, high-fiving each other in between. It targets the muscles of the posterior chain, including the muscles of the glutes, spinal erectors, and upper back. It can be performed as part of a dynamic warm-up, or as part of a core or back-focused workout or finisher.	11	11	11	1.00	5
1603	Yoga plex	The yoga plex is a stretch that combines elements of the downward facing dog yoga pose with the â€œworldâ€™s greatest stretch.â€ It is most commonly performed as part of a dynamic warm-up, to limber up muscles from head to toe, raise the bodyâ€™s core temperature, and mobilize the hips, upper back, and shoulders.	11	11	11	2.00	6
1604	TBS Back Extension	The back extension is an exercise used to build lower back strength that also targets the hamstrings and glutes. It is often performed on a 45-degree bench with the feet anchored. Unweighted back extensions are often performed for high reps, such as 15-20 reps or more, but the movement can also be performed with added weight in lower rep ranges, such as 8-12 reps per set.	11	11	11	2.00	5
1605	Lower Back Stretch - Yates Variation	The lying cross-over lower back stretch is a simple bodyweight stretch targeting the lower back, hips, and torso. It involves rotating the legs while lying flat on the back. It is commonly included in dynamic warm-ups, but can also be performed as full-body mobility work anytime.	11	11	11	2.00	5
1606	Hyperextension - Gethin Variation	The back extension is an exercise used to build lower back strength that also targets the hamstrings and glutes. It is often performed on a 45-degree bench with the feet anchored. Unweighted back extensions are often performed for high reps, such as 15-20 reps or more, but the movement can also be performed with added weight in lower rep ranges, such as 8-12 reps per set.	11	11	11	2.00	5
1607	Back Extension - Gethin Variation	The back extension is an exercise used to build lower back strength that also targets the hamstrings and glutes. It is often performed on a 45-degree bench with the feet anchored. Unweighted back extensions are often performed for high reps, such as 15-20 reps or more, but the movement can also be performed with added weight in lower rep ranges, such as 8-12 reps per set.	11	11	11	2.00	5
1608	HM Banana Stretch		11	11	11	2.00	5
1609	HM T-Spine Stretch on Wall		11	11	11	2.00	6
1610	HM Childs Pose		11	11	11	2.00	5
1611	HM Cobra		11	11	11	2.00	5
1612	HM Cobra With Arm Retraction		11	11	11	2.00	5
1613	HM Dive-Bomber		11	11	11	2.00	5
1614	HM Downward-Facing Dog Pose		11	11	11	2.00	5
1615	HM Downward Dog To Left Leg Extension To Warrior Pose		11	11	11	2.00	5
1616	HM Downward Dog To Right Leg Extension To Warrior Pose		11	11	11	2.00	5
1617	HM Spine Twist		11	11	11	2.00	5
1618	HM Good Morning		11	11	11	2.00	5
1619	HM Rag Doll		11	11	11	2.00	5
1620	HM Upward-Facing Dog Pose		11	11	11	2.00	5
1621	Superman-	The Superman is a bodyweight exercise that consists of isometric holds in an extended spine position. It targets the muscles of the posterior chain, including the muscles of the glutes, spinal erectors, and upper back. It can be performed as part of a dynamic warm-up, or for muscle activation or mobility anytime.	11	11	11	2.00	5
1622	Weighted back extension	The weighted back extension is an exercise targeting the spinal erectors, as well as the glutes and hamstrings. Back extensions are often done for high reps without weight, but when done with weight, they can be an excellent accessory movement for deadlift strength as well as an overall posterior-chain strength builder. Because your back is the limiting factor, its still an exercise that is usually done for moderate to high reps, such as 8-12 reps per set or higher. You can weight it with a plate or by holding a dumbbell or other weight in your hands.	11	11	11	2.00	5
1623	MetaBurn Alternating Superman		11	11	11	2.00	5
1624	MetaBurn Swimmer		11	11	11	2.00	5
1625	Dancers Stretch		11	11	11	1.00	6
1626	Cat Stretch		11	11	11	1.00	6
1627	Crossover Reverse Lunge		11	11	11	1.00	6
1628	Standing Pelvic Tilt		11	11	11	1.00	6
1629	Exercise ball weighted hyperextension	The exercise ball weighted hyperextension is an exercise that strengthens the lower back. If balance is an issue, have someone hold your feet.	11	11	11	1.00	5
1630	Exercise ball rear delt fly	The exercise ball rear delt fly is a dumbbell exercise targeting the rear heads of the shoulders, as well as the muscles of the upper-middle back. Lying prone on an exercise ball offers support to perform the movement. It is generally performed for moderate to high reps as a part of upper body or shoulder training.	11	11	11	2.00	5
1631	Lying rear delt Y	The lying rear delt Y works the shoulders, specifically the rear heads, as well as the lower trapezius muscles. At the top of the motion, the arms and torso form a Yâ€”hence the name. Shoulder Y variations are usually performed with light weights as a warm-up or prehab movement for upper-body training, or as a burnout on shoulder day.	11	11	11	2.00	5
1632	Partner Facing Feet-Elevated Side Plank With Band Row		12	12	12	1.00	5
1633	Partner side plank band row	The partner side plank band row is an abdominal exercise where two partners perform side planks while pulling on the opposite ends of an exercise band. This technique can be done for time or reps in any ab-focused workout.	12	12	12	2.00	5
1634	Band-assisted chin-up	The band-assisted chin-up is a variation of the pull-up exercise in which the reps are performed with the palms facing toward the body in an underhand position, with a band looped around the feet or knees. This reduces weight and resistance at the bottom of the rep, while increasing it toward the top. Like other pull-up variations, it builds strength and muscle in the upper back, biceps, and core, but it utilizes the biceps slightly more than overhand band-assisted pull-ups.	12	12	12	2.00	5
1635	30 Back Band-Assisted Pull-Up		12	12	12	2.00	5
1636	30 Back Reverse-Grip Band-Assisted Pull-Up		12	12	12	2.00	5
1637	Band bent-over row	The band bent-over row is an exercise to develop and strengthen the muscles of the upper and middle back, like the latissimus (lat), lower trapezius, and rear deltoids. Bands provide dynamic resistance and can work equally well in strength, muscle-building, or circuit-style fat-loss workouts.	12	12	12	2.00	5
1638	Heavy band bent-over row	The heavy band bent-over row is a variation of the popular barbell exercise to develop and strengthen the muscles of the upper and middle back, like the latissimus (lats), lower trapezius, and rear deltoids. It can work equally well in strength, muscle-building, or circuit-style fat-loss workouts.	12	12	12	2.00	5
1639	Reverse-grip bent-over row	The reverse-grip bent-over row is a compound exercise used to build strength and size in both the lower and upper back. It targets nearly all of the muscles in the back, but particularly the lats, rhomboids, and lower back. It is thought to target the biceps and lats a bit more directly than overhand barbell rows. Because it can be loaded heavily, it is a popular movement in strength and muscle-focused upper-body workouts.	12	12	12	2.00	5
1779	Side Neck Stretch		17	17	17	2.00	6
1780	Neck-SMR		17	17	17	2.00	6
1640	One-Arm Long Bar Row	The single-arm landmine bent-over row is a barbell exercise focused on the muscles of the middle back, such as the lats (latissimus dorsi) and rhomboids. It also targets the biceps and grip. It utilizes a landmine device which anchors one end of the barbell near the ground, but could also be approximated by placing the barbell in the corner of a room.	12	12	12	2.00	5
1641	Bent Over Barbell Row	The barbell bent-over row is a compound exercise used to build strength and size in both the lower and upper back. It targets nearly all of the muscles in the back, but particularly the lats, rhomboids, and lower back. It is commonly utilized as an accessory movement for the deadlift in powerlifting, but is also popular in strength and muscle-focused upper-body workouts.	12	12	12	2.00	5
1642	Yates Row Reverse Grip		12	12	12	1.00	5
1643	Pendlay Row	The Pendlay row, named after the well-known strength coach Glenn Pendlay, is a bent-over row variation where each rep starts with the barbell resting on the ground. This eliminates the stretch reflex and forces the lifter to pull with power and a bent-over spine. The Pendlay row can be performed heavy for low reps, but is usually performed for moderate reps, such as 5-8 per set.	12	12	12	2.00	5
1644	Straight Bar Bench Mid Rows		12	12	12	1.00	5
1645	Barbell seal row	The barbell seal row is a weighted exercise targeting the muscles of the middle back, including the lats (latissimus dorsi) and rhomboids. It can be performed on a special elevated bench, on a bench placed on top of boxes or benches, or on a bench with a slight incline. The higher the bench, the greater the range of motion and stretch at the bottom of the movement. It is usually performed as an assistance movement for back strength and muscle growth, in rep ranges of 8-12 reps per set or higher.	12	12	12	2.00	5
1646	Yates Row		12	12	12	1.00	5
1647	Plate Row		12	12	12	1.00	5
1648	Barbell Deadlift Bent Row Complex	The barbell deadlift bent-over row complex combines two movements to target the posterior chain. It requires using a lighter weight than you could handle for heavy deadlifts alone, but doubles down on activation in the upper back, lower back, and glutes.	12	12	12	1.00	5
1649	Single-Arm Landmine Row		12	12	12	1.00	5
1650	TBS T-Bar Row		12	12	12	2.00	5
1651	TBS Deficit Deadlift	The barbell deficit deadlift is a compound exercise targeting the posterior chain.	12	12	12	2.00	5
1652	Bent-Over Barbell Row - Gethin Variation	The barbell bent-over row is a compound exercise used to build strength and size in both the lower and upper back. It targets nearly all of the muscles in the back, but particularly the lats, rhomboids, and lower back. It is commonly utilized as an accessory movement for the deadlift in powerlifting, but is also popular in strength and muscle-focused upper-body workouts.	12	12	12	2.00	5
1653	Barbell bent-over row	The barbell bent-over row is a compound exercise used to build strength and size in both the lower and upper back. It targets nearly all of the muscles in the back, but particularly the lats, rhomboids, and lower back. It is commonly utilized as an accessory movement for the deadlift in powerlifting, but is also popular in strength and muscle-focused upper-body workouts.	12	12	12	2.00	5
1654	UN Barbell Rack Pull		12	12	12	2.00	5
1655	UN Barbell Scrape The Rack		12	12	12	2.00	5
1656	Barbell deadlift bent-over row complex	The barbell deadlift bent-over row complex combines two movements to target the posterior chain. It requires using a lighter weight than you could handle for heavy deadlifts alone, but doubles down on activation in the upper back, lower back, and glutes.	12	12	12	2.00	5
1657	30 Back Barbell Deadlift		12	12	12	2.00	5
1658	30 Back Bent-Over Barbell Row		12	12	12	2.00	5
1659	30 Back T-Bar Row		12	12	12	2.00	5
1660	30 Back Underhand Bent-Over Barbell Row		12	12	12	2.00	5
1661	Kettlebell alternating renegade row	The kettlebell alternating renegade row combines rowing and core training into a single difficult movement. Its popular in time-efficient strength and muscle-building workouts, as well as in circuit-style training.	12	12	12	2.00	5
1662	Alternating Kettlebell Row		12	12	12	2.00	5
1663	Two-Arm Kettlebell Row		12	12	12	1.00	5
1664	Kettlebell bent-over row to clean	The kettlebell bent-over row to clean is a combination kettlebell exercise that targets many of the muscles of the upper body including the lats (latissimus dorsi), biceps, shoulders, and core. It also strengthens and trains power output of the lower body. It can be done for reps or for time as a strength or muscle-focused complex, or in circuit-style training for conditioning or fat loss.	12	12	12	2.00	5
1665	UP Deficit Kettlebell Stiff-Legged Deadlift	The kettlebell deficit deadlift is a more advanced version of the kettlebell deadlift movement that is performed standing on steps or boxes. It can be done to build strength or hip mobility for squats or deadlifts, in high reps or in more traditional strength and muscle-focused rep ranges.	12	12	12	2.00	5
1666	FYR2 Dagger-Grip Double-Kettlebell Gorilla Row		12	12	12	2.00	5
1667	FYR2 Double-Kettlebell Swing Clean		12	12	12	2.00	5
1668	Single-arm kettlebell row-	The single-arm kettlebell row is a popular muscle- and strength-building exercise that works the muscles of the back and core simultaneously. It has all the same benefits as a single-arm dumbbell row, but some people find a kettlebell more comfortable to hold during the movement.	12	12	12	2.00	5
1669	FYR2 Ascending-Rep Swing-Squat Complex		12	12	12	2.00	5
1670	One-Arm Dumbbell Row	The single-arm bench dumbbell row is a popular exercise for building the latissimus dorsi, or lat, muscles of the back. The bench is used for support during the rowing motion.	12	12	12	2.00	5
1671	Incline dumbbell row	The incline dumbbell row is an upper-body exercise targeting the lats (latissimus dorsi) and upper-back muscles, as well as the biceps. Performing it on an incline bench helps target the lower lats in particular. Dumbbell row variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or back-focused portion of a workout.	12	12	12	2.00	5
1672	Bent Over Two-Dumbbell Row With Palms In		12	12	12	1.00	5
1673	Man-maker	The man-maker is a sequence of exercises combining a dumbbell front squat, military press, renegade row, and sprawl. Between these movements it challenges muscles across the body, along with the cardiovascular system. It can be performed for rounds or for time as a single full-body exercise or as part of a fat-loss or athleticism-focused workout.	12	12	12	2.00	5
1781	Scapular Pull-Up		15	15	15	1.00	5
1674	Dumbbell bent-over row	The dumbbell bent-over row is a popular exercise to develop and strengthen the muscles of the upper and middle back, like the latissimus (lat), lower trapezius, and rear deltoids. It can work equally well in strength, muscle-building, or circuit-style fat-loss workouts.	12	12	12	2.00	5
1675	Middle Back Shrug		12	12	12	1.00	5
1676	Dumbbell pull-over to skullcrusher	The dumbbell pull-over to skullcrusher is a complex that combines two popular exercises into one sequence that works much of the upper body, particularly the chest, triceps, and serratus anterior muscles. Because the pull-over will determine the amount of weight you can use, this movement is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body portion of a workout.	12	12	12	2.00	5
1677	Dumbbell Fix Single-Arm Dumbbell Row		12	12	12	2.00	5
1678	Dumbbell Fix Bent-Over Dumbbell Row		12	12	12	2.00	5
1679	Dumbbell Seal Row - Gethin Variation	The dumbbell seal row is a weighted exercise targeting the muscles of the middle back, including the lats (latissimus dorsi) and rhomboids. It can be performed on a special elevated bench, on a bench placed on top of boxes or benches, or on a bench with a slight incline. The higher the bench, the greater the range of motion and stretch at the bottom of the movement. It is usually performed as an assistance movement for back strength and muscle growth, in rep ranges of 8-12 reps per set or higher.	12	12	12	2.00	5
1680	Decline dumbbell chest fly	The decline dumbbell chest fly is an upper-body exercise targeting the muscles of the chest, particularly the lower chest. It will require less weight than a decline press, which makes it a great hypertrophy exercise with high reps. Fly variations are usually performed for moderate to high reps, such as 8-12 reps per set or more.	12	12	12	2.00	5
1681	TBS Bent-Over Dumbbell Row	The dumbbell bent-over row is a popular exercise to develop and strengthen the muscles of the upper and middle back, like the latissimus (lat), lower trapezius, and rear deltoids. It can work equally well in strength, muscle-building, or circuit-style fat-loss workouts.	12	12	12	2.00	5
1682	HM Alternating Bent-Over Quick Row		12	12	12	2.00	5
1683	HM Bent-Over Dumbbell Row		12	12	12	2.00	5
1684	AM Single Arm Row	The single-arm bench dumbbell row is a popular exercise for building the latissimus dorsi, or lat, muscles of the back. The bench is used for support during the rowing motion.	12	12	12	2.00	5
1685	Dumbbell stiff-legged deadlift	The dumbbell stiff-legged deadlift is a dumbbell exercise that targets the hamstrings, glutes, lower and upper back, and core. The difference between a stiff-legged deadlift and a Romanian deadlift is primarily the amount of knee bend. The knees are only slightly bent in a stiff-legged deadlift, while they bend more in a Romanian deadlift. Stiff-legged deadlifts are generally performed for low to moderate reps, such as 8-10 reps per set, with a focus on maximizing the hamstring stretch rather than moving heavy weight. Feel free to wear a weight belt to protect your lower back.	12	12	12	2.00	5
1686	Single-arm bench dumbbell row	The single-arm bench dumbbell row is a popular exercise for building the latissimus dorsi, or lat, muscles of the back. The bench is used for support during the rowing motion.	12	12	12	2.00	5
1687	UN Bent-Over Dumbbell Row		12	12	12	2.00	5
1688	UN Dumbbell RDL		12	12	12	2.00	5
1689	UN Chest Supported Row		12	12	12	2.00	5
1690	MetaBurn Bent-Over Renegade Row		12	12	12	2.00	5
1691	30 Back Bent-Over Dumbbell Row		12	12	12	2.00	5
1692	30 Back Dumbbell Pull-Over		12	12	12	2.00	5
1693	30 Back Incline Dumbbell Row		12	12	12	2.00	5
1694	30 Back Single-Arm Dumbbell Row		12	12	12	2.00	5
1695	30 Back Single-Arm Dumbbell Swing Row		12	12	12	2.00	5
1696	T-Bar Row with Handle		12	12	12	2.00	5
1697	T-Bar Row		12	12	12	2.00	5
1698	Alternating sit-through with crunch	The alternating sit-through with crunch is a full-body movement that starts in a bear crawl position and ends with a leg kicked out to the side. In between reps, you perform a crunch. It is commonly performed for reps or time in bodyweight circuits and animal-style flows, but can also work on its own or as part of a dynamic warm-up or mobility sequence.	12	12	12	2.00	5
1699	Seated Cable Rows	The cable seated row is a popular exercise to train the muscles of the upper back, including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids, using a cable stack. It also targets the biceps to a lesser degree. The cable row can work well in a variety of rep-ranges, but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	12	12	12	2.00	5
1700	Upside-down pull-up	The upside-down pull-up is an advanced bodyweight exercise that is normally performed on a pair of gymnastic rings. It involves pulling the body toward the ceiling in an inverted position. It targets the same muscles as traditional pull-ups, including the lats (latissimus dorsi), biceps, and core. However, the pulling angle is more akin to a bent-over row or upright row, depending on the angle of your hips.	12	12	12	2.00	5
1701	Smith machine inverted row	The Smith machine inverted row is a bodyweight exercise targeting the muscles of the lats (latissimus dorsi) and upper back, using the bar of the Smith machine to hang and pull from. You can change the bar height to customize the difficulty level and desired angle of the row. This variation is usually performed for moderate to high reps, such as 8-12 reps per set or more.	12	12	12	2.00	5
1702	Lying T-Bar Row		12	12	12	2.00	5
1703	Suspended row	The suspended row is a bodyweight pulling exercise that focuses on the muscles of the middle and upper back, as well as the biceps. It can be trained in traditional muscle-building rep ranges or for higher reps. It can also work as part of a dynamic warm-up for a pressing or pulling-focused workout.	12	12	12	2.00	5
1704	Inverted Row with Straps		12	12	12	1.00	5
1705	One Arm Chin-Up		12	12	12	1.00	5
1706	Sled Row		12	12	12	1.00	5
1707	Paul Carter T-Bar Row		12	12	12	2.00	5
1708	Single-Arm Bent-Over Rear Delt Raise - Gethin Variation	The single-arm bent-over rear delt fly or rear delt raise is a popular upper-body exercise that targets the muscles on the back of the shoulder joint, specifically the rear head of the deltoid. Since pressing movements build the front and (to a lesser degree) side deltoid heads, this move is often done to promote balanced shoulder development. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a shoulder or upper-body workout.	12	12	12	2.00	5
1710	Seated Cable Rows	The cable seated row is a popular exercise to train the muscles of the upper back, including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids, using a cable stack. It also targets the biceps to a lesser degree. The cable row can work well in a variety of rep-ranges, but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	12	12	12	2.00	5
1711	Single-arm cable seated row	The single-arm cable seated row is a version of the cable row movement that trains the muscles of the upper back one side at a time. It targets a wide range of muscles including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids. It also targets the biceps to a lesser degree. The single-arm row can work well in a variety of rep ranges but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	12	12	12	2.00	5
1712	Paul Carter Lat Pull-Down	The lat pull-down is a cable-based exercise machine thatâ€™s ubiquitous in gyms around the world. This back builder is easy to learn and highly effective, allowing for variable resistance depending on where you place the pin in the stack.	12	12	12	2.00	5
1713	TBS Lat Pull-Down		12	12	12	2.00	5
1714	One-Arm Cable Read Delt Fly - Gethin Variation	The single-arm bent-over cable rear delt fly is an exercise targeting the rear deltoids. It is a great way to isolate this area of the shoulder and attack each side independently. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	12	12	12	2.00	5
1715	UP Seated Cable Row	The cable seated row is a popular exercise to train the muscles of the upper back, including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids, using a cable stack. It also targets the biceps to a lesser degree. The cable row can work well in a variety of rep-ranges, but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	12	12	12	2.00	5
1716	UP Cable Straight-Arm Pull-Down	The straight-arm rope pull-down is a variation of the straight-arm lat pull-down performed using a cable stack machine and a rope grip. It can either be performed in an athletic upright stance, or slightly bent-over. It both stretches and contracts the muscles of the lats (latissimus dorsi) as well as providing additional activation to the other upper back muscles and the core. Because the triceps are also isometrically involved in the movement, it is usually performed for higher reps, like 8-15 reps or above.	12	12	12	2.00	5
1717	UN Cable Pull-Through		12	12	12	2.00	5
1718	30 Back Close-Grip Seated Cable Row		12	12	12	2.00	5
1719	30 Back Incline Face-Up Cable Pull-Down		12	12	12	2.00	5
1720	30 Back Kneeling High Cable Pull-Down		12	12	12	2.00	5
1721	30 Back Leaning V-Bar Pull-Down		12	12	12	2.00	5
1722	30 Back Reverse-Grip Pull-Down		12	12	12	2.00	5
1723	30 Back Standing Low Cable Bar Row		12	12	12	2.00	5
1724	30 Back Standing Low Cable Rope Row		12	12	12	2.00	5
1725	30 Back Straight-Arm Bar Pull-Down		12	12	12	2.00	5
1726	30 Back Straight-Arm Rope Pull-Down		12	12	12	2.00	5
1727	30 Back Wide-Grip Behind-The-Head Pull-Down		12	12	12	2.00	5
1728	30 Back Wide-Grip Pull-Down		12	12	12	2.00	5
1729	30 back Wide-Grip Seated Cable Row		12	12	12	2.00	5
1730	Rower	The rower is a popular gym machine that is serious cardiovascular work, but also targets the legs, back, and arm muscles. Its a great way build overall aerobic and muscular fitness. It is popular in CrossFit-style workouts, but is also a staple in all types of gyms. It can be equally effective for HIIT-style interval workouts or for longer-duration endurance work.	12	12	12	2.00	1
1731	Seated Cable Rows	The cable seated row is a popular exercise to train the muscles of the upper back, including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids, using a cable stack. It also targets the biceps to a lesser degree. The cable row can work well in a variety of rep-ranges, but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	12	12	12	2.00	5
1732	Smith machine bent-over row	The Smith machine bent-over row is an upper-body exercise targeting the muscles of the back, particularly the lats (latissimus dorsi). This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or back-focused workout.	12	12	12	2.00	5
1733	Leverage High Row	The machine high row is an exercise targeting the lats and works the back overall.	12	12	12	1.00	5
1734	Machine Low Row	The machine low row is an exercise targeting the back muscles.	12	12	12	2.00	5
1735	Standing lat pull-down	The standing lat pull-down is a variation of the lat pull-down performed standing next to a cable stack rather than sitting on a bench or machine. It has all of the same benefits of a lat pull-down performed on a bench or machine, in addition to providing further activation to the core and lower body. If you are too tall to perform this movement, a kneeling lat pull-down provides all of the same benefits.	12	12	12	2.00	5
1736	30 Back Machine Seated Row		12	12	12	2.00	5
1737	30 Back Smith Machine Push-Up		12	12	12	2.00	5
1738	Mixed Grip Chin		12	12	12	2.00	5
1739	Rhomboids SMR	Rhomboids self-myofascial release (SMR) is a self-administered soft-tissue treatment for the upper body, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the rhomboid muscles of the mid back, some people find they can cause this often painful and tight area to relax or "release." Rhomboids SMR is often accompanied by SMR on the lats, or by stretches that target the rhomboids or lats.	12	12	12	2.00	6
1740	Spinal Stretch		12	12	12	2.00	6
1741	Upper Back Stretch		12	12	12	2.00	6
1742	Middle Back Stretch		12	12	12	2.00	6
1743	TBS Pull-Up		12	12	12	2.00	5
1744	HM Angel Stretch		12	12	12	2.00	5
1745	UNS Foam Roll Upper Back		12	12	12	2.00	5
1746	30 Back Neutral-Grip Pull-Down		12	12	12	2.00	5
1747	30 Back Pull-Up		12	12	12	2.00	5
1748	30 Back Reverse-Grip Pull-Up		12	12	12	2.00	5
1808	Box Squat with Bands		13	13	13	1.00	4
1809	Weighted Jump Squat		13	13	13	1.00	5
1810	Squat with Chains		13	13	13	1.00	4
1749	ACFT Medicine ball overhead power throw	The medicine ball overhead power throw is an explosive exercise targeting the abdominals and hips. This specific exercise is part of the new Army Combat Fitness Test or ACFT. It can be performed for lower reps with a focus on power or for higher reps with a focus on fat loss and conditioning. It begins in a semi-squat position holding a medicine ball, which then gets "scooped" up and thrown overhead in one continuous movement.	12	12	12	2.00	5
1750	Upright Row - With Bands		15	15	15	1.00	5
1751	Band seated row	The band seated row is a band alternative to the popular cable exercise and trains the muscles of the upper back, including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids. It also targets the biceps to a lesser degree. The band row can work well in a variety of rep ranges, requiring a heavier band for muscle-building and strength workouts and a lighter band for weight-loss work and as an accessory movement.	15	15	15	2.00	5
1752	Barbell shrug	The barbell shrug is an exercise targeting the traps (trapezius muscles). It is popular in strength and muscle-focused upper-body training, and is often trained on a shoulder day. With the assistance of straps, it can be loaded heavily, but it is still usually performed for moderate to high reps, such as 8-10 reps per set.	15	15	15	2.00	5
1753	Barbell behind-the-back shrug	The barbell behind-the-back shrug is an exercise targeting the traps. Having the bar behind you helps keep your shoulders pulled up and back, rather than rounded forward. It is popular in strength and muscle-focused upper-body training, and is often trained on a shoulder day. With the assistance of straps, it can be loaded heavily, but it is still usually performed for moderate to high reps, such as 8-10 reps per set.	15	15	15	2.00	5
1754	Clean Shrug		15	15	15	1.00	2
1755	Snatch Shrug		15	15	15	1.00	2
1756	Single-arm inverted row	The single-arm inverted row is a bodyweight exercise targeting the muscles of the lats (latissimus dorsi) and upper back, using the bar of the Smith machine to hang and pull from. You can change the bar height to customize the difficulty level and desired angle of the row.	15	15	15	2.00	5
1757	Kettlebell sumo deadlift high pull	The kettlebell sumo deadlift high pull is a dynamic kettlebell exercise that focuses on the muscles of the posterior chain, including the hamstrings, glutes, traps, rear delts, and upper back. It can be done in lower reps for power or strength, or higher reps for conditioning and fat loss. It can also be a component of a circuit-style kettlebell workout, either for time or reps.	15	15	15	2.00	5
1758	Standing dumbbell shrug	The standing dumbbell shrug is a popular movement to build and strengthen the trapezius muscles. Its often trained on a bodybuilding-style shoulder or back training day, but can also work well in full-body or strength-focused training.	15	15	15	2.00	5
1759	Standing dumbbell upright row	The standing dumbbell upright row is a popular movement for building stronger and bigger traps and shoulders. Many lifters combine this move with either their back or shoulder workout, since it involves both body parts. It is generally performed for moderate to high reps, such as 8-12 reps per set or more.	15	15	15	2.00	5
1760	Dumbbell pull-over	The dumbbell pull-over is a popular muscle and strength-building exercise that targets the muscles of the chest, upper back, lats, and the serratus anterior. It was a favorite of old-school bodybuilders, who believed high-rep pull-overs helped build a V-taper shape in the torso.	15	15	15	2.00	5
1761	Standing Dumbbell Shrug - Gethin Variation	The standing dumbbell shrug is a popular movement to build and strengthen the trapezius muscles. Itâ€™s a often trained on a bodybuilding-style shoulder or back training day, but can also work well in full-body or strength-focused training.	15	15	15	2.00	5
1762	Single-arm dumbbell row	The single-arm dumbbell row is a popular exercise for building the latissimus dorsi, or lat, muscles of the back. It is most often performed for moderate to high reps, such as 8-12 reps per arm or more, as part of a muscle-building upper-body or back-focused portion of a workout.	15	15	15	2.00	5
1763	Lying Face Down Plate Neck Resistance		17	17	17	1.00	5
1764	Lying Face Up Plate Neck Resistance		17	17	17	1.00	5
1765	Seated Head Harness Neck Resistance		17	17	17	1.00	5
1766	Cable straight-bar upright row	The cable straight-bar upright row is an isolation exercise for the traps and the medial deltoids. It may not be appropriate for all lifters depending on their shoulder health and injury history. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or shoulder-focused workout.	15	15	15	2.00	5
1767	Cable shrug	The cable shrug is an exercise targeting the traps, as well as hitting the shoulders and upper back. Cables allow for lighter loading which is beneficial for higher-rep sets.	15	15	15	2.00	5
1768	Smith machine shrug	The Smith machine shrug is an upper-body exercise targeting the traps (trapezius muscles). It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of shoulder or trap-focused training.	15	15	15	2.00	5
1769	Leverage Shrug		15	15	15	2.00	5
1770	Calf-Machine Shoulder Shrug		15	15	15	1.00	5
1771	Smith machine behind-the-back shrug	The Smith machine behind-the-back shrug is an upper-body exercise targeting the traps (trapezius muscles). It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of shoulder or trap-focused training.	15	15	15	2.00	5
1772	Smith machine upright row	The Smith machine upright row is an upper-body exercise targeting the muscles of the traps and shoulders. This movement is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or shoulder-focused workout.	15	15	15	2.00	5
1773	Machine low row-	The machine low row is a popular exercise targeting the back muscles, particularly the lats (latissimus dorsi), rhomboids, and middle and lower trapezius. Machine row variations are often performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or back-focused portion of a workout.	15	15	15	2.00	5
1774	Machine Shrug - Gethin Variation		15	15	15	2.00	5
1775	Smith machine single-arm shrug	The Smith machine single-arm shrug is an upper-body exercise targeting the traps (trapezius muscles). It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of shoulder or trap-focused training.	15	15	15	2.00	5
1776	Isometric Neck Exercise - Sides		17	17	17	1.00	5
1777	Isometric Neck Exercise - Front And Back		17	17	17	1.00	5
1778	Neck Bridge Prone		17	17	17	1.00	5
1782	Single-leg depth squat	The single-leg depth squat is an exercise targeting the muscles of the lower body, including the quads, glutes, and hamstrings. It is sometimes used as a substitute for the pistol squat, since it doesnt demand the same level of flexibility to perform. It is usually performed for low to moderate reps with a focus on proper form and control.	13	13	13	2.00	5
1783	Squats - With Bands		13	13	13	1.00	5
1784	Hip Flexion with Band		13	13	13	1.00	5
1785	Forward Band Walk		13	13	13	1.00	5
1786	Boss Everline Resistance-Band Pull Sprint		13	13	13	2.00	5
1787	Banded jump squat	The banded jump squat is an explosive bodyweight squat variation performed with a band around the thighs just above the knees. This increases muscle activation in the hips and glutes, while the squat targets the quads, hamstrings, and glutes. The banded jump squat can be performed for low reps as a power-focused exercise, or for higher reps to build muscle in the lower body, challenge conditioning, and burn fat.	13	13	13	2.00	5
1788	Speed Box Squat	The banded barbell box squat is a strength and power exercise targeting the lower body. It is popular in powerlifting training, either performed with light weights as a power and speed exercise, or heavier for strength. It is usually performed to a box of a height that demands the squatter to decent to around parallel.	13	13	13	2.00	4
1789	HM Banded Squat Toe Tap		13	13	13	2.00	5
1790	UP Band Abducted Squat		13	13	13	2.00	5
1791	FYR2 Lateral Band Walk		13	13	13	2.00	5
1792	FYR2 Banded Squat Hold-Pulse-Jump Complex		13	13	13	2.00	5
1793	Band split squat	The band split squat is a band movement targeting the quads, glutes, and hamstrings. It can be performed either for time or reps, and is often included as part of a fat-loss or athleticism-focused circuit workout. Leaning back places more emphasis on the glutes and hamstrings, while standing straight up targets the quads.	13	13	13	2.00	5
1794	Band front squat	The band front squat is a popular exercise for targeting the muscles of the lower body, including the quadriceps, glutes, and hamstrings. Holding band in the racked position also works the core and upper-back muscles to maintain posture while the lower body moves. Because the tension of the band changes as it stretches, the resistance more closely matches the natural strength curve of the squat. This movement is usually performed for moderate to high reps, at least 8-12 reps per set or more. If this movement hurts your knees, try performing it with a wider stance.	13	13	13	2.00	5
1795	Squat hold with band pull-apart	The squat hold with band pull-apart is a combination of the squat hold and band pull-apart. It involves holding the squat position with the thighs at or below parallel to the ground while performing a band pull-apart. The band pull-apart is an exercise targeting the upper back muscles, including the trapezius, rear delts, and rhomboids. The squat hold band pull-apart can be performed for mobility purposes or to increase time under tension on lower-body muscles including the quads, glutes, and hamstrings.	13	13	13	2.00	5
1796	Banded squat toe tap	The banded squat toe tap is a banded variation on the classic bodyweight squat, but with a lateral toe tap to add extra focus to the stabilizer muscles around the hips. It can be performed for time or for reps as part of a dynamic warm-up for the lower body, or in any lower-body portion of a workout.	13	13	13	2.00	5
1797	Band overhead squat	The band overhead squat is a full-body, functional movement that works to build full-body strength and stability. It is a variation of the classic barbell exercise and can be used to train core strength and stability for Olympic weightlifting or CrossFit.	13	13	13	2.00	5
1798	Quadriceps SMR	Quadriceps self-myofascial release (SMR) is a self-administered soft-tissue treatment for the lower body, usually using a foam roller, lacrosse ball, or other "trigger point" massage tool. By applying pressure strategically to the quad muscles of the upper leg, some people find they can cause this often painful and tight muscle group to relax or "release." Quadriceps SMR is often accompanied by SMR on the calf, glute, or hip muscles, or by stretches that target the calves or quads.	13	13	13	2.00	6
1799	Clean from Blocks		13	13	13	1.00	2
1800	Barbell Full Squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1801	Barbell back squat to box	The barbell back squat to box is a popular version of a classic lower-body exercise that utilizes a box at the bottom position of the movement. This allows the lifter to customize the depth of the squat, as well as limit the stretch reflex at the bottom of the squat. The movement targets the quadriceps, glutes, and hamstrings. The squat to box can be performed for low reps to build strength or power, or for higher reps to build muscle.	13	13	13	2.00	4
1802	Push-press	The push-press is an overhead press variation in which the barbell is pushed upward with assistance from the lower body. This "push" helps the weight travel through the sticking point of a strict press. The push-press is commonly performed as part of barbell complexes, power training for all types of athletics, or as a powerful shoulder exercise.	13	13	13	2.00	2
1803	Power snatch-	The power snatch is a full-body lift in which the bar is pulled from the floor with a wide grip to the overhead position in one movement. The bar is received in the "power" position, with the hips higher than a full-depth squat position. The power snatch can be used as a learning tool for the full snatch, or to train muscular power and strength on its own. It is usually performed for low reps, focusing on power and movement quality.	13	13	13	3.00	2
1804	Hang Clean		13	13	13	1.00	2
1805	Barbell walking lunge	The barbell walking lunge tests your ability to maintain balance while challenging the quads, glutes, and hamstrings as well as the core muscles. Using a barbell allows you to overload the exercise. It can be performed for moderate reps, such as 8-15 per set or across the gym, or for higher reps as a conditioning and mental toughness challenge.	13	13	13	2.00	5
1806	Olympic Squat		13	13	13	1.00	2
1807	Narrow-stance squat	The narrow-stance squat is an exercise that targets the lower body with an emphasis on the quads. Many people will find they cant go as deep in a narrow-stance squat as with a wider squat, which is normal. The narrow-stance squat can be performed for time or reps in any workout.	13	13	13	3.00	5
1811	Barbell Squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1812	Barbell front squat	The barbell front squat is a compound movement that emphasizes building the lower-body muscle groups. With the barbell racked in front of the body on the anterior delts, the front squat emphasizes the quads and glutes, but also upper back and core strength to remain upright. Front squats can be trained as an alternative to back squats, as an accessory movement for either squats or deadlifts, or for strength and muscle on their own. Many lifters and athletes prefer them to back squats, although they can be uncomfortable and difficult to learn at first.	13	13	13	2.00	5
1813	Barbell forward lunge	The barbell forward lunge is a popular lower-body exercise targeting the quads, glutes, and hamstrings. Using a barbell allows you to overload the exercise beyond body weight and perform the movement in strength or muscle-focused rep ranges. The forward lunge can be performed as part of a barbell complex, in a circuit, or on its own in the lower-body portion of any workout.	13	13	13	3.00	5
1814	Smith machine box squat	The Smith machine box squat is a machine-based exercise targeting the quads, glutes, and hamstrings. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or power or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a full-body or lower-body workout.	13	13	13	2.00	5
1815	Barbell step-up	The barbell step-up is a great exercise for building lower-body strength and power. It targets all the same muscles as bodyweight step-ups, such as the quads, glutes, and hamstrings, but allows for greater muscular overload.	13	13	13	2.00	5
1816	Barbell Bulgarian split squat	The barbell Bulgarian split squat is a single-leg exercise targeting the quads, glutes, and hamstrings. It is easier to overload with the barbell than when using dumbbells. If balance is an issue, consider using a Smith machine or holding dumbbells at your side instead.	13	13	13	2.00	5
1817	Hang Clean - Below the Knees		13	13	13	1.00	2
1818	Barbell hack squat	The barbell hack squat is a variety of deadlift performed with the barbell behind the legs. This forces the lifter into a body position similar to a squat and targets the quads and glutes. It is named after famed strongman George Hackenschmidt, who performed it as an overall leg-building exercise. The barbell hack squat can be used as a substitute for the machine hack squat, or as a lower-body strength and size movement on its own.	13	13	13	3.00	5
1819	Hack Squat	The hack squat is a machine-based exercise that targets the muscles of the legs, particularly the quadriceps. It is often used as an accessory for squats, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
1820	Barbell thruster	The barbell thruster is a full-body exercise that incorporates both squatting and pressing in one functional movement. Its especially common in contemporary CrossFit workouts, but also in general strength training. The barbell is usually cleaned into place first, but it could be performed taken from a squat rack in a front-rack position. The thruster can be performed in traditional strength-focused rep ranges to build strength in the press, or in higher reps for full-body conditioning.	13	13	13	2.00	5
1821	Split Jerk		13	13	13	1.00	2
1822	Push-jerk	The push-jerk is a movement in which the barbell is pushed from the front rack position to overhead with help from the legs. It differs from the push-press in that the lifter dips under the bar rather than simply pushing it up. It is popular in CrossFit workouts and Olympic weightlifting, as well as power training for athletics. It is usually performed for low reps, focusing on power and movement quality.	13	13	13	2.00	2
1823	Barbell back squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1824	Zercher squat	The Zercher squat is a barbell exercise in which the bar is placed in the crease of your elbows as you perform a normal squat. This movement can be awkward at first but is extremely effective in building both size and strength.	13	13	13	2.00	5
1825	Jefferson Squats		13	13	13	1.00	5
1826	Jerk Dip Squat		13	13	13	1.00	2
1827	Barbell side split squat	The barbell side split squat is a variation of the split squat that targets the lower body, specifically the quads, and requires good hip mobility.	13	13	13	2.00	5
1828	Frankenstein Squat		13	13	13	1.00	2
1829	Barbell speed squat	The barbell speed squat targets the lower-body muscle groups using lighter weights to perform fast-paced back squats. Speed squats are popular in certain powerlifting training methodologies as a way to engrain form and lifting speed that can carry over to max-effort lifts. In this approach, they are usually performed in numerous sets of 3-5 reps with adequate rest in between. Speed squats are also sometimes performed with bands or chains adding extra resistance to the top half of the lift.	13	13	13	2.00	5
1830	Single-arm side deadlift	The single-arm side deadlift is a compound exercise that strengthens the glutes, quads, hamstrings, back, and core. It has more of a core stability and anti-rotational component than other deadlift variations. The side deadlift is usually done for low to moderate reps, such as 5-8 reps per side, with a focus on posture and movement quality.	13	13	13	3.00	5
1831	Barbell Squat To A Bench	The barbell back squat to box takes a classic compound exercise for developing the lower body and adds the box element. Muscles worked include the quads, hips, glutes, and upper hamstrings.	13	13	13	2.00	5
1832	Clean Pull		13	13	13	1.00	2
1833	Front Barbell Squat To A Bench		13	13	13	1.00	5
2229	HM Tuck-Up Burpee		13	13	13	2.00	5
2230	HM Bear Crawl		13	13	13	2.00	5
2231	HM Bear Stance Fire Hydrant		13	13	13	2.00	5
1834	Barbell reverse lunge	The barbell reverse lunge is a popular lower-body exercise targeting the quads, glutes, and hamstrings. Using a barbell allows you to overload the exercise beyond body weight and perform the movement in strength or muscle-focused rep ranges. The reverse lunge can be performed as part of a barbell complex, in a circuit, or on its own in the lower-body portion of any workout.	13	13	13	2.00	5
1835	Split Clean		13	13	13	1.00	2
1836	Close-stance dumbbell front squat	The close-stance dumbbell front squat is a popular exercise for targeting the muscles of the lower body, the quadriceps in particular. Holding dumbbells in the racked position also works the core and upper-back muscles to maintain posture while the lower body moves. Because the amount of weight you can use will be limited by what you can clean to the rack position, this movement is usually performed for moderate to high reps, at least 8-12 reps per set or more. If this movement hurts your knees, try performing it with a wider stance.	13	13	13	2.00	5
1837	Front Squat (Clean Grip)		13	13	13	1.00	5
1838	Barbell front squat to back squat	The barbell front squat to back squat is a complex that combines two fundamental barbell squat movements with a press in between to build overall strength, coordination, and endurance. This combo hits every muscle in the lower body, but also seriously challenges the upper-body musculature to control and transition the weight.	13	13	13	2.00	5
1839	Squat Jerk		13	13	13	1.00	5
1840	Barbell Front-To-Back Squat	The barbell front squat to back squat is a complex that combines two fundamental barbell squat movements with a press in between to build overall strength, coordination, and endurance. This combo hits every muscle in the lower body, but also seriously challenges the upper-body musculature to control and transition the weight.	13	13	13	2.00	5
1841	Box Squat with Chains		13	13	13	1.00	5
1842	Snatch from Blocks		13	13	13	1.00	2
1843	Power Snatch from Blocks		13	13	13	1.00	2
1844	Front Squat (Bodybuilder)	The barbell front squat is a compound movement that emphasizes building the lower-body muscle groups. With the barbell racked in front of the body on the anterior delts, the front squat emphasizes the quads and glutes, but also upper back and core strength to remain upright. Front squats can be trained as an alternative to back squats, as an accessory movement for either squats or deadlifts, or for strength and muscle on their own. Many lifters and athletes prefer them to back squats, although they can be uncomfortable and difficult to learn at first.	13	13	13	2.00	5
1845	Barbell step-down reverse lunge	The barbell step-down reverse lunge is an exercise targeting the lower body, particularly the glutes and hamstrings. The front foot is slightly elevated during this movement, making the subsequent step-down more pronounced and difficult. These are usually performed for time or for relatively high reps, such as 10 reps or more per set.	13	13	13	2.00	5
1846	Squat with Bands		13	13	13	1.00	4
1847	Heaving Snatch Balance		13	13	13	1.00	2
1848	Snatch Balance		13	13	13	1.00	2
1849	Reverse Band Power Squat		13	13	13	1.00	4
1850	Paul Carter Back Squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1851	Paul Carter Barbell Split Squat	The barbell Bulgarian split squat is a single-leg, full-body exercise targeting the quads, glutes, and hamstrings. It is easier to overload with the barbell as opposed to using dumbbells.	13	13	13	2.00	5
1852	TBS High-Bar Back Squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1853	TBS Barbell Front Squat	The barbell front squat is a compound movement that emphasizes building the lower-body muscle groups. With the barbell racked in front of the body on the anterior delts, the front squat emphasizes the quads and glutes, but also upper back and core strength to remain upright. Front squats can be trained as an alternative to back squats, as an accessory movement for either squats or deadlifts, or for strength and muscle on their own. Many lifters and athletes prefer them to back squats, although they can be uncomfortable and difficult to learn at first.	13	13	13	2.00	5
1854	Squat - Gethin Variation	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1855	Front-To-Back Barbell Squat		13	13	13	2.00	5
1856	Barbell Lunge - Gethin Variation	The barbell forward lunge is a popular lower-body exercise targeting the quads, glutes, and hamstrings. Using a barbell allows you to overload the exercise beyond body weight and perform the movement in strength or muscle-focused rep ranges. The forward lunge can be performed as part of a barbell complex, in a circuit, or on its own in the lower-body portion of any workout.	13	13	13	2.00	5
1857	Rack Deadlift - Gethin Variation	The rack pull is a variation of the deadlift performed from an elevated height, either using boxes, safety pins, or the safeties in a squat rack. It targets all the same muscles as the deadlift, including the glutes, hamstrings, upper back, lower back, and grip. It can e used to strengthen deadlift lockout, but also as a deadlift alternative for people who canâ€™t deadlift from the floor without pain.	13	13	13	2.00	5
1917	Dumbbell squat	The dumbbell squat is a classic lower-body exercise that targets the quadriceps, hamstrings, and glutes. While this variation is usually performed with relatively light weights for high reps, it can also be used as a substitute for squats or the trap-bar deadlift in any workout.	13	13	13	2.00	5
1858	Barbell Squat - Gethin Variation	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1859	Barbell Good Morning - Gethin Variation	The barbell good morning is an exercise that targets glute, hamstring, and lower back development. It is often trained as an accessory movement to the deadlift, but also has value on its own. It is sometimes performed for reps in traditional strength-focused rep ranges such as 5-8 reps per set, but due to the risk posed to the lower back, is rarely treated as a max-effort single-rep lift.	13	13	13	2.00	5
1860	AM Barbell Squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1861	Plyometric Power Clean		13	13	13	2.00	5
1862	Banded Split Jerk		13	13	13	2.00	5
1863	UP Squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1864	UN Barbell Back Squat		13	13	13	2.00	5
1865	UN Barbell Box Squat		13	13	13	2.00	5
1866	UN Barbell Front Squat		13	13	13	2.00	5
1867	KV Bulgarian Split Squat		13	13	13	2.00	5
1868	King Maker Barbell Back Squat	The barbell back squat is a popular compound movement that emphasizes building the lower-body muscle groups and overall strength. Its the classic way to start a leg day, and is a worthy centerpiece to a lower-body training program. The squat is a competitive lift in the sport of powerlifting, but is also a classic measurement of lower-body strength. With the barbell racked on the traps or upper back, the emphasis is placed on the posterior chain but the entire body gets worked. The back squat can be trained in everything from heavy singles to sets of 20 reps or higher.	13	13	13	2.00	5
1869	King Maker Barbell Deadlift	The barbell deadlift is a compound exercise used to develop overall strength and size in the posterior chain. It is a competition lift in the sport of powerlifting, but is also considered a classic benchmark of overall strength. When performed with the hands outside the knees, it is often called a "conventional" deadlift. When the feet are wide and the hands are inside the knees, it is a sumo deadlift.	13	13	13	2.00	5
1870	30 Legs Barbell Back Squat		13	13	13	2.00	5
1871	30 Legs Barbell Front Squat		13	13	13	2.00	5
1872	Barbell Back Squats		13	13	13	2.00	5
1873	Front Squats With Two Kettlebells		13	13	13	1.00	5
1874	Kettlebell Pistol Squat		13	13	13	1.00	5
1875	Goblet Squat	The goblet squat is a popular lower-body exercise where you hold a kettlebell or dumbbell in front of your chest as if you are supporting a heavy cup or goblet. It can help lifters of all levels improve their squat technique and hip mobility, but can also work as a muscle-building or strength accessory movement for experienced athletes. It also works well in combinations, complexes, and flows with other kettlebell movements like swings, presses, and cleans.	13	13	13	2.00	5
1876	Kettlebell Curtsy Lunge		13	13	13	1.00	5
1877	Single-arm kettlebell overhead squat	The single-arm kettlebell overhead squat is a popular kettlebell movement performed while holding a single kettlebell in a locked-out overhead position. It targets the muscles of the lower body dynamically, while also challenging and building shoulder stability and upper-back mobility. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a kettlebell combination or complex.	13	13	13	3.00	5
1878	Kettlebell side squat	The kettlebell side squat is a popular movement to build mobility and lateral strength in the hips. It can be performed for time or for reps, either on its own or as part of a kettlebell circuit, complex, or flow.	13	13	13	2.00	5
1879	Kettlebell sumo squat	The kettlebell sumo squat is a lower-body movement emphasizing the muscles of the hips, glutes, and quads. It shares attributes with both the kettlebell deadlift and the goblet squat, but is usually performed with a wider stance and the feet pointed more outward, similar to a sumo deadlift. Its unique stance helps the lifter keep an upright torso, as well as emphasize stretching the hips and adductor muscles.	13	13	13	2.00	5
1880	Kettlebell thruster progression	The kettlebell thruster progression is a kettlebell combination movement that includes a squat, curl, press, and overhead extension in a single sequence. It can work well with a light or moderate weight either for time or reps, in circuit-style training, or as a single kettlebell "flow."	13	13	13	2.00	5
1881	Kettlebell power clean	The kettlebell power clean is an explosive kettlebell exercise where the lifter pulls the weight to shoulder level with a slight swing between the legs. It is often used as a drill to teach kettlebell clean technique, but is also a valuable power exercise in its own right. It can be performed in low rep ranges for strength or higher rep ranges for technique practice or muscle growth.	13	13	13	2.00	5
1882	Kettlebell fire feet	Kettlebell fire feet is a dynamic movement that works most of the major muscle groups in the body simultaneously, while also elevating the heart rate. Its a great movement to include in kettlebell or bodyweight circuit training to increase fatigue and burn serious calories.	13	13	13	2.00	3
2195	Walking lunge with hip extension	The walking lunge with hip extension is a combination of two movements, both targeting the lower body. The added hip extension places more of an emphasis on the glutes. It is a great inclusion in a dynamic warm-up for the lower body, but can also be performed for time or reps in any workout.	13	13	13	2.00	5
1883	Single Arm Overhead Kettlebell Squat	The single-arm kettlebell overhead squat is a popular kettlebell movement performed while holding a single kettlebell in a locked-out overhead position. It targets the muscles of the lower body dynamically, while also challenging and building shoulder stability and upper-back mobility. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a kettlebell combination or complex.	13	13	13	2.00	5
1884	Pulsing goblet squat	The pulsing goblet squat is a simple way to make a popular squat variation more taxing for the lower body and cardiovascular system. They can be done for time or reps, allowing you to get a significant training effect from a light weight in circuit-style training.	13	13	13	2.00	5
1885	Double-kettlebell alternating lunge to clean	The double-kettlebell alternating lunge to clean is a combination of kettlebell moves in a single sequence. This combination can be performed for time or for reps, often as circuit-style training for conditioning or fat loss, or in a kettlebell complex or flow.	13	13	13	2.00	5
1886	FYR Goblet Squat	The goblet squat is a popular lower-body exercise where you hold a kettlebell or dumbbell in front of your chest as if you are supporting a heavy cup or goblet. It can help lifters of all levels improve their squat technique and hip mobility, but can also work as a muscle-building or strength accessory movement for experienced athletes. It also works well in combinations, complexes, and flows with other kettlebell movements like swings, presses, and cleans.	13	13	13	2.00	5
1887	FYR Kettlebell Sumo Squat	The kettlebell sumo squat is a lower-body movement emphasizing the muscles of the hips, glutes, and quads. It shares attributes with both the kettlebell deadlift and the goblet squat, but is usually performed with a wider stance and the feet pointed more outward, similar to a sumo deadlift. Its unique stance helps the lifter keep an upright torso, as well as emphasize stretching the hips and adductor muscles.	13	13	13	2.00	5
1888	Double-kettlebell front squat	The double-kettlebell front squat is a popular kettlebell movement performed while holding two kettlebells in the front-racked position. It targets the muscles of the lower body dynamically, and the muscles of the upper back and core isometrically. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a larger kettlebell combination or complex.	13	13	13	2.00	5
1889	FYR Kettlebell Squat Clean	The kettlebell squat clean is an explosive kettlebell exercise where the lifter pulls the weight to shoulder level with a slight swing between the legs. It is often used as a drill to teach kettlebell clean technique, but is also a valuable power exercise in its own right. It can be performed in low rep ranges for strength or higher rep ranges for technique practice or muscle growth.	13	13	13	2.00	5
1890	Single-arm kettlebell front squat	The single-arm kettlebell front squat is a popular kettlebell movement performed while holding a single kettlebell in the front-racked position. It targets the muscles of the lower body dynamically, and the muscles of the upper back and core isometrically. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a kettlebell combination or complex.	13	13	13	2.00	5
1891	Kettlebell front rack lunge	The kettlebell front rack lunge is a dynamic leg and core exercise in which a lifter performs lunges while holding a single kettlebell in the front-racked position. It is a unique coordination challenge, but also challenging to the musculature of the abdomen, lower body, shoulders, and upper back. It is most commonly performed for higher reps, such as 10-15 reps per side, or for time. It can work in circuit-style workouts, as well as in muscle or strength-focused workouts.	13	13	13	2.00	5
1892	HM Turkish Get-Up		13	13	13	2.00	5
1893	HM Single-Leg Romanian Deadlift		13	13	13	2.00	5
1894	Taylor Single-Arm Kettlebell Front Squat		13	13	13	2.00	5
1895	Taylor Kettlebell Goblet Squat		13	13	13	2.00	5
1896	Goblet squat-	The goblet squat is a popular lower-body exercise where you hold a kettlebell or dumbbell in front of your chest as if you are supporting a heavy cup or goblet. It can help lifters of all levels improve their squat technique and hip mobility, but can also work as a muscle-building or strength accessory movement for experienced athletes. It also works well in combinations, complexes, and flows with other kettlebell movements like swings, presses, and cleans.	13	13	13	2.00	5
1897	Holman Kettlebell Squat Clean		13	13	13	2.00	5
1898	Holman Kettlebell Swing		13	13	13	2.00	5
1899	Holman Kettlebell Swing Transfer		13	13	13	2.00	5
1900	Dumbbell goblet squat-	The goblet squat is a popular lower-body exercise in which a dumbbell or kettlebell is held in front of the chest with two hands, approximating how you might hold a heavy goblet. It is used as a teaching tool to help instruct and develop proper squat form, but is also effective for building size in the quads, glutes, and hamstrings. It can be performed for low reps to build strength, or for higher reps to build muscle and conditioning.	13	13	13	2.00	5
1901	Robertson Kettlebell Jump		13	13	13	2.00	5
1902	FYR2 Alternating Kettlebell Squat Clean		13	13	13	2.00	5
1903	FYR2 Banded Double-Kettlebell Squat Pulse		13	13	13	2.00	5
1904	FYR2 Double-Kettlebell Ballin Lunge		13	13	13	2.00	5
1905	FYR2 Double-Kettlebell Front Rack Lunge		13	13	13	2.00	5
1906	FYR2 Double-Kettlebell Front Squat		13	13	13	2.00	5
1907	FYR2 Explosive Kettlebell Jump Squat		13	13	13	2.00	5
1908	FYR2 Kettlebell Goblet Squat		13	13	13	2.00	5
1909	FYR2 Kettlebell Reverse Lunge Switch Grip		13	13	13	2.00	5
1910	FYR2 Kettlebell Reverse Lunge to Kneeling Press		13	13	13	2.00	5
1911	FYR2 Kettlebell Sumo Squat Pulse		13	13	13	2.00	5
1912	FYR2 Reverse Lunge to Single-Leg Kettlebell Deadlift		13	13	13	2.00	5
1913	FYR2 Kettlebell Goblet-Squat-Deadlift Complex		13	13	13	2.00	5
1914	FYR2 Kettlebell Squat-Press-Deadlift Complex		13	13	13	2.00	5
1915	Goblet Squats		13	13	13	2.00	5
1916	Dumbbell Goblet Squat	The goblet squat is a common exercise used in the early stages of learning to squat, or as a movement in general training programs for building size to the quads, glutes, and hamstrings.	13	13	13	2.00	5
2232	HM Walking Frankenstein		13	13	13	2.00	5
2233	HM Walking Hip Stretch		13	13	13	2.00	6
2234	HM Wide Jump Squat		13	13	13	2.00	5
2235	HM Boxer Shuffle		13	13	13	2.00	5
1918	Dumbbell Lunges	The dumbbell split squat is a popular lower-body exercise to build strength and muscle one leg at a time. It can be used to teach proper lunge form, but is also valuable on its own when trained in traditional strength-focused rep ranges, such as 5-8 reps per set, or for higher reps to build muscle or for conditioning.	13	13	13	2.00	5
1919	Dumbbell reverse lunge	The dumbbell reverse lunge is a popular lower-body movement that targets the muscles of the quads, glutes, hamstrings, and hips. It also works the core and upper-back muscles to maintain posture while the lower body moves. Lunge variations are often performed for moderate to high reps, such as 8-12 reps per leg or more, as part of the lower-body portion of a workout. If this movement hurts your knees, try performing split squats instead.	13	13	13	2.00	5
1920	Split Squat with Dumbbells	The dumbbell Bulgaria split squat is a single-leg exercise targeting the quads, glutes, and hamstrings.	13	13	13	2.00	5
1921	Dumbbell sumo squat	The dumbbell sumo squat is a popular lower-body movement using a single dumbbell held in front of the legs. It is performed with a wider than shoulder-width stance, which increases the demand on the glutes, hamstrings, and adductors while still benefiting the quads, core, and upper body. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of the lower-body portion of a workout.	13	13	13	2.00	5
1922	Dumbbell seated box jump	The dumbbell seated box jump is an explosive exercise that builds the quadriceps as well as overall lower-body strength and explosiveness. All you need is a box, a bench, and a light dumbbell. Performing it from a seated position eliminates the stretch reflex in the lower body, forcing you to generate more power. This is an advanced move, so consider starting off with box jumps or squat jumps before progressing to this.	13	13	13	2.00	3
1923	Dumbbell step-up	The dumbbell step-up is a great exercise for building lower-body strength and power. It targets all the same muscles as bodyweight step-ups, such as the quads, glutes, and hamstrings, but allows for greater muscular overload.	13	13	13	2.00	5
1924	Dumbbell Walking Lunge	The dumbbell walking lunge tests your ability to maintain balance while challenging the quads, glutes, and hamstrings as well as core muscles.	13	13	13	2.00	5
1925	Dumbbell Squat To A Bench		13	13	13	1.00	5
1926	Dumbbell thruster	The dumbbell thruster, which begins with a squat and ends with an overhead press, works the entire body at once in a single fluid motion. This exercise is often performed with kettlebells, but dumbbells are also a great option.	13	13	13	2.00	5
1927	Dumbbell front squat	The dumbbell front squat is a popular exercise for targeting the muscles of the lower body, including the quadriceps, glutes, and hamstrings. Holding dumbbells in the racked position also works the core and upper-back muscles to maintain posture while the lower body moves. Because the amount of weight you can use will be limited by what you can clean to the rack position, this movement is usually performed for moderate to high reps, at least 8-12 reps per set or more. If this movement hurts your knees, try performing it with a wider stance.	13	13	13	2.00	5
1928	Single-Arm Dumbbell Overhead Squat		13	13	13	1.00	5
1929	Dumbbell lateral hop	The dumbbell lateral hop is an explosive exercise that targets the muscles of the hips and legs. Adding dumbbells adds a challenge to the core, as well. Because balance can be a challenge, it is usually performed with relatively light weights, often as a component of fat-loss or athletic training.	13	13	13	2.00	3
1930	Dumbbell lunge with biceps curl	The dumbbell lunge with biceps curl combines an isometric hold at the bottom of a lunge with a dumbbell biceps curl. The two exercises combine to target the legs, core, and biceps. The curl will determine the amount of weight you can use, but even a light weight will make the lunge hold seriously challenging.	13	13	13	2.00	5
1931	Dumbbell Pistol Squat		13	13	13	1.00	5
1932	Dumbbell Squat Snatch		13	13	13	1.00	5
1933	Dumbbell Alternating Lunge		13	13	13	1.00	5
1934	Dumbbell jump squat	The dumbbell jump squat is a popular movement combining an explosive lower-body movement with extra upper-body loading in the form of dumbbells held in the hands. Done with heavier weights, it can be trained for low reps with a power focus. With light weights, it is often done for higher reps for fat-loss and conditioning.	13	13	13	2.00	3
1935	Dumbbell Side Lunge		13	13	13	1.00	5
1936	Boss Everline Dumbbell Lunge Jump		13	13	13	2.00	5
1937	Dumbbell Fix Dumbbell Split Squat		13	13	13	2.00	5
1938	Single-leg dumbbell Romanian deadlift	The single-leg dumbbell Romanian deadlift is a movement targeting the muscles of the hamstrings, glutes, and back. The difference between a Romanian deadlift and a stiff-legged deadlift is the amount of knee bend. The knees are only slightly bent in a stiff-legged deadlift, while they bend more in a Romanian deadlift. Single-leg deadlifts are generally performed for low to moderate reps, such as 8-10 reps per set, with a focus on maximizing the hamstring stretch rather than moving heavy weight. If balance is a challenge, this movement is still very effective if performed while holding on to a stable object for support.	13	13	13	2.00	5
1939	Dumbbell Fix Dumbbell Alternating Reverse Lunge		13	13	13	2.00	5
1940	Dumbbell Fix Turkish Get-Up		13	13	13	2.00	5
1941	Seesaw lunge	The seesaw lunge is a bodyweight exercise that combines both the forward and the reverse lunge. It can also be performed holding dumbbells or other weights. It can be performed for time or reps in the lower-body portion of any workout.	13	13	13	2.00	5
1942	FYR Dumbbell Front Squat	The dumbbell front squat targets the quads, glutes, and hamstrings, as well as the upper body and challenging core stability for building total body strength.	13	13	13	2.00	5
1943	Dumbbell split squat	The dumbbell split squat is a popular lower-body exercise to build strength and muscle one leg at a time. It can be used to teach proper lunge form, but is also valuable on its own when trained in traditional strength-focused rep ranges, such as 5-8 reps per set, or for higher reps to build muscle or for conditioning.	13	13	13	2.00	5
1944	Dumbbell deadlift	The dumbbell deadlift is a movement that targets the hamstrings, glutes, and back muscles. While it can be performed all the way from the ground, in the style of a barbell deadlift, it is more often performed from the top down as a Romanian deadlift. The dumbbell deadlift can be performed in low rep ranges to build posterior strength, or for moderate to high reps to build muscle and endurance.	13	13	13	2.00	5
2236	HM Running Lunge		13	13	13	2.00	1
2237	HM Bulgarian Split Squat On Chair		13	13	13	2.00	5
2238	HM Burpee		13	13	13	2.00	5
1945	Single-arm stiff-legged deadlift	The single-arm stiff-legged deadlift is a dumbbell exercise that targets the hamstrings, glutes, lower and upper back, and core. The difference between a stiff-legged deadlift and a Romanian deadlift is primarily the amount of knee bend. The knees are only slightly bent in a stiff-legged deadlift, while they bend more in a Romanian deadlift. Stiff-legged deadlifts are generally performed for low to moderate reps, such as 8-10 reps per set, with a focus on maximizing the hamstring stretch rather than moving heavy weight. Feel free to wear a weight belt to protect your lower back.	13	13	13	2.00	5
1946	HM Dumbbell Overhead Squat		13	13	13	2.00	5
1947	HM Dumbbell Squat		13	13	13	2.00	5
1948	UNS Dumbbell Goblet Squat		13	13	13	2.00	5
1949	Single-Arm Dumbbell Snatch		13	13	13	2.00	5
1950	KV Dumbbell Lunges		13	13	13	2.00	5
1951	Holman Squat to Biceps Curl		13	13	13	2.00	5
1952	Holman Burpee to Biceps Curl		13	13	13	2.00	5
1953	Holman Slow Weighted Reverse Lunge		13	13	13	2.00	5
1954	Holman Slow Weighted Plie Squat		13	13	13	2.00	5
1955	Holman Weighted Lunge Jump with Biceps Curl		13	13	13	2.00	5
1956	Holman Left Reverse Lunge Chest Press to Left Knee-Up Chest Press		13	13	13	2.00	5
1957	Holman Weighted Lunge Jump with Chest Press		13	13	13	2.00	5
1958	Holman Weighted Half Jack to Biceps Curl		13	13	13	2.00	5
1959	Holman Weighted Half Jack to Chest Press		13	13	13	2.00	5
1960	Holman 180 Jump to Renegade Side Raise		13	13	13	2.00	5
1961	Holman Right Reverse Lunge Biceps Curl to Right Knee-Up Biceps Curl		13	13	13	2.00	5
1962	Holman Roll-Back to Squat Thrust to Renegade Row		13	13	13	2.00	5
1963	Holman Roll-Back to Squat Thrust to Renegade Triceps Press		13	13	13	2.00	5
1964	Holman Weighted Narrow Squat Jump		13	13	13	2.00	5
1965	Holman Diagonal Deadlift		13	13	13	2.00	5
1966	Holman Weighted Burpee to Triceps Press		13	13	13	2.00	5
1967	Holman Squat Thrust Overhead Press		13	13	13	2.00	5
1968	Holman Weighted Burpee to Chest Press		13	13	13	2.00	5
1969	Holman Squat to Right-Arm Overhead Press		13	13	13	2.00	5
1970	Holman Right Lunge Jump with Right Overhead Press		13	13	13	2.00	5
1971	Holman Left Lunge Jump with Left Overhead Press		13	13	13	2.00	5
1972	Holman Heavy Hip Drive		13	13	13	2.00	5
1973	Holman Squat to Left-Arm Overhead Press		13	13	13	2.00	5
1974	Holman Weighted Lunge Jump to Floor Lunge Jump		13	13	13	2.00	5
1975	Holman Alternating Weighted Lunge Jump to Chest Press		13	13	13	2.00	5
1976	Holman Weighted Burpee to Overhead Alternating Reverse Lunge		13	13	13	2.00	5
1977	Holman Weighted 180 Jump to Chest Press		13	13	13	2.00	5
1978	Holman Alternating Side Squat Overhead Press		13	13	13	2.00	5
1979	Holman Right Lunge with Right Biceps Curl		13	13	13	2.00	5
1980	Holman Left Lunge with Left Biceps Curl		13	13	13	2.00	5
1981	Holman Squat Thrust to Alternating Front Raise		13	13	13	2.00	5
1982	Dumbbell racked reverse lunge	The dumbbell racked reverse lunge is a popular lower-body movement that targets the muscles of the quads, glutes, hamstrings, and hips. Holding dumbbells in the racked position further challenges the core and upper-back muscles to maintain posture while the lower body moves. Lunge variations are often performed for moderate to high reps, such as 8-12 reps per leg or more, as part of the lower-body portion of a workout. If this movement hurts your knees, try performing split squats instead.	13	13	13	2.00	5
1983	Total Fitness Dumbbell Reverse Lunge	The dumbbell reverse lunge is a great single-leg movement that strengthens and builds the quads, hamstrings, and glutes.	13	13	13	2.00	5
1984	Single-arm dumbbell snatch-	The single-arm dumbbell snatch is an explosive exercise that builds full-body power and targets the muscles of the hips, back, and shoulders. It involves lifting a dumbbell from the ground to overhead in a single movement. It can be performed for low reps with a focus on power and speed, or for higher reps to build muscle or as part of a metabolic conditioning circuit.	13	13	13	2.00	5
1985	Total Fitness Dumbbell Step-Up	The dumbbell step-up is a great exercise for building lower-body strength and power. The dumbbell version is better for intermediate and advanced lifters than beginners, who should begin by performing these unweighted.	13	13	13	2.00	5
1986	Single-arm dumbbell front squat	The single-arm dumbbell front squat is an exercise that targets the quads, glutes, and hamstrings, as well as the upper body. It also challenges oblique strength due to the offset loading. It can be performed in strength and muscle-focused workouts, in circuit training, or as part of a larger dumbbell complex with movements like single-arm dumbbell clean and presses.	13	13	13	2.00	5
1987	King Maker Weighted Jump Squat	The dumbbell jump squat takes a classic bodybuilding move, the squat, and adds a plyometric element, the jump. It builds not only lower-body strength but also explosiveness.	13	13	13	2.00	5
1988	3D dumbbell lunge	The 3D dumbbell lunge is a sequence of lower-body exercises that target the muscles of the glutes, quads, and hamstrings from a variety of angles. It consists of one curtsy lunge with each leg, followed by one reverse lunge with each leg. This lunge variation is most commonly performed for multiple rounds as part of a lower-body circuit or workout.	13	13	13	2.00	5
1989	MetaBurn Dumbbell Burpee		13	13	13	2.00	5
1990	Dumbbell jump squat with rotation	The dumbbell jump squat with rotation is a popular movement combining an explosive lower-body movement with extra upper-body loading in the form of dumbbells held in the hands. Each jump ends with the body turned 90 degrees, adding a rotational power component to the lift. It is usually performed with light weights for high reps in fat-loss and conditioning workouts.	13	13	13	2.00	5
1991	MetaBurn Dumbbell Wide Squat to Rack		13	13	13	2.00	5
1992	MetaBurn Reverse Lunge To High Pull		13	13	13	2.00	5
1993	MetaBurn Reverse Lunge With Overhead Raise		13	13	13	2.00	5
1994	MetaBurn Squat to Triceps Extension		13	13	13	2.00	5
1995	30 Legs Dumbbell Goblet Squat		13	13	13	2.00	5
1996	30 Legs Dumbbell Squat		13	13	13	2.00	5
1997	Dumbbell step-down reverse lunge	The dumbbell step-down reverse lunge is an exercise targeting the lower body, particularly the glutes and hamstrings. The front foot is slightly elevated during this movement, making the subsequent step-down more pronounced and difficult. These are usually performed for time or for relatively high reps, such as 10 reps or more per side.	13	13	13	2.00	5
1998	Tire flip	The tire flip is an exercise that works the entire body, starting from a deadlift position and ending with a giant tire being flipped over. Each flip moves the tire farther in one direction until a set has been completed. It can be performed for time or reps as part of a functional fitness or athleticism-focused workout.	13	13	13	2.00	7
1999	Single Leg Push-off		13	13	13	1.00	3
2000	Bear crawl sled drag	The bear crawl sled drag is an advanced variation of the bear crawl exercise involving added resistance from a sled or other weight. If no sled is available, other viable options include dragging chain, a barbell plate, or a tire. The bear crawl sled drag is an intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups, particularly the shoulders, core, and legs. It can be done in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	13	13	13	2.00	7
2001	Bicycling		13	13	13	2.00	1
2002	Hex-bar deadlift	The hex bar deadlift is a variety of deadlift performed in a hexagonal barbell also known as a trap bar. The bar is held with a parallel (palms in) grip outside of the legs. It is biomechanically different from a barbell deadlift in that it lines up with a lifters center of gravity, rather than placing the weight in front of their body. It activates all of the same muscle groups as conventional or sumo deadlifts, including the glutes, quads, hamstrings, lower back, lats, upper back, and grip.	13	13	13	2.00	5
2003	Skating		13	13	13	1.00	1
2004	Weighted sissy squat	The weighted sissy squat is an exercise primarily targeting the quadriceps. In sissy squats, the knees travel over the toes, placing the quads under a fairly extreme stretch. They are usually performed for moderate to high reps as part of a lower-body training session.	13	13	13	2.00	5
2005	Dumbbell step-up	The dumbbell step-up is a great exercise for building lower-body strength and power. It targets all the same muscles as bodyweight step-ups, such as the quads, glutes, and hamstrings, but allows for greater muscular overload.	13	13	13	2.00	5
2006	Yoke Walk		13	13	13	1.00	7
2007	Front Cone Hops (or hurdle hops)		13	13	13	1.00	3
2008	Weighted Squat		13	13	13	1.00	5
2009	Bench skip	The bench skip is an explosive lower-body exercise that involves alternating the position of the feet on top of a bench. It primarily targets the muscles of the lower body, but is also a serious cardiovascular challenge. It is often performed for high reps or for time as part of a fat-loss or athleticism-focused workout or circuit.	13	13	13	2.00	3
2010	Backward Drag		13	13	13	1.00	7
2011	Sled Push	The sled push is a conditioning exercise that targets the cardiovascular system and the muscles of the lower body. It involves pushing a sled along a turf or other flat surface either for time or distance. Depending on your type of equipment, you may be pushing handles or straps in front of the sled. It can be used as part of a dynamic warm-up or for power training, as a finisher, or as part of a conditioning workout or circuit.	13	13	13	2.00	7
2012	Barbell squat with plate slide	The barbell squat with plate slide is an exercise targeting the quadriceps, with the plate slide also working the adductors and abductors. It can help you get more total-leg and hip development out of squats, but is probably not the sort of thing you want to do with a seriously heavy load on your back.	13	13	13	2.00	5
2013	Suspended split squat	The suspended split squat is a single-leg squat variation performed with the rear leg in a suspension strap system. This allows the rear leg to move slightly more naturally than it would be able to on a bench. The exercise targets the quads, hamstring, and glute muscles on the front leg, but also taxes and stretches the quads on the rear leg.	13	13	13	2.00	5
2014	Intermediate Hip Flexor and Quad Stretch		13	13	13	1.00	6
2015	Sled Drag - Harness		13	13	13	2.00	7
2016	Burpee over barbell	The burpee over barbell is an exercise that takes the burpee, a popular functional fitness move, and separates each rep with a lateral jump across the barbell. It works the cardiovascular system, but also the chest, quads, glutes, hamstrings, and abs. This exercise is a favorite of many athletes, including obstacle race participants.	13	13	13	2.00	3
2017	Dumbbell walking lunge-	The dumbbell walking lunge is a popular lower-body movement that targets the muscles of the quads, glutes, hamstrings, and hips. It also works the core and upper-back muscles to maintain posture while the lower body moves. The dumbbell walking lunge is often performed for moderate to high reps, such as 8-12 reps per leg or more, as part of the lower-body portion of a workout. If this movement hurts your knees, try performing reverse lunges or split squats instead.	13	13	13	2.00	5
2018	Single-Leg Box Jump		13	13	13	1.00	3
2019	Conans Wheel		13	13	13	1.00	7
2020	Single-Leg Hop Progression		13	13	13	1.00	3
2021	Rickshaw Deadlift		13	13	13	1.00	7
2022	Single-cone sprint drill	The single-cone sprint drill is an agility drill that involves moving quickly around a single cone. It demands that an athlete start, stop, and change directions all in a short period of time and a small space. It can be beneficial for football players and other athletes where quick changes of direction are important.	13	13	13	2.00	3
2023	Single-Leg Stride Jump		13	13	13	1.00	3
2024	Trap Bar Jump		13	13	13	1.00	3
2025	Single-Leg Lateral Hop		13	13	13	1.00	3
2026	Burpee Box-Jumps		13	13	13	2.00	3
2027	Sandbag Load		13	13	13	1.00	7
2028	Single-leg knee-tap squat	The single-leg knee-tap squat is a single-leg squat variation that involves â€œfloatingâ€ the back leg over the ground on the descent until touching just the knee to the ground or a pad. It is similar to a lunge, but without touching the back foot to the ground. It is an intense strength and coordination challenge that can work in any strength- or athleticism-focused workout.	13	13	13	2.00	5
2029	Car Deadlift		13	13	13	1.00	7
2030	Barbell Squat To A Box		13	13	13	1.00	5
2031	Double Under		13	13	13	1.00	1
2239	HM Butterfly		13	13	13	2.00	5
2240	HM Alternating Lunge Push-Up		13	13	13	2.00	5
2032	Plate push	The plate push is a conditioning exercise that targets the cardiovascular system and the muscles of the lower body. It involves pushing a plate along turf or another flat surface either for time or distance. It can be used as part of a dynamic warm-up or for power training, as a finisher, or as part of a conditioning workout or circuit.	13	13	13	2.00	1
2033	Hybrid deadlift	The hybrid deadlift is a version of the barbell deadlift in which the lifters stance is wider than a conventional position, but narrower than a wide sumo deadlift. The feet are just outside the shoulders and grip placement is just inside of the legs. Many non-competitive lifters find this position to be more spine friendly and strong than either of the other traditional stances. This variation of the deadlift has all the same benefits as the others, and is capable of building serious full-body and posterior chain strength.	13	13	13	2.00	5
2034	Boss Everline Suspension Side Run		13	13	13	2.00	5
2035	Boss Everline Lunge Sled Push		13	13	13	2.00	5
2036	Squat Bottom Position Hold		13	13	13	2.00	5
2037	TRX Squat Jump		13	13	13	2.00	5
2038	Landmine squat	The landmine squat is a lower-body exercise that uses an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. The landmine squat is similar in many ways to a goblet squat, but with slight differences due to the angle of the barbell. It can be trained in traditional muscle and strength-focused rep ranges or for higher reps.	13	13	13	2.00	5
2039	Dumbbell Bulgarian split squat	The dumbbell Bulgarian split squat is a single-leg exercise targeting the quads, glutes, and hamstrings. Overloading the movement with dumbbells usually presents less of a balance challenge than putting a barbell on the back. Dumbbell split squats are usually performed for moderate to high reps, such as 8-12 reps per leg, but they are also effective done with heavier weights in lower rep ranges.	13	13	13	2.00	5
2040	Holman Towel Alternating Prisoner Reverse Lunge		13	13	13	2.00	5
2041	Holman Weighted Burpee to Belly Touch		13	13	13	2.00	5
2042	Holman Weighted Burpee to Front Punch		13	13	13	2.00	5
2043	Holman Weighted Low Squat Punch		13	13	13	2.00	5
2044	Holman Weighted Hook Punch to Squat Thrust		13	13	13	2.00	5
2045	Holman Towel Alternating Side Lunge Squat		13	13	13	2.00	5
2046	Holman Weighted Burpee to Renegade Side Punch		13	13	13	2.00	5
2047	Holman Weighted Reverse Lunge to Knee-Up Overhead Press		13	13	13	2.00	5
2048	Holman Lunge Jump with Overhead Press		13	13	13	2.00	5
2049	Holman Weighted Burpee to Belly Touch to Standing T		13	13	13	2.00	5
2050	Holman Weighted Squat Jump		13	13	13	2.00	5
2051	Holman Weighted Plie Squat		13	13	13	2.00	5
2052	Holman Heels-Elevated Sissy Squat		13	13	13	2.00	5
2053	Holman Squat Jump to Overhead Press		13	13	13	2.00	5
2054	Holman 180 Jump to Overhead Press		13	13	13	2.00	5
2055	Holman Weighted Burpee to Row		13	13	13	2.00	5
2056	Holman Weighted Burpee to 180 Jump		13	13	13	2.00	5
2057	Holman Weighted 180 Jump		13	13	13	2.00	5
2058	Holman Weighted Narrow-Mid-Wide Hop		13	13	13	2.00	5
2059	Holman Alternating Weighted Diagonal Burpee		13	13	13	2.00	5
2060	Holman Towel Burpee to Push-Up		13	13	13	2.00	5
2061	Holman Towel Right Side Squat		13	13	13	2.00	5
2062	ACFT Sprint-drag-carry	The sprint-drag-carry is a strength and endurance relay that is part of the new Army Combat Fitness Test or ACFT. It combines sprinting, reverse sled drag, side shuffle, and a farmers carry to test overall strength and athletic conditioning. Practicing this relay as a drill is great for developing strenght, speed, endurance, and power, and can also be great conditioning work for lifters and athletes of all ability levels.	13	13	13	2.00	5
2063	Cable Hip Adduction		13	13	13	1.00	5
2064	Cable Deadlifts		13	13	13	1.00	5
2065	KV Cable Squat		13	13	13	2.00	5
2066	Single-Leg Press	The single-leg leg press is an exercise targeting the quadriceps one leg at a time. Many lifters prefer the leg press to squatting for several reasons, including the perception that itâ€™s safer for the spine.	13	13	13	2.00	5
2067	Stair climber	The stair climber is a popular cardio machine found in most commercial gyms. Along with burning a ton of calories, the stair climber also helps build strength in the lower body, especially the glutes. It can work well at higher speeds for interval-style conditioning training, but also works well at slower paces for steady-state cardio.	13	13	13	2.00	1
2068	Leg Press	The leg press is a machine exercise targeting the quadriceps. Itâ€™s favorite among lifters who prefer the seated position to standing with a load on the spine.	13	13	13	2.00	5
2069	Elliptical trainer	The elliptical trainer is a popular machine for cardiovascular training without the significant impact on your joints of running. On many machines, you can adjust the resistance level to make the movement more difficult for all four limbs. The elliptical is a mainstay in most commercial gyms, and can be equally effective for HIIT-style interval workouts or for longer-duration endurance work.	13	13	13	2.00	1
2070	Narrow-stance leg press	The narrow-stance leg press is a machine-based exercise that targets the muscles of the legs. It emphasizes the quads, particularly the muscles of the outer quads and hips. It is often used as an accessory for squats, or as a muscle-building movement during lower-body training when it is usually performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2071	Narrow Stance Hack Squats		13	13	13	1.00	5
2072	Stairmaster	The stair climber is a popular cardio machine found in most commercial gyms. Along with burning a ton of calories, the stair climber also helps build strength in the lower body, especially the glutes. It can work well at higher speeds for interval-style conditioning training, but also works well at slower paces for steady-state cardio.	13	13	13	2.00	1
2073	Machine Squat		13	13	13	2.00	5
2241	HM Comet		13	13	13	2.00	5
2242	HM Couch Stretch		13	13	13	2.00	5
2243	HM Down Up		13	13	13	2.00	5
2244	HM Duck Walk		13	13	13	2.00	5
2245	HM Fragon		13	13	13	2.00	5
2074	Smith machine back squat	The Smith machine back squat is a machine-based exercise targeting the muscles of the lower body. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a full-body or lower-body workout.	13	13	13	2.00	5
2075	Leg Extensions	The leg extension is an isolation exercise for the quads.	13	13	13	2.00	5
2076	Treadmill running	Treadmill running is a popular cardiovascular exercise performed on a machine that is available in most gyms. Performing this exercise on a treadmill allows you to adjust the speed of your running and, depending on the machine, perform it on an adjustable incline. Many machines also have built-in heart rate monitors and timers to help you track your progress.	13	13	13	2.00	1
2077	Stationary bike	The stationary bike is a popular cardio machine found in most commercial gyms. Along with burning a ton of calories, the stationary bike also helps develop the lower body. Stationary bikes come in multiple variations, ranging from ones that resemble riding a bike, to recumbent bikes, to fan bikes that work both the arms and the legs. No matter the variation, a stationary bike can work well at higher speeds for interval-style conditioning training, but also works well at slower paces for steady-state cardio.	13	13	13	2.00	1
2078	Treadmill jogging	Treadmill jogging is a popular cardiovascular exercise performed on a machine that is available in most gyms. Performing this exercise on a treadmill allows you to adjust the speed of your jogging and, depending on the machine, perform it on an adjustable incline. Many machines also have built-in heart rate monitors and timers to help you track your progress.	13	13	13	2.00	1
2079	Recumbent Bike		13	13	13	1.00	1
2080	Smith machine leg press	The Smith machine leg press is a machine-based movement that targets the quads, glutes, and hamstrings. It can serve as a substitute for the leg press or be programmed similarly to the leg press. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of lower-body training. If your Smith machine has safety bars, set them at a height that allows you a full range of motion while giving adequate protection from the weight potentially falling.	13	13	13	2.00	5
2081	Lying Machine Squat		13	13	13	2.00	5
2082	Seated Leg Press	The seated leg press is a lower body exercise that targets the quads, adductors, glutes, and hamstrings.	13	13	13	2.00	5
2083	Smith machine pistol squat	The Smith machine pistol squat is a machine-based exercise that targets the quads, glutes, and hamstrings. It is similar in form to a pistol squat but is performed with a bar on the shoulders. This adds extra resistance, but also eliminates some of the balance challenge of single-leg squats. This squat variation can be performed in low reps for strength or for higher reps for muscle gain.	13	13	13	2.00	5
2084	Leverage Deadlift		13	13	13	1.00	5
2085	Leg press-	The leg press is a machine exercise targeting the leg muscles, including the quads, glutes, and hamstrings. Its a favorite among lifters who prefer the seated position to standing with a load on the spine. The leg press is often used as an accessory for squats or deadlifts, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2086	TBS Hack Squat	The hack squat is a machine-based exercise that targets the muscles of the legs, particularly the quadriceps. It is often used as an accessory for squats, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2087	Leg Extensions - Gethin Variation	The leg extension is an isolation exercise for the quads.	13	13	13	2.00	5
2088	Seated leg press-	The seated leg press is a machine-based exercise that targets the quads, glutes, and hamstrings. It is similar in many ways to larger leg press machines, but often utilizes a selectorized weight stack rather than plate loading. Leg press variations are often used as an accessory for squats or deadlifts, but can also be the main lower-body movement in a workout. This movement is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2089	Smith machine front squat	The Smith machine front squat is a machine-based exercise targeting the muscles of the lower body. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a full-body or lower-body workout.	13	13	13	2.00	5
2090	Machine Deadlift - Gethin Variation		13	13	13	2.00	5
2091	Single-leg hack squat	The single-leg hack squat is a lower-body exercise mainly targeting the quads, performed one side at a time per set. It is often used as an accessory for squats, or as a muscle-building movement during lower-body training, and is usually performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2092	Narrow-stance hack squat	The narrow-stance hack squat is a machine-based exercise that targets the muscles of the legs, particularly the quadriceps. It is often used as an accessory for squats, or as a muscle-building movement during lower-body training, and is usually performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2093	Alternating Single-Leg Curl - Gethin Variation		13	13	13	2.00	5
2094	Stiff-Legged Deadlift - Gethin Variation	The barbell stiff-legged deadlift targets the hamstrings, glutes, lower and upper back, as well as the core. It is a popular accessory movement for the deadlift, but also a muscle-building hamstring movement.	13	13	13	2.00	5
2095	Single-Leg Press - Gethin Variation	The single-leg leg press is an exercise targeting the quadriceps one leg at a time. Many lifters prefer the leg press to squatting for several reasons, including the perception that itâ€™s safer for the spine.	13	13	13	2.00	5
2096	Hack squat-	The hack squat is a machine-based exercise that targets the muscles of the legs, particularly the quadriceps. It is often used as an accessory for squats, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2097	Smith machine lunge squat	The Smith machine lunge squat is an exercise targeting the quads, glutes, and hamstrings. Using added weight allows you to overload the exercise beyond body weight and perform the movement in strength ranges. The Smith machine mimics a barbell but provides more stability.	13	13	13	2.00	5
2246	HM Frankenstein		13	13	13	2.00	5
2098	Hack Squat - Gethin Variation	The hack squat is a machine-based exercise that targets the muscles of the legs, particularly the quadriceps. It is often used as an accessory for squats, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	3.00	5
2099	Leg Press - Gethin Variation	The leg press is a machine exercise targeting the quadriceps. Itâ€™s favorite among lifters who prefer the seated position to standing with a load on the spine.	13	13	13	2.00	5
2100	AM Leg Press	The leg press is a machine exercise targeting the quadriceps. Itâ€™s favorite among lifters who prefer the seated position to standing with a load on the spine.	13	13	13	2.00	5
2101	Leg extension	The leg extension is a popular machine-based exercise for the legs, particularly the quadriceps. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of a leg pre-exhaust or as a muscle-building movement for lower-body training.	13	13	13	2.00	5
2102	UP Quad Extension	The leg extension is an isolation exercise for the quads.	13	13	13	2.00	5
2103	UP Single-Leg Press	The single-leg leg press is an exercise targeting the quadriceps one leg at a time. Many lifters prefer the leg press to squatting for several reasons, including the perception that itâ€™s safer for the spine.	13	13	13	2.00	5
2104	UP Leg Press	The leg press is a machine exercise targeting the quadriceps. Itâ€™s favorite among lifters who prefer the seated position to standing with a load on the spine.	13	13	13	2.00	5
2105	Pop Squat On Leg Press		13	13	13	2.00	5
2106	King Maker Leg Press	The leg press is a machine exercise targeting the quadriceps. Itâ€™s favorite among lifters who prefer the seated position to standing with a load on the spine.	13	13	13	2.00	5
2107	Single-leg leg press	The single-leg leg press is a machine exercise targeting the leg muscles, including the quads, glutes, and hamstrings. The leg press is often used as an accessory for squats or deadlifts, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2108	King Maker Hack Squat	The hack squat is a machine-based exercise that targets the muscles of the legs, particularly the quadriceps. It is often used as an accessory for squats, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	2.00	5
2109	30 Legs Feet-High Leg Press		13	13	13	2.00	5
2110	30 Legs Leg Press		13	13	13	2.00	5
2111	30 Legs Leg Press Calf Raise		13	13	13	2.00	5
2112	30 Legs Lying Leg Curl		13	13	13	2.00	5
2113	30 Legs Machine Hack Squat		13	13	13	2.00	5
2114	30 Legs Single-Leg Leg Extension		13	13	13	2.00	5
2115	30 Legs Single-Leg Leg Press		13	13	13	2.00	5
2116	30 Legs Single-Leg Lying Leg Curl		13	13	13	2.00	5
2117	30 Legs Smith Machine Split Squat		13	13	13	2.00	5
2118	30 Legs Smith Machine Squat		13	13	13	2.00	5
2119	Jumping rope	Jumping rope is a classic conditioning exercise that is popular with everyone from children to boxers to CrossFit athletes. It targets many different muscles, including the calves, glutes, shoulders, and upper back, and is great for everything from fat loss to improving overall athletic performance.	13	13	13	2.00	1
2120	Forward lunge	The forward lunge is a lower-body bodyweight exercise targeting the quads, glutes, and hamstrings. It can also be performed holding dumbbells or other weights. The forward lunge places more emphasis on the quads than other lunge variations. It can be performed for time or reps in the lower-body portion of any workout.	13	13	13	2.00	5
2121	Side-to-side box skip	The side-to-side box skip is an explosive lower-body exercise that involves jumping laterally over a bench or box, landing with one foot on top of the surface, and then switching positions. It primarily targets the muscles of the lower body, but is also a serious cardiovascular challenge. It is often performed for high reps or for time as part of a fat-loss or athleticism-focused workout or circuit.	13	13	13	2.00	3
2122	Bodyweight squat	The bodyweight squat is a fundamental exercise that strengthens the quads, glutes, and hamstrings. It can be performed as part of a dynamic warm-up, for time or reps during a workout, or for hip and spine mobility any time.	13	13	13	2.00	5
2123	Broad jump	The broad jump is an explosive lower-body exercise. It is a common way to measure explosive hip and lower-body strength in athletes. The more explosive you are, the farther youll be able to jump.	13	13	13	2.00	3
2124	Burpee	The burpee is a high-intensity exercise that recruits the entire body to build strength and aerobic capacity. It is common in CrossFit workouts and group fitness classes, but can also be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	1
2125	Trail Running/Walking		13	13	13	2.00	1
2126	Scissors Jump	The alternating lunge jump is an explosive bodyweight exercise that targets the lower-body muscles, including the quads, glutes, and hamstrings. It can be performed for time or reps in power training, and is also effective in any fat-loss or athleticism-focused workout.	13	13	13	3.00	3
2127	Jumping jack-	The jumping jack is a classic calisthenics exercise to improve overall conditioning. Itâ€™s one the most recognizable exercises on the planet, and itâ€™s almost synonymous with training for military recruits. It can be done for time or reps, often in dynamic warm-ups or to mobilize the hips and shoulders.	13	13	13	2.00	3
2128	Arms-crossed jump squat	The arms-crossed jump squat is an explosive version of the jump squat. Crossing your arms eliminates any extra power that could come from swinging your arms, making the movement extra strict and challenging for the lower body. It can be performed for time or reps and is especially effective in a fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	5
2129	Bodyweight Reverse Lunge	The reverse lunge is a lower-body exercise targeting the quads, glutes, and hamstrings. The reverse lunge places more emphasis on the glutes than other lunge variations.	13	13	13	2.00	5
2130	Alien Squat		13	13	13	1.00	3
2196	Squat with alternating side leg raise	The squat with alternating side leg raise is a bodyweight version of the squat, but with a lateral leg lift to add extra focus to the abductor muscles. It can be performed for time or for reps as part of a dynamic warm-up for the lower body, or in any lower-body portion of a workout.	13	13	13	2.00	5
2131	Treadmill walking	Treadmill walking is a popular cardiovascular exercise performed on a machine that is available in most gyms. Performing this exercise on a treadmill allows you to adjust the speed of your walking and, depending on the machine, perform it on an adjustable incline. Many machines also have built-in heart rate monitors and timers to help you track your progress.	13	13	13	2.00	1
2132	Rocket Jump		13	13	13	1.00	3
2133	Depth jump box jump	The depth jump box jump is a plyometric exercise that entails jumping off one box, dropping into a squat, and then jumping up onto another box. These are all performed fluidly to complete one rep. Depth jumps have been a staple of high-level athletic programming for decades. They are usually performed for low reps with a focus on power and technique. If they hurt your knees or back, consider performing box jumps or squat jumps instead.	13	13	13	2.00	3
2134	Bodyweight Walking Lunge	The walking lunge is a lower-body exercise that targets the glutes, quads, and hamstrings while challenging stability and balance. It can be performed for reps, time, or distance in the lower-body portion of any workout.	13	13	13	2.00	5
2135	Walking High Knees		13	13	13	2.00	1
2136	Lateral lunge	The lateral lunge is a lower-body bodyweight movement that works the quads, glutes, and hamstrings. It can also be performed holding dumbbells or other weights. It is often performed for reps as part of a dynamic warm-up or mobility routine but can also work in a circuit or other workouts.	13	13	13	2.00	5
2137	Jump Squat	The jump squat is an explosive bodyweight exercise targeting the quads, hamstrings, and glutes. It is also a serious cardiovascular challenge when done for reps. It can be performed as a power exercise to build jumping power, or in any fat-loss or athleticism-focused workout.	13	13	13	2.00	3
2138	Over bench jump	The over bench jump is a plyometric exercise requiring only a weight bench to perform. It improves jumping ability and athleticism while burning a lot of calories.	13	13	13	2.00	3
2139	Split Jump	The alternating lunge jump is an explosive bodyweight exercise that targets the lower-body muscles, including the quads, glutes, and hamstrings. It can be performed for time or reps in power training, and is also effective in any fat-loss or athleticism-focused workout.	13	13	13	2.00	3
2140	90-degree jump squat	The 90-degree jump squat is an explosive bodyweight exercise that targets the muscles of the lower body, including the quads, glutes, and hamstrings, as well as the cardiovascular system. It can be performed for time or reps, usually in a fat-loss or athleticism-focused circuit workout.	13	13	13	2.00	3
2141	Skip	The skip is an exercise that builds power and explosiveness in the legs. Its commonly performed by children and in gym classes, but is also great for working the legs and hip flexors, making it a favorite warm-up for athletes who need to explode vertically.	13	13	13	2.00	3
2142	Kneeling hip flexor stretch	The kneeling hip flexor stretch is a stretch targeting greater flexibility in the front side of the hips. It targets a chronically tight muscle group and is often performed as part of a dynamic warm-up, a cool-down, or as recovery work after training.	13	13	13	2.00	6
2143	Iron Crosses (stretch)		13	13	13	2.00	6
2144	All Fours Quad Stretch		13	13	13	1.00	6
2145	Lying quad stretch with band	The lying quad stretch with band is a simple way to stretch a chronically tight muscle group of the lower body. It is common in stretching and yoga classes but can also be performed individually as part of a warm-up, paired with movements in a workout, or as part of a cool-down or recovery strategy.	13	13	13	2.00	6
2146	One Half Locust		13	13	13	2.00	6
2147	Standing Hip Flexors		13	13	13	2.00	6
2148	Looking At Ceiling		13	13	13	2.00	6
2149	Rear Leg Raises		13	13	13	1.00	6
2150	On Your Side Quad Stretch		13	13	13	2.00	6
2151	On-Your-Back Quad Stretch		13	13	13	2.00	6
2152	Standing Elevated Quad Stretch		13	13	13	2.00	6
2153	Thigh killa	The thigh killa is a challenging lower-body bodyweight exercise that builds muscular endurance with a series of hops and bodyweight squats. It can be performed for time or reps, usually in a circuit workout or as a lower-body finisher.	13	13	13	2.00	5
2154	Southpaw sprawl	The southpaw sprawl is a full-body movement that combines elements of a single-arm plank and a sprawl. It also has a rotational component, with a jumping leg-cross and torso twist in a single-arm plank position. It is a challenging move that trains balance, core strength, and many muscle groups, making it work well in a time-efficient bodyweight circuit workout.	13	13	13	2.00	3
2155	Stride Jump Crossover		13	13	13	2.00	3
2156	Side Standing Long Jump		13	13	13	2.00	3
2157	Wall squat	The wall squat is a bodyweight exercise targeting the quadriceps, as well as other muscles in the lower body and core. The lifters back is flat against a wall, and the back slides down and up the wall during each rep. If you dont have a smooth wall to slide on, the exercise can also be performed with an exercise ball between the back and the wall.	13	13	13	2.00	5
2158	Slide Jump Shot		13	13	13	1.00	3
2159	Sprawl frog kick	The sprawl frog kick is an explosive bodyweight exercise that targets multiple muscle groups across the upper and lower body. It is similar to a traditional sprawl, but with an extra hop in the middle of each rep. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	3
2160	Lateral Speed Step		13	13	13	2.00	1
2161	Side Hop-Sprint		13	13	13	2.00	3
2162	Pop squat	The pop squat is an explosive bodyweight exercise that targets the lower-body muscles, including the quads, glutes, and hamstrings. It is similar to a jump squat, but alternates between a narrow and wide stance with each jump. It can be performed for time or reps in power training and is also effective in any fat-loss or athleticism-focused workout.	13	13	13	2.00	3
2163	Star Jump		13	13	13	1.00	3
2164	Side Lunge Touching Heel	The side lunge cross-body heel-touch is a lower-body exercise targeting the quads, glutes, and hamstrings. The heel-touch adds a slight rotational challenge.	13	13	13	2.00	5
2165	Lying Prone Quadriceps		13	13	13	1.00	6
2166	Fast Kick With Arm Circles		13	13	13	1.00	1
2220	Seated Quad Contraction		13	13	13	2.00	5
2221	HM Squat with Alternating Leg Extension		13	13	13	2.00	5
2222	HM Air Squat		13	13	13	2.00	5
2223	HM Alternating Jump Lunge		13	13	13	2.00	5
2167	Single-leg box squat	The single-leg box squat is a bodyweight exercise that targets the muscles of the lower body, including the quads, glutes, and hamstrings. It is similar in form to a pistol squat, except that you sit to a box. This allows you to customize the depth of the movement to your movement abilities and mobility level. For this reason, the single-leg box squat is a popular movement for building leg strength in beginning trainees. It can be performed in lower strength-focused rep ranges, such as 5-8 reps per leg, or for higher reps for muscle building.	13	13	13	2.00	5
2168	Defensive Slide		13	13	13	1.00	1
2169	Quick Leap		13	13	13	2.00	3
2170	Vertical Mountain Climber		13	13	13	1.00	1
2171	Reverse Burpee		13	13	13	1.00	3
2172	Football Up-Down		13	13	13	1.00	1
2173	Jump lunge heel kick	The jump lunge heel kick is a high-intensity, full-body exercise targeting the quads, glutes, and hamstrings. It combines a jump lunge with a standing hamstring stretch in a unique combo that also challenges balance. It can be performed for time or reps as part of a fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	3
2174	Burpee box jump	The burpee box jump is an explosive bodyweight exercise that combines a burpee with a leap onto a box or step. First, you perform a traditional burpee, and then instead of jumping into the air, you jump onto a box. This makes you focus on power generation in the jump, making each rep more challenging. Burpee box jumps are often performed for high reps as part of metabolic conditioning circuits or workouts.	13	13	13	2.00	3
2175	Linear Depth Jump		13	13	13	2.00	3
2176	Slow Jog		13	13	13	1.00	1
2177	High knees	High knees is a full-body, cardio-based exercise with an emphasis on the lower body. It is often performed for reps or time as part of a dynamic warm-up.	13	13	13	2.00	1
2178	Jumping Jack	The jumping jack is a classic calisthenics exercise to improve overall conditioning. Itâ€™s one the most recognizable exercises on the planet, and itâ€™s almost synonymous with training for military recruits. It can be done for time or reps, often in dynamic warm-ups or to mobilize the hips and shoulders.	13	13	13	2.00	1
2179	Square Hop		13	13	13	1.00	3
2180	Running lunge	The running lunge is a dynamic exercise that targets the lower body. It combines elements of a reverse lunge with a step-up, in that the front leg fully extends and the rear leg flexes up in front of the body. It targets a wide range of muscles in the lower body, including the quads, glutes, and hamstrings. It can be performed for time or reps in any lower-body workout, or in a fat-loss or athleticism-focused circuit.	13	13	13	2.00	3
2181	In-out jump squat	The in-out jump squat is a bodyweight squat variation that alternates wide and narrow jump squats. It targets the lower-body muscles, including the quads, glutes, adductors, and hamstrings, and also provides a serious cardiovascular challenge. It can be performed for time or reps and is especially effective in a fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	3
2182	Gorilla squat	The gorilla squat is a bodyweight sequence that combines two reverse lunges and a bodyweight squat. It could also be performed with dumbbells, kettlebells, or other weights. It targets most of the muscles of the lower body, including the quads, glutes, and hamstrings. It can be performed for time or reps in the lower-body portion of any workout.	13	13	13	2.00	3
2183	Burpee tuck jump	The burpee tuck jump is an explosive version of the burpee exercise that adds a tuck jump to the top of each rep. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	3
2184	Speed skater	The speed skater is an explosive version of the lateral lunge that involves jumping from side to side and landing on a single leg, then touching the ground. It challenges the lower-body muscles, including the quads, hips, and glutes, and the cardiovascular system, while training lateral movement.	13	13	13	2.00	3
2185	Jumping knee up-down	The jumping knee up-down is an explosive bodyweight movement that consists of a knee up-down followed by a jump squat. It targets the muscles of the lower body, including the quads, glutes, and hamstrings, but is also a challenging power and conditioning exercise.	13	13	13	2.00	3
2186	Jump Lunge To Feet Jack		13	13	13	2.00	3
2187	Reverse Lunge Rotation		13	13	13	2.00	5
2188	Alternating standing knee-pull stretch	The alternating standing knee-pull stretch targets range of motion in the hips, hamstrings, and lower back. Its a common movement in dynamic warm-ups for athletics or lower-body training, but can also be used to "limber up" for activity anytime.	13	13	13	2.00	6
2189	Seal jack	The seal jack is a variation on the jumping jack, one the most common calisthenic exercises on the planet. The difference between this movement and the jumping jack has to do with the arm motion. Instead of the arms coming together overhead, they come together in front of the body, like a seal clapping its fins.	13	13	13	2.00	5
2190	Kneeling quad thoracic stretch	The kneeling quad thoracic stretch is a stretch targeting greater range of motion in your thoracic spine. It is commonly included in dynamic warm-ups or cool-downs, but can also be performed as full-body mobility work any time.	13	13	13	2.00	5
2191	Single-Leg Squat With Knee Tap	The single-leg knee-tap squat is a single-leg squat variation that involves â€œfloatingâ€ the back leg over the ground on the descent until touching just the knee to the ground or a pad. It is similar to a lunge, but without touching the back foot to the ground. It is an intense strength and coordination challenge that can work in any strength- or athleticism-focused workout.	13	13	13	3.00	5
2192	Shuttle run	The shuttle run is an athletic conditioning drill thatâ€™s great for developing speed and power, as well as changing direction. Itâ€™s a favorite of football and basketball players, but it can also be great conditioning work for lifters and athletes of all ability levels.	13	13	13	2.00	1
2193	Squat Isometric Hold	The hack squat is a machine-based exercise that targets the muscles of the legs, particularly the quadriceps. It is often used as an accessory for squats, but can also be the main lower-body movement in a workout. It is often performed for moderate to high reps, such as 8-12 reps per set or more.	13	13	13	3.00	3
2194	Wall sit	The wall sit is an exercise targeting the quadriceps and core muscle. It involves descending into a squat position while leaning against a wall, then holding that position for a predetermined length of time. Its a classic leg endurance-building exercise for basketball players and gymnasts.	13	13	13	2.00	5
2224	HM Alternating Lunge-In-Place		13	13	13	2.00	5
2225	HM Alternating Side Lunge		13	13	13	2.00	5
2197	Lateral Squats	The lateral lunge is a lower-body bodyweight movement that works the quads, glutes, and hamstrings. It can also be performed holding dumbbells or other weights. It is often performed for reps as part of a dynamic warm-up or mobility routine but can also work in a circuit or other workouts.	13	13	13	2.00	5
2198	Walking lunge with twist	The walking lunge with twist is an exercise that targets the lower body and the obliques. The twist not only works the obliques, it also opens up the thoracic spine. It is a great inclusion in a dynamic warm-up for a lower-body or full-body workout, but can also be performed for time or reps in any workout.	13	13	13	2.00	5
2199	Boss Everline Backward Lunge Walk		13	13	13	2.00	5
2200	Reverse Diagonal Skaters		13	13	13	2.00	5
2201	FYR Air Squat	The bodyweight squat is a fundamental exercise that strengthens the quads, glutes, and hamstrings. It can be performed as part of a dynamic warm-up, for time or reps during a workout, or for hip and spine mobility any time.	13	13	13	2.00	5
2202	FYR Tuck Jump	The tuck jump is a vertical jump, an explosive lower-body exercise that is a common way to measure explosive hip and lower-body strength in athletes. The more explosive you are, the higher youll be able to jump.	13	13	13	2.00	5
2203	Push-up sprawl tuck jump	The push-up sprawl tuck jump is an explosive bodyweight sequence that combines three movements: the push-up, the sprawl, and the tuck jump. It is similar to a burpee, but with a tuck jump at the top. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	5
2204	FYR Running Lunge	The running lunge is a dynamic exercise that targets the lower body. It combines elements of a reverse lunge with a step-up, in that the front leg fully extends and the rear leg flexes up in front of the body. It targets a wide range of muscles in the lower body, including the quads, glutes, and hamstrings. It can be performed for time or reps in any lower-body workout, or in a fat-loss or athleticism-focused circuit.	13	13	13	2.00	5
2205	FYR Jumping Lunge	The alternating lunge jump is an explosive bodyweight exercise that targets the lower-body muscles, including the quads, glutes, and hamstrings. It can be performed for time or reps in power training, and is also effective in any fat-loss or athleticism-focused workout.	13	13	13	2.00	5
2206	FYR Sprawl Frog Kick	The sprawl frog kick is an explosive bodyweight exercise that targets multiple muscle groups across the upper and lower body. It is similar to a traditional sprawl, but with an extra hop in the middle of each rep. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	5
2207	Jump squat-	The jump squat is an explosive bodyweight exercise targeting the quads, hamstrings, and glutes. It is also a serious cardiovascular challenge when done for reps. It can be performed as a power exercise to build jumping power, or in any fat-loss or athleticism-focused workout.	13	13	13	2.00	5
2208	FYR Sprinter Burpee		13	13	13	2.00	1
2209	Single-leg burpee	The single-leg burpee is an advanced variation of the burpee exercise that involves performing all parts of the sequence with one leg at a time. It is usually performed alternating legs with each rep, but could be performed one side at a time. Performing one leg at a time increases the challenge to all parts of the body, especially the working leg, core, and shoulders.	13	13	13	2.00	5
2210	FYR Gorilla Squat	The gorilla squat is a bodyweight sequence that combines two reverse lunges and a bodyweight squat. It could also be performed with dumbbells, kettlebells, or other weights. It targets most of the muscles of the lower body, including the quads, glutes, and hamstrings. It can be performed for time or reps in the lower-body portion of any workout.	13	13	13	2.00	5
2211	Banded compass jump squat	The banded compass jump squat is an explosive squat variation performed with a band around the thighs just above the knees. This increases muscle activation in the hips and glutes, while the squat targets the quads, hamstrings, and glutes. The landing for each jump is a 90-degree rotation from the starting position. The banded compass jump squat can be performed for low reps as a power-focused exercise, or for higher reps to build muscle in the lower body, challenge conditioning, and burn fat.	13	13	13	2.00	5
2212	In-out sprawl	The in-out sprawl is a full-body movement that combines elements of a plank and a sprawl. It demands an explosive full-body jump from a plank position. It is a challenging move that trains balance, core strength, and many muscle groups, making it work well in a time-efficient bodyweight circuit workout.	13	13	13	2.00	5
2213	Knee-tuck kick-up	The knee-tuck kick-up is a bodyweight movement that targets the muscles of the abs, the rectus abdominis or "six-pack" muscles in particular. It can be performed for time or reps in the ab-focused portion of any workout.	13	13	13	2.00	5
2214	Bear crawl donkey kick	The bear crawl donkey kick is a more advanced version of the bear crawl exercise that adds a donkey kick. It adds an extra coordination and shoulder challenge to an already intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups, the shoulders, core, and legs in particular. It can be done as a full-body warm-up, in short bursts for power or circuit training, or for longer durations as cardiovascular conditioning.	13	13	13	2.00	5
2215	Southpaw sprawl with push-up	The southpaw sprawl with push-up is a full-body movement that combines elements of a plank and a sprawl, with the addition of a push-up. It also has a rotational component, with a jumping leg-cross and torso twist in a straight-arm plank position. It is a challenging move that trains balance, core strength, and many muscle groups, making it work well in a time-efficient bodyweight circuit workout.	13	13	13	2.00	5
2216	Bouncing lunge	The bouncing lunge is a bodyweight movement targeting the quads. It can be performed either for time or reps, and is often included as part of a fat-loss or athleticism-focused circuit workout.	13	13	13	2.00	5
2217	Bodyweight Squat - Gethin Variation	The bodyweight squat is a fundamental exercise that strengthens the quads, glutes, and hamstrings. It can be performed as part of a dynamic warm-up, for time or reps during a workout, or for hip and spine mobility any time.	13	13	13	2.00	5
2218	FYR Alternating Lunge	The forward lunge is a lower-body bodyweight exercise targeting the quads, glutes, and hamstrings. It can also be performed holding dumbbells or other weights. The forward lunge places more emphasis on the quads than other lunge variations. It can be performed for time or reps in the lower-body portion of any workout.	13	13	13	2.00	5
2219	Bodyweight Walking Lunge - Gethin Variation	The walking lunge is a lower-body exercise that targets the glutes, quads, and hamstrings while challenging stability and balance. It can be performed for reps, time, or distance in the lower-body portion of any workout.	13	13	13	2.00	5
2247	HM Single-Leg Squat on Chair		13	13	13	2.00	5
2248	HM Single-Leg Touchdown		13	13	13	2.00	5
2249	HM Speed Skater		13	13	13	2.00	5
2250	HM Squat Jump		13	13	13	2.00	5
2251	HM Squat Lunge		13	13	13	2.00	5
2252	HM Garland Pose		13	13	13	2.00	5
2253	HM High Knees		13	13	13	2.00	5
2254	HM In-And-Out Squat		13	13	13	2.00	5
2255	HM In-And-Out Squat Jump		13	13	13	2.00	5
2256	HM Jumping Jack		13	13	13	2.00	5
2257	HM Jumping Knee-Up		13	13	13	2.00	5
2258	HM Jumping Rope		13	13	13	2.00	5
2259	HM Right Calf-Spike Sumo Pulse		13	13	13	2.00	5
2260	HM Reverse Lunge with Kick		13	13	13	2.00	5
2261	HM Left Knee-Up		13	13	13	2.00	5
2262	HM Left-Leg Lunge And Kick-Out		13	13	13	2.00	5
2263	HM Mountain Pose		13	13	13	2.00	5
2264	HM Butt Kickers		13	13	13	2.00	5
2265	HM Right-Leg Lunge And Kick-Out		13	13	13	2.00	5
2266	HM Sumo Get-Up		13	13	13	2.00	5
2267	AM Jump Squat	The jump squat is an explosive bodyweight exercise targeting the quads, hamstrings, and glutes. It is also a serious cardiovascular challenge when done for reps. It can be performed as a power exercise to build jumping power, or in any fat-loss or athleticism-focused workout.	13	13	13	2.00	5
2268	AM Bodyweight Squat	The bodyweight squat is a fundamental exercise that strengthens the quads, glutes, and hamstrings. It can be performed as part of a dynamic warm-up, for time or reps during a workout, or for hip and spine mobility any time.	13	13	13	2.00	5
2269	High knees sprawl drill	The high knees sprawl drill is a full-body, cardio and strength-focused exercise. It can be performed for reps or time in a fast-paced circuit or other workout.	13	13	13	2.00	5
2270	UP Bulgarian Split Squat	The dumbbell Bulgaria split squat is a single-leg exercise targeting the quads, glutes, and hamstrings.	13	13	13	2.00	5
2271	UN Forward Lunge		13	13	13	2.00	5
2272	UN Front Foot Elevated Split Squat		13	13	13	2.00	5
2273	UNS Half-Kneeling Hip Flexor Stretch		13	13	13	2.00	5
2274	UNS Low Depth Jump		13	13	13	2.00	5
2275	UNS Forward-To-Reverse Lunge		13	13	13	2.00	5
2276	Holman Towel Squat Thrust		13	13	13	2.00	5
2277	Holman Towel Alternating Prisoner Squat		13	13	13	2.00	5
2278	Holman Towel Alternating Lateral Lunge		13	13	13	2.00	5
2279	Holman Squat Pull-Through Jump		13	13	13	2.00	5
2280	Holman 180 Jump		13	13	13	2.00	5
2281	Holman Foot-Elevated Knee-Up to Squat		13	13	13	2.00	5
2282	Holman Feet-Elevated Squat Thrust		13	13	13	2.00	5
2283	Holman Hands-Elevated Lunge Jump		13	13	13	2.00	5
2284	Holman Hands-Elevated Jack to Split Jump		13	13	13	2.00	5
2285	Holman Hands-Elevated Wide Squat Thrust		13	13	13	2.00	5
2286	Holman Hands-Elevated Squat Thrust to Split Jack		13	13	13	2.00	5
2287	Holman Squat Jump		13	13	13	2.00	5
2288	Holman Squat Pulse		13	13	13	2.00	5
2289	Holman Jump-Out Push-Up		13	13	13	2.00	5
2290	Holman Alternating Forward Lunge		13	13	13	2.00	5
2291	Holman Burpee to Jump		13	13	13	2.00	5
2292	Holman Pilates Single-Leg Stretch		13	13	13	2.00	5
2293	Holman Alternating Reverse Prisoner Lunge		13	13	13	2.00	5
2294	Holman Narrow-Wide Squat Jump to 180 Jump		13	13	13	2.00	5
2295	Holman 180 Jump to Lunge		13	13	13	2.00	5
2296	Holman Imaginary Jump Rope		13	13	13	2.00	5
2297	Holman Fast Feet with Hands Up		13	13	13	2.00	5
2298	Holman Hands-Elevated Alternating Lunge Jump		13	13	13	2.00	5
2299	Holman Right Split Lunge		13	13	13	2.00	5
2300	Holman Left Split Lunge		13	13	13	2.00	5
2301	Holman Plyometric Jump		13	13	13	2.00	5
2302	Holman Quad Touch Jump		13	13	13	2.00	5
2303	Holman Skate		13	13	13	2.00	5
2304	Holman Lunge Jump		13	13	13	2.00	5
2305	Holman Flying Squat Thrust		13	13	13	2.00	5
2306	Holman 90-Degree Jump		13	13	13	2.00	5
2307	Holman Half Jack to 180 Jump		13	13	13	2.00	5
2308	Holman Quick Feet to Quad Touch Jump		13	13	13	2.00	5
2309	Holman Squat Thrust to Push-Up to Super Woman		13	13	13	2.00	5
2310	Holman Plyometric Jump to 180 Jump		13	13	13	2.00	5
2311	Holman Standing Heel Click to Hands Down Heel Click		13	13	13	2.00	5
2312	Holman Burpee to 180 Jump		13	13	13	2.00	5
2313	Holman Traveling Low Jack to Belly Touch		13	13	13	2.00	5
2314	Holman Flying Squat Thrust to Shoulder Tap		13	13	13	2.00	5
2315	Holman Squat Jump to Alternating Side Lunge Jump		13	13	13	2.00	5
2316	Holman Low Squat with Low Diagonal Dumbbell Punch		13	13	13	2.00	5
2317	Holman Right Leg Hop to Right Reverse Lunge		13	13	13	2.00	5
2318	Holman Left Leg Hop to Left Reverse Lunge		13	13	13	2.00	5
2319	Holman Burpee to Open Stance		13	13	13	2.00	5
2320	Holman Diagonal Squat Thrust to Renegade Forward Punch		13	13	13	2.00	5
2321	Holman Bear Crawl		13	13	13	2.00	5
2322	Holman Bear Crawl to Donkey Kick		13	13	13	2.00	5
2323	Holman Bear Crawl to Froggy Push-Up		13	13	13	2.00	5
2324	Holman Bear Crawl to Shoulder Tap		13	13	13	2.00	5
2325	Holman Burpee to Tuck Jump		13	13	13	2.00	5
2326	Holman Burpee to Flying Squat Thrust to Tuck Jump		13	13	13	2.00	5
2327	Holman Forward Lunge to Reverse Lunge		13	13	13	2.00	5
2328	Holman Renegade Lunge Jump		13	13	13	2.00	5
2329	Holman Squat Jump to Lunge Jump		13	13	13	2.00	5
2330	Holman Prisoner Reverse Lunge		13	13	13	2.00	5
2331	Holman Wide-to-Narrow Squat Jump		13	13	13	2.00	5
2332	Holman Donkey Run		13	13	13	2.00	5
2333	Holman Weighted Wide-to-Narrow Squat Jump		13	13	13	2.00	5
2334	Holman Wide-to-Narrow Donkey Kick		13	13	13	2.00	5
2335	Holman Mule Kick		13	13	13	2.00	5
2336	Holman Goal Post to Squat		13	13	13	2.00	5
2337	Holman Frogger Squat to Heel Click		13	13	13	2.00	5
2338	Holman Stair Sprint		13	13	13	2.00	5
2339	Holman Stair Bear Crawl		13	13	13	2.00	5
2340	Holman Burpee to Flying Squat Thrust		13	13	13	2.00	5
2341	Holman Flying Squat Thrust to Push-Up		13	13	13	2.00	5
2342	Holman Foot-Elevated Step-To-Lunge		13	13	13	2.00	5
2343	Holman Split Lunge		13	13	13	2.00	5
2344	Holman Stair Climb		13	13	13	2.00	5
2345	Holman Burpee to Flying Jack		13	13	13	2.00	5
2346	Holman Right Reverse Lunge		13	13	13	2.00	5
2347	Holman Left Reverse Lunge		13	13	13	2.00	5
2348	Holman Squat Tap to Hop		13	13	13	2.00	5
2349	Holman Squat Tap to Jump-Forward-Jump-Back		13	13	13	2.00	5
2350	Holman Squat Hip Drive		13	13	13	2.00	5
2351	Holman Alternating Double Lunge Hop		13	13	13	2.00	5
2352	Holman Right Reverse Lunge to Front Kick		13	13	13	2.00	5
2353	Holman Right Leg Forward Lunge Hop		13	13	13	2.00	5
2354	Holman Right Squat Thrust		13	13	13	2.00	5
2355	Holman Left Reverse Lunge to Front Kick		13	13	13	2.00	5
2356	Holman Left Leg Forward Lunge Hop		13	13	13	2.00	5
2357	Holman Left Side Diagonal Burpee		13	13	13	2.00	5
2358	Holman Left Squat Thrust		13	13	13	2.00	5
2359	Holman Wide Squat Thrust		13	13	13	2.00	5
2360	Holman Alternating Single-Leg Hop to Squat to 180 Jump		13	13	13	2.00	5
2361	Holman Right Lunge Hop to Chest Press		13	13	13	2.00	5
2362	Holman Left Lunge Hop to Overhead Press		13	13	13	2.00	5
2363	Holman 180 Jump Hop Forward Hop Back		13	13	13	2.00	5
2364	Holman Right Split Squat		13	13	13	2.00	5
2365	Holman Left Split Squat		13	13	13	2.00	5
2366	Holman Double Squat Pulse to 180 Jump		13	13	13	2.00	5
2367	Holman Towel Left Side Squat		13	13	13	2.00	5
2368	Holman Alternating Lunge Jump		13	13	13	2.00	5
2369	Holman Lunge Jump to Squat Jump		13	13	13	2.00	5
2370	Holman Burpee with Belly Touch		13	13	13	2.00	5
2371	Bootstrapper squat	The bootstrapper squat is a movement that improves mobility, muscular strength, and flexibility in the hips and hamstrings. It is usually performed as part of a dynamic warm-up for the lower body to mobilize the hips and improve squat form.	13	13	13	2.00	5
2372	Total Fitness Broad Jump	The broad jump is an explosive lower-body exercise. It is a common way to measure explosive hip and lower-body strength in athletes. The more explosive you are, the farther youll be able to jump.	13	13	13	2.00	5
2373	Total Fitness Lateral Lunge	The lateral lunge is a lower-body bodyweight movement that works the quads, glutes, and hamstrings. It can also be performed holding dumbbells or other weights. It is often performed for reps as part of a dynamic warm-up or mobility routine but can also work in a circuit or other workouts.	13	13	13	2.00	5
2374	Lateral shuffle	The lateral shuffle is a common exercise in sports training and gym classes. It involves taking steps to one side and then steps to the other side. It can be performed as part of a circuit for athletes of any level, but is also a great movement for beginners.	13	13	13	2.00	5
2375	Total Fitness Skip	The skip is an exercise that builds power and explosiveness in the legs. Its commonly performed by children and in gym classes, but is also great for working the legs and hip flexors, making it a favorite warm-up for athletes who need to explode vertically.	13	13	13	2.00	5
2376	Total Fitness Spider Lunge	The spider lunge stretch is a lower-body stretch targeting the hips, groin, and quads. It can be part of a dynamic warm-up or mobility work performed anytime.	13	13	13	2.00	5
2377	Spider lunge stretch	The spider lunge stretch is a lower-body stretch targeting the hips, groin, and quads. It can be part of a dynamic warm-up or mobility work performed anytime.	13	13	13	2.00	5
2378	Spider lunge with T-rotation	The spider lunge with T-rotation is an exercise that produces a deep stretch in the glutes and hamstrings while also rotating and mobilizing the thoracic spine region. It is a great movement to include in a dynamic warm-up, or as mobility work anytime.	13	13	13	2.00	5
2379	Standing quad stretch	The standing quad stretch is a simple exercise designed to stretch the quadriceps, the big muscles that cover most of the thighs. This is a static stretch, meaning itâ€™s usually performed by holding the stretched position for a certain length of time.	13	13	13	2.00	5
2380	Vertical jump	The vertical jump is an explosive lower-body exercise that is a common way to measure explosive hip and lower-body strength in athletes. The more explosive you are, the higher youll be able to jump.	13	13	13	2.00	5
2381	King Maker Burpee	The burpee is a high-intensity exercise that recruits the entire body to build strength and aerobic capacity. It is common in CrossFit workouts and group fitness classes, but can also be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	5
2382	King Maker Explosive High Jump	The tuck jump is a vertical jump, an explosive lower-body exercise that is a common way to measure explosive hip and lower-body strength in athletes. The more explosive you are, the higher youll be able to jump.	13	13	13	2.00	5
2383	Muscle Beach Skip		13	13	13	2.00	5
2384	Muscle Beach Broad Jump		13	13	13	2.00	5
2385	Muscle Beach Sprint		13	13	13	2.00	5
2386	Muscle Beach Front Kick		13	13	13	2.00	5
2387	Muscle Beach Side Kick		13	13	13	2.00	5
2388	Muscle Beach Spin Kick		13	13	13	2.00	5
2389	Muscle Beach Freestyle Kick		13	13	13	2.00	5
2390	MetaBurn Alternating Curtsy Lunge To Squat		13	13	13	2.00	5
2391	MetaBurn Alternating Curtsy Lunge With High Knee		13	13	13	2.00	5
2392	MetaBurn Alternating Diagonal Sprawl		13	13	13	2.00	5
2393	MetaBurn Alternating Lateral Sprawl		13	13	13	2.00	5
2394	MetaBurn Curtsy Lunge		13	13	13	2.00	5
2395	MetaBurn Frogger		13	13	13	2.00	5
2396	MetaBurn High Knee Rotation		13	13	13	2.00	5
2397	MetaBurn Side-To-Side Lunge		13	13	13	2.00	5
2398	MetaBurn Star Jump		13	13	13	2.00	5
2399	MetaBurn Tuck Jump With Knee Slap		13	13	13	2.00	5
2400	MetaBurn Lateral Bounding Hop		13	13	13	2.00	5
2401	MetaBurn Double Lunge		13	13	13	2.00	5
2402	Robertson Sprinter Step-Up		13	13	13	2.00	5
2403	FYR2 Front Kick-Through		13	13	13	2.00	5
2404	Lunge high-knee clap	The lunge high-knee clap is a full-body, cardio-based exercise with emphasis on the lower body. It includes a clap under the front leg to make the movement more powerful and strict. It can be performed either for time or reps and is a great inclusion in a fat-loss or athleticism-focused circuit workout.	13	13	13	2.00	5
2405	FYR2 Plyo Split Squat		13	13	13	2.00	5
2406	FYR2 Reverse Burpee		13	13	13	2.00	5
2407	FYR2 Reverse Burpee to Regular Burpee		13	13	13	2.00	5
2408	FYR2 Reverse Burpee Tuck Jump		13	13	13	2.00	5
2409	FYR2 Sprawlee		13	13	13	2.00	5
2410	FYR2 Squat Hold		13	13	13	2.00	5
2411	FYR2 Squat Jump		13	13	13	2.00	5
2412	FYR2 Squat Pulse		13	13	13	2.00	5
2413	Sprinter burpee	The sprinter burpee is an explosive version of the burpee exercise that adds a sprinter jump to the top of each rep. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout.	13	13	13	2.00	5
2414	Shuttle run training	Shuttle run training is an athletic conditioning drill thatâ€™s great for developing speed and power, as well as changing direction. Itâ€™s a favorite of football and basketball players, but it can also be great conditioning work for lifters and athletes of all ability levels.	13	13	13	2.00	5
2415	Medicine ball ninja	The medicine ball ninja is a dynamic medicine ball movement that challenges both the upper and lower body, while also elevating the heart rate. Its a great movement to include in medicine ball or bodyweight circuit training to increase fatigue and burn serious calories while hammering the muscles of the legs.	13	13	13	2.00	3
2416	FYR Air Ball Plus Medicine Ball Jumping Sprawl	The medicine ball air ball to jumping sprawl is a series of bodyweight and medicine ball movement strung together into a single sequence. They collectively target virtually every muscle in the body, as well as seriously challenging the cardiovascular system. It can be a single-movement workout if done for high reps, or part of a larger circuit workout.	13	13	13	2.00	5
2417	Medicine ball cowboy squat	The medicine ball cowboy squat is an explosive exercise targeting the lower body, although several upper-body muscles play important supporting roles. The move involves performing jumping squats while holding a medicine ball overhead. Its commonly performed as part of a bodyweight and medicine ball circuit focused on fat loss or athleticism.	13	13	13	2.00	5
2418	Medicine ball jumping jill	The medicine ball jumping jill is an explosive medicine ball exercise that is similar to a jumping jack but performed holding a medicine ball between the hands. It can be performed for time or reps in a dynamic warm-up or fat-loss or conditioning circuit, usually paired with other bodyweight or medicine ball movements.	13	13	13	2.00	5
2419	Alternate Leg Diagonal Bound		13	13	13	1.00	3
2420	Sit Squats		13	13	13	1.00	6
2421	Frog Hops		13	13	13	1.00	6
2422	Dumbbell lateral hop to sprint	The dumbbell lateral hop to sprint is a multi-part explosive exercise combining weighted hops with weighted sprinting. Adding dumbbells adds a challenge to the core and shoulders. Because balance can be a challenge, it is usually performed with relatively light weights, often as a component of fat-loss or athletic training.	13	13	13	2.00	3
2423	Smith machine lunge sprint	The Smith machine lunge sprint is a lower-body power exercise performed with the bar of a Smith machine on the back. It is similar to an alternating jump lunge or "scissor lunge," but with added weight. The contained bar of the Smith machine makes it safer and less of a balance challenge than using a free weight.	13	13	13	2.00	5
2424	Sissy squat	The sissy squat is a bodyweight squat variation that involves letting the knees travel far over the toes, placing an extreme stretch on the quads. This movement targets the quad muscles directly and can be performed in partial or full ranges of motion based on knee health and pain.	13	13	13	2.00	5
2425	Wall ball toss	The wall ball toss is an explosive full-body exercise utilizing a medicine ball. It involves squatting down, then explosively pressing a weighted ball into the air and catching it on a bounce off of a vertical surface. It is common in CrossFit workouts and can be performed for time or reps.	13	13	13	2.00	3
2426	Bosu Ball Squat		13	13	13	1.00	5
2427	Exercise ball Bulgarian split squat	The exercise ball Bulgarian split squat is an exercise that builds the quads, hamstrings, and glutes one leg at a time. The exercise ball is used to support the trailing shin and foot. Due to the balance challenge, this version of the split squat is usually performed for moderate to high reps with body weight only or light weights in the hands. If balance is a problem, you can stick the ball in the corner of a room while performing the exercise.	13	13	13	2.00	5
2428	Internal Rotation with Band		14	14	14	1.00	5
2429	Band Pull Apart	The band pull-apart is an exercise targeting the upper back muscles, including the trapezius, rear delts, and rhomboids. The band creates dynamic tension, allowing you to really focus on contracting these muscles, making it a great activation drill prior to upper-body lifting.	14	14	14	2.00	5
2430	Back Flyes - With Bands		14	14	14	1.00	5
2431	Lateral Raise - With Bands		14	14	14	1.00	5
2432	Shoulder Press - With Bands		14	14	14	1.00	5
2433	External Rotation with Band		14	14	14	1.00	5
2434	FYR Band Pull-Apart		14	14	14	2.00	5
2435	HM Lateral Raise		14	14	14	2.00	5
2436	Rusin Banded Over-And-Back		14	14	14	2.00	5
2437	Rusin Banded Face Pull		14	14	14	2.00	5
2438	UP Band Pull-Apart		14	14	14	2.00	5
2439	Jordan Shallow Band-Resisted Thread the Needle		14	14	14	2.00	5
2440	30 Shoulders Seated Banded Barbell Shoulder Press		14	14	14	2.00	5
2441	Band shoulder press	The band shoulder press is a deltoid exercise and an alternative to the classic dumbbell shoulder press. The dynamic tension of the band forces the core to stabilize the body and more closely matches the strength curve of the shoulder press. It can be performed in low reps, such as 5-8 reps per set, to build shoulder strength, or for higher reps to build muscle and for conditioning. It can work as the main focus of a shoulder day but is also popular as an accessory movement to the bench press or barbell military press.	14	14	14	2.00	5
2442	Band lateral raise	The band lateral raise is a shoulder exercise that targets the medial or middle head of the deltoid muscle. Its a variation of the dumbbell lateral raise, a staple strength-training move. The band lateral raise is a great option for warm-up or accessory work on upper-body training days. The dynamic tension of the band provides constant tension and matches the strength curve of the movement. It is usually performed for moderate to high reps, at least 8-12 reps, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2443	Band upright row	The band upright row is a popular movement for building stronger and bigger traps and shoulders and similar to the dumbbell upright row. Many lifters combine this move with either their back or shoulder workout, since it involves both body parts. Using the band provides dynamic resistance and is easier on the shoulder than using a barbell. It is generally performed for moderate to high reps, such as 8-12 reps per set or more.	14	14	14	2.00	5
2444	Staggered-stance band shoulder press	The staggered-stance band shoulder press is a deltoid exercise and a variation of the band shoulder press. The dynamic tension of the band forces the core to stabilize the body, and the staggered-stance provides more stability and relieves tension on the back. It can be performed in low reps, such as 5-8 reps per set, to build shoulder strength, or for higher reps to build muscle and for conditioning. It can work as the main focus of a shoulder day but is also popular as an accessory movement to the bench press or barbell military press.	14	14	14	2.00	5
2445	Single-arm banded landmine press	The single-arm banded landmine press is an upper-body exercise that uses an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. The band adds constant tension and dynamic resistance to the exercise. The movement focuses primarily on the muscles of the shoulders or deltoids and can be trained in traditional muscle and strength-focused rep ranges or for higher reps.	14	14	14	2.00	5
2446	Band front raise rear fly row combo	The band front raise rear fly row combo is a combination of three different shoulder exercises to build and strengthen the anterior, middle deltoids, and posterior portions of the shoulders. It requires a continuous loop band to provide constant, dynamic tension throughout the movement. In addition to the front and rear delts, this exercise works the arms, chest, back, and core, making it a great time-efficient shoulder burnout or accessory movement on an upper-body day.	14	14	14	2.00	5
2447	Jordan Shallow Foam Roller Thoracic Extension		14	14	14	2.00	5
2448	Jordan Shallow Thread the Needle (with Foam Roller)		14	14	14	2.00	5
2449	Clean and press	The clean and press is a full-body lift comprised of two movements: the clean, where the bar is pulled from the floor and caught in the front rack position in three pulls or phases, followed by the overhead press. Decades ago, it was contested in the Olympics. Today, it remains a worthy centerpiece of a power and strength training program, and has full-body benefits when done for low reps as well as moderate to high reps.	14	14	14	2.00	5
2450	Clean and jerk	The clean and jerk is a full-body lift that is one of two contested lifts in Olympic weightlifting competitions. It is comprised of two movements: the clean, where the bar is pulled from the floor and caught in the front rack position in three pulls or phases, followed by the jerk overhead. The clean and jerk hits every muscle from head to toe and can be the centerpiece of a lifting program. It is also popular in CrossFit and athletic training programs. It is usually performed in low rep ranges, focusing on power and movement quality.	14	14	14	2.00	2
2451	Military press	The military press is a compound movement used to build size and strength in the shoulders. It was once contested as a fourth powerlift, but is rarely competed anymore. However, being able to press a significant weight overhead remains a popular marker of upper-body strength. The military press can be trained as a strength lift or in traditional muscle-building rep ranges as part of full-body, shoulder-focused, or upper-body training.	14	14	14	2.00	5
2452	Seated barbell shoulder press	The seated barbell shoulder press is a classic exercise for building muscle and strength in the shoulders. The triceps also play a significant role in pressing the barbell overhead. Performing the movement seated reduces help from the lower body and decreases the risk of overextending the lumbar spine during the movement. This press variation can be the primary pressing movement on an upper-body or shoulder day, or an effective accessory movement later in a workout.	14	14	14	2.00	5
2453	Snatch-Grip Behind-The-Neck Overhead Press		14	14	14	1.00	5
2454	Standing Bradford press	The standing Bradford press is an obscure yet effective shoulder exercise that alternates front presses with behind-the-neck presses. It can be used as a warm-up for other press variations on a shoulder day, or as a muscle-building movement on its own in a shoulder or upper-body focused workout. It is usually performed for relatively high reps, such as 8-15 reps per set or higher, or just to the point of fatigue.	14	14	14	2.00	5
2455	Barbell Shoulder Press	The seated barbell shoulder pressis a classic exercise for building muscle and strengthening the shoulders, particularly but not exclusively the front heads. The triceps also play a significant roles in pressing the barbell overhead.	14	14	14	2.00	5
2456	Barbell rear delt bent-over row	The barbell rear delt bent-over row is a movement used to target the shoulders as well as the upper-back muscles. It is performed with lighter weights than a traditional barbell bent-over row, and is usually performed for higher reps, such as 8-15 reps per set, as part of a back or upper-body workout.	14	14	14	2.00	5
2457	Barbell upright row	The barbell upright row is a barbell exercise that builds stronger and bigger traps. Many lifters combine this move with either their back or shoulder workout since it involves both body parts.	14	14	14	2.00	5
2458	Bradford/Rocky Presses		14	14	14	1.00	5
2459	Lying rear delt fly	The lying rear delt fly is an upper-body exercise that targets the rear deltoid of the shoulder. By performing the movement lying face down on a bench, it eliminates momentum from the rest of the body. This movement is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2460	Machine Shoulder (Military) Press	The machine shoulder press is an upper body exercise targeting the deltoids.	14	14	14	2.00	5
2461	Standing Barbell Press Behind Neck	The standing behind-the-head press is a classic shoulder exercise that was used widely during bodybuildings professed Golden Era. In addition to the deltoids, it also works the trapezius and triceps muscles. It may not be a good choice for some peoples shoulders, depending on their injury history. It can be trained in strength-focused rep ranges, but is more commonly trained in moderate to high reps, such as 8-15 reps per set.	14	14	14	2.00	5
2462	Barbell front raise	The barbell front raise is an upper-body isolation exercise that targets the shoulders. It is usually performed for moderate to high reps, such as 8-12 reps or higher, as part of the shoulder-focused part of any workout.	14	14	14	2.00	5
2463	Overhead bar front raise	The overhead bar front raise is an exercise targeting the muscles of the traps (trapezius), especially the upper traps, as well as the front or anterior shoulders. It can also be performed with a weight plate or dumbbell, providing a neutral grip that may be more shoulder-friendly for some lifters. Overhead raises are most common for high reps (at least 8-12 reps per set or higher) on a shoulder, trap, or other upper-body-focused muscle-building day.	14	14	14	2.00	5
2464	Incline barbell shoulder protraction	The incline barbell shoulder protraction is an upper-body movement that targets strength and mobility in the scapula or shoulder blades. This can help increase pressing strength and prevent injury. It also helps develop the serratus anterior, an often-neglected muscle around the ribcage that can aid in shoulder health and upper-body muscle definition. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 8-12 reps per set or more.	14	14	14	2.00	5
2465	Behind-the-head push-press	The behind-the-head push-press is an overhead press variation in which the barbell starts in the back rack position and is pushed overhead with assistance from the lower body. It is most often seen in training for Olympic weightlifting. It can be part of a barbell complex or performed for low reps focusing on power and movement quality.	14	14	14	2.00	2
2466	Rack Delivery		14	14	14	1.00	2
2467	Smith Incline Shoulder Raise		14	14	14	1.00	5
2468	Tall Muscle Snatch		14	14	14	1.00	2
2469	Axle Clean And Press		14	14	14	1.00	7
2470	Jerk Balance		14	14	14	1.00	2
2471	Seated EZ-bar shrug	The seated EZ-bar shrug is an exercise targeting the trapezius muscle, that V-shaped muscle that forms a triangle where the shoulders meet the neck. It is usually performed for moderate to high reps during an upper-body or shoulders and traps-focused workout.	14	14	14	2.00	5
2472	Paul Carter Barbell Seated Military Press	The seated barbell shoulder pressis a classic exercise for building muscle and strengthening the shoulders, particularly but not exclusively the front heads. The triceps also play a significant roles in pressing the barbell overhead.	14	14	14	2.00	5
2473	TBS Barbell Military Press	The military press is a compound movement used to build size and strength in the shoulders. It was once contested as a fourth powerlift, but is rarely competed anymore. However, being able to press a significant weight overhead remains a popular marker of upper-body strength. The military press can be trained as a strength lift or in traditional muscle-building rep ranges as part of full-body, shoulder-focused, or upper-body training.	14	14	14	2.00	5
2474	Incline Front Barbell Raise - Gethin Variation	The incline face-down bar front raise is an upper-body exercise targeting the shoulders. Because it is performed face down on an angled bench, it has a greater range of motion than standing or upright-seated raises and hits the shoulders from a different angle. Raise variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or shoulder-focused training.	14	14	14	2.00	5
2475	Barbell Front Raise - Gethin Variation	The barbell front raise is an upper-body isolation exercise that targets the shoulders. It is usually performed for moderate to high reps, such as 8-12 reps or higher, as part of the shoulder-focused part of any workout.	14	14	14	2.00	5
2476	Single-arm barbell lateral raise	The single-arm barbell lateral raise is an isolation exercise targeting the shoulders. It is more challenging than using a dumbbell and has an instability component that may make the deltoid muscles work harder. It is generally performed one side at a time for moderate to high reps, such as 8-15 reps per set, as part of a shoulder-focused workout.	14	14	14	2.00	5
2477	AM Upright Row	The barbell upright row is a barbell exercise that builds stronger and bigger traps. Many lifters combine this move with either their back or shoulder workout since it involves both body parts.	14	14	14	2.00	5
2478	AM Barbell Shoulder Press	The standing barbell shoulder press is a compound movement used to build size and strength in the shoulders. The shoulder press can be trained as a strength lift or in traditional muscle-building rep ranges as part of full-body, shoulder-focused, or upper-body training.	14	14	14	2.00	5
2479	Standing barbell shoulder press	The standing barbell shoulder press is a compound movement used to build size and strength in the shoulders. The shoulder press can be trained as a strength lift or in traditional muscle-building rep ranges as part of full-body, shoulder-focused, or upper-body training.	14	14	14	2.00	5
2480	King Maker Barbell Thruster	The barbell thruster is a full-body exercise that incorporates both squatting and pressing in one functional movement. Its especially common in contemporary CrossFit workouts, but also in general strength training. The barbell is usually cleaned into place first, but it could be performed taken from a squat rack in a front-rack position. The thruster can be performed in traditional strength-focused rep ranges to build strength in the press, or in higher reps for full-body conditioning.	14	14	14	2.00	5
2481	Single-arm incline cable cross-over	The single-arm incline cable cross-over is an isolation movement that uses a cable stack and a bench to target the upper part of the pectoral muscles. Working the chest one side at a time allows you to focus on balance between the sides of your chest and really feel the chest muscles contracting. It is common in upper-body and chest-focused muscle-building workouts, often in combination with other presses or flyes to target the chest from different angles.	14	14	14	2.00	5
2482	Barbell bear complex	The barbell bear complex is a series of barbell lifts that run together in a single sequence: a barbell power clean, front squat, push-press, back squat, and another push-press from behind the neck. It trains the entire body for both building strength and improving conditioning. It is often performed for rounds, either with or without rest between rounds.	14	14	14	2.00	5
2483	30 Shoulders Barbell Shrug		14	14	14	2.00	5
2484	30 Shoulders Incline Face-Up Straight-Bar Front Raise		14	14	14	2.00	5
2485	30 Shoulders Seated Dumbbell Shoulder Press		14	14	14	2.00	5
2486	30 Shoulders Standing Behind-The-Head Shoulder Press		14	14	14	2.00	5
2487	30 Shoulders Standing Barbell Press		14	14	14	2.00	5
2488	FYR2 Wide Overhead Press		14	14	14	2.00	5
2489	Single-arm kettlebell push-press	The single-arm kettlebell push-press is a popular kettlebell movement that involves performing a press with help from the muscles of the lower body. It is preceded by a clean at the start of each set, and optionally you can perform a clean between each rep. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a larger kettlebell combination or complex.	14	14	14	2.00	5
2490	Two-Arm Kettlebell Military Press		14	14	14	1.00	5
2491	Alternating Kettlebell Press		14	14	14	1.00	5
2492	Single-arm kettlebell snatch	The single-arm kettlebell snatch is a kettlebell exercise that involves lifting a kettlebell overhead in a single motion. It is popular as a full-body strength and conditioning movement, but its also competed for reps in Russian-style girevoy sport. A "snatch test" of max reps in 5 or 10 minutes is also a common measurement of conditioning in kettlebell training. It can be performed from the ground or with a swing	14	14	14	2.00	5
2493	Single-arm kettlebell clean and jerk	The single-arm kettlebell clean and jerk is a popular kettlebell movement that is performed both in an exercise setting and competitively as a part of Russian-style girevoy sport. It differs from a clean and push-press in that the lifter "dips" under the weight rather than simply using the legs to help push the weight up. Each rep of a clean and jerk is preceded by a clean at the start of each set. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a larger kettlebell combination or complex.	14	14	14	2.00	5
2494	Kettlebell pirate ship	The kettlebell pirate ship is a rotational shoulder and core-focused kettlebell movement. It demands the lifter raise the kettlebell to the side in both directions, emphasizing core strength in the transverse abdominis and obliques in particular. It is best learned with a light weight, using controlled movements in both directions.	14	14	14	2.00	5
2495	Two-Arm Kettlebell Clean		14	14	14	1.00	5
2496	Double Kettlebell Push Press	The double-kettlebell push-press is a popular kettlebell movement that involves performing a press with help from the muscles of the lower body. It is preceded by a double clean at the start of each set, and optionally you can perform a clean between each rep. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a larger kettlebell combination or complex.	14	14	14	2.00	5
2497	Kettlebell Seated Press		14	14	14	1.00	5
2498	Double Kettlebell Jerk		14	14	14	1.00	5
2499	Kettlebell Arnold Press		14	14	14	1.00	5
2500	Double-kettlebell windmill	The double-kettlebell windmill is an advanced kettlebell exercise emphasizing core strength and shoulder and hip mobility and stability. Because it involves holding one weight overhead while holding another under the torso, it builds strength across the core and stability in the shoulders. It doesnt work well in a metcon or conditioning setting, and shouldnt be performed under intense fatigue.	14	14	14	2.00	5
2501	One-Arm Kettlebell Split Snatch		14	14	14	1.00	5
2502	One-Arm Kettlebell Para Press		14	14	14	1.00	5
2503	One-Arm Kettlebell Split Jerk		14	14	14	1.00	5
2504	One-Arm Kettlebell Military Press To The Side		14	14	14	1.00	5
2505	One-Arm Kettlebell Jerk		14	14	14	1.00	5
2506	Double Kettlebell Snatch		14	14	14	1.00	5
2507	Two-Arm Kettlebell Jerk		14	14	14	1.00	5
2508	FYR Kettlebell Power Clean	The kettlebell power clean is an explosive kettlebell exercise where the lifter pulls the weight to shoulder level with a slight swing between the legs. It is often used as a drill to teach kettlebell clean technique, but is also a valuable power exercise in its own right. It can be performed in low rep ranges for strength or higher rep ranges for technique practice or muscle growth.	14	14	14	2.00	5
2509	Kettlebell upright row	The kettlebell upright row is an exercise targeting the muscles of the traps (trapezius), as well as the posterior muscles of the shoulders or deltoid muscles. It is common as a light- or moderate-weight accessory movement in upper-body or shoulder training, usually in rep ranges of 8-12 or more. It may not be appropriate for some people, depending on their shoulder health.	14	14	14	2.00	5
2510	Kettlebell upright row and press	The kettlebell upright row and press is a combination of two popular kettlebell movements in a single sequence. This combination can be performed for time or for reps, often as circuit-style training for conditioning or fat loss, or in a kettlebell complex or flow.	14	14	14	2.00	5
2511	Single-arm kettlebell thruster	The single-arm kettlebell thruster is a popular kettlebell movement that combines a kettlebell front squat with a kettlebell press. It is preceded by a clean at the start of each set, and you can perform a clean between each rep if you choose. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a kettlebell combination or complex.	14	14	14	2.00	5
2512	Double-kettlebell shoulder press	The double-kettlebell shoulder press is a popular movement in strength and muscle-focused kettlebell workouts. Each set is started by cleaning the weights up to the rack position. The weights can optionally be re-cleaned between each rep, which is known as a clean and press. The double press can be trained in traditional strength or muscle-growth rep ranges (e.g., 5x5 or 8-12 reps per set), or in circuit-style fat-loss training or kettlebell complexes.	14	14	14	2.00	5
2562	Dumbbell Clean And Jerk		14	14	14	1.00	5
2691	Standing crossed-cable rear delt fly	The standing crossed-cable rear delt fly is an isolation exercise for the rear deltoids. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2513	Double-kettlebell push-press	The double-kettlebell push-press is a popular kettlebell movement that involves performing a press with help from the muscles of the lower body. It is preceded by a double clean at the start of each set, and optionally you can perform a clean between each rep. It can be trained in traditional strength or muscle-building rep ranges, in circuit or fat-loss training, or as part of a larger kettlebell combination or complex.	14	14	14	2.00	5
2514	HM Kettlebell Windmill		14	14	14	2.00	5
2515	HM Kettlebell Z-Press		14	14	14	2.00	5
2516	Taylor Half-Kneeling Kettlebell Halo		14	14	14	2.00	5
2517	Taylor Towel Kettlebell Farmers Walk		14	14	14	2.00	5
2518	FYR2 Double-Kettlebell Alternating Press		14	14	14	2.00	5
2519	FYR2 Double-Kettlebell Thruster		14	14	14	2.00	5
2520	FYR2 Half-Kneeling Kettlebell Clean		14	14	14	2.00	5
2521	FYR2 Kettlebell Clean and Press		14	14	14	2.00	5
2522	FYR2 Kettlebell High Pull to Overhead Press		14	14	14	2.00	5
2523	FYR2 Kettlebell Swing Clean and Press		14	14	14	2.00	5
2524	FYR2 Single-Arm Kettlebell Press		14	14	14	2.00	5
2525	FYR2 Ascending-Rep High-Pull-Press Complex		14	14	14	2.00	5
2526	Dumbbell front raise to lateral raise	The dumbbell front raise to lateral raise is a dumbbell complex that combines two exercises that build and strengthen the middle deltoids and the anterior deltoids of the shoulders. It is usually performed one rep of each movement at a time, although you could perform more reps of each, or increase the reps in successive rounds (e.g., 1 rep in round 1, 2 reps in round 2, etc.). No matter how you perform it, it targets both the anterior and medial deltoids, making it a great time-efficient shoulder burnout or accessory movement on an upper-body day.	14	14	14	2.00	5
2527	Single-arm palm-in dumbbell shoulder press	The single-arm palm-in dumbbell shoulder press builds the shoulder muscles but with two major differences from the standard dumbbell shoulder press. Its done one arm at a time and the wrist stays neutral throughout the movement. It can be performed standing or seated. A single dumbbell press can be pursued as a strength goal, or trained in traditional muscle-building rep ranges such as 8-15 reps per set or more.	14	14	14	2.00	5
2528	Standing palms-in shoulder press	The standing palms-in shoulder press is a dumbbell exercise targeting the shoulders. It can be performed in strength-focused rep ranges, such as 5-8 reps per set, or for higher reps to build muscle or for conditioning.	14	14	14	2.00	5
2529	Seated Dumbbell Press	The seated dumbbell shoulder pressis an exercise for building muscle and strengthening the shoulders, particularly but not exclusively the front heads. The triceps also assist. Some lifters feel that using dumbbells versus a barbell reduced injury risk.	14	14	14	2.00	5
2530	Standing dumbbell shoulder press	The standing dumbbell shoulder press is a classic deltoid-building exercise that is common in gyms around the world. Performing the move standing up as opposed to seated allows more weight to be used and taxes the core more than seated presses. The standing press is worthy of being the main movement in a muscle-building shoulder workout, but is also a great strength movement and accessory for the bench press.	14	14	14	2.00	5
2531	Single-arm lateral raise	The single-arm lateral raise is a shoulder exercise that targets the medial or middle head of the deltoid muscle. Its a staple strength-training move and is a great option for accessory work on upper-body training days. Hold on to a post for balance, or do it free-standing to challenge core strength and stability. It is usually performed for moderate to high reps, at least 8-12 reps per side, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2532	Power Partials		14	14	14	1.00	5
2533	Incline dumbbell reverse fly	The incline dumbbell reverse fly is an upper-body exercise targeting the posterior or rear deltoids, as well as the postural muscles of the upper back. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2534	Overhead dumbbell front raise	The overhead dumbbell front raise takes the dumbbell front raise one step further, extending the motion all the way above the head. In addition to the shoulders, it activates and strengthens the muscles of the traps and upper back. It is usually performed for moderate to high reps, such as 8-15 reps or more. It can be part of a dynamic upper-body warm-up, performed as a muscle-building upper-body movement, or as a burnout movement on shoulder day.	14	14	14	2.00	5
2535	Seated dumbbell shoulder press	The seated dumbbell shoulder press is a popular exercise for building muscle and strength in the shoulders. The triceps also work hard in this lift. Many lifters find using dumbbells to be more comfortable and shoulder-friendly for this press variation than a barbell. This can be the primary pressing movement on an upper-body or shoulder day, or an effective accessory movement later in a workout.	14	14	14	2.00	5
2536	Alternating standing shoulder press	The alternating standing shoulder press is a popular dumbbell exercise targeting the shoulders. It can be performed in strength-focused rep ranges, such as 5-8 reps per set, or for higher reps to build muscle or for conditioning.	14	14	14	2.00	5
2537	Single-arm incline rear delt raise	The single-arm incline rear delt raise is an upper-body exercise targeting the posterior deltoids or shoulder muscles, as well as the postural muscles of the upper back. Training each side independently can help correct imbalances in size, strength, and shoulder stability. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2538	Alternating dumbbell front raise	The alternating dumbbell front raise is a single-joint exercise targeting the shoulder muscles, particularly the front or anterior deltoids. Performing the movement one shoulder at a time gives a momentary rest to each side while the other is working, potentially allowing you to do more reps during each set. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2539	Alternating Deltoid Raise	The dumbbell front raise to lateral raise combines two exercises that build and strengthen the middle deltoids and the anterior deltoids of the shoulders.	14	14	14	2.00	5
2586	Seated Lateral Raise - Gethin Variation	The seated dumbbell lateral raiseis an iconic exercise for developing the shoulders. If youâ€™ve ever worked out with weights, chances are youâ€™ve done this move at some point. Proper execution is paramount to avoid injury.	14	14	14	2.00	5
2692	Cable Shoulder Press		14	14	14	1.00	5
2540	Single-dumbbell front raise	The single-dumbbell front raise is an isolation movement that targets the shoulders. In particular, it focuses on the anterior or front head of the deltoid muscles. By performing it with one dumbbell at a time, you can focus on each shoulder muscle independently and try to address muscular imbalances between shoulders. This movement is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2541	Arnold press	Named after the iconic bodybuilder and movie star, the Arnold press adds rotation to a classic shoulder press. It allows the hands to rotate naturally, while also hitting all three heads of the deltoids in one motion. It is usually performed for moderate to high reps, such as 8-12 reps or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2542	Single-arm standing shoulder press	The single-arm standing shoulder press is a popular exercise to build size and strength the shoulders and triceps. Most lifters find they can go heavier (per arm) on this movement than if they are pressing two dumbbells simultaneously, making it an effective strength movement as well as a muscle-building movement in higher reps.	14	14	14	2.00	5
2543	Dumbbell front raise	The dumbbell front raise is a single-joint exercise targeting the shoulder muscles, particularly the front or anterior deltoids. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2544	Bent-over dumbbell rear delt row	The bent-over dumbbell rear delt row is a popular upper-body exercise that targets the muscles on the backside of the shoulder joint, specifically the medial and rear heads of the deltoid. Since pressing movements build the front and (to a lesser degree) side deltoid heads, this move is often done to promote balanced shoulder development. It is usually performed for high reps, such as 10-15 reps per set or more, as part of a shoulder or upper-body workout.	14	14	14	2.00	5
2545	Incline dumbbell front raise	The incline dumbbell front raise is an upper-body exercise targeting the shoulders. Because it is performed face down on an angled bench, it has a greater range of motion than standing or upright-seated raises and hits the shoulders from a different angle. Raise variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or shoulder-focused training.	14	14	14	2.00	5
2546	Side Lateral Raise	The dumbbell lateral raise is an upper body isolation exercise for building shoulder strength and muscle. Its a staple strength training move and is a great option for accessory work on upper body training days. This exercise particularly focuses on the lateral or medial head of the deltoid, making them appear wider and more developed.	14	14	14	2.00	5
2547	Dumbbell external shoulder rotation	The dumbbell external shoulder rotation is a lightweight dumbbell exercise intended to maintain the health of the shoulder joints, including the rotator cuffs. It is often used as a warm-up or prehab for a shoulder or chest-focused workout with lots of pressing.	14	14	14	2.00	5
2548	Single-arm incline lateral raise	The single-arm incline lateral raise is an exercise targeting the lateral or medial head of the shoulder muscles. It is performed lying sideways on an incline bench set to around 45 degrees, which helps to increase the range of motion in the lift and enforce strict form. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 8-12 reps per set or more.	14	14	14	2.00	5
2549	Seated rear delt fly	The seated rear delt fly is an upper-body exercise that targets the real deltoid of the shoulder. By performing the movement seated, it eliminates momentum from the rest of the body. This movement is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2550	Dumbbell Raise		14	14	14	1.00	5
2551	Seated Side Lateral Raise	The seated dumbbell lateral raiseis an iconic exercise for developing the shoulders. If youâ€™ve ever worked out with weights, chances are youâ€™ve done this move at some point. Proper execution is paramount to avoid injury.	14	14	14	2.00	5
2552	Dumbbell Lying Rear Lateral Raise	The incline dumbbell reverse fly is an upper-body exercise targeting the posterior or rear deltoids, as well as the postural muscles of the upper back. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2553	Head-on-bench dumbbell rear delt raise	The head-on-bench dumbbell rear delt raise is an exercise targeting the posterior shoulder muscles, or rear deltoids. This variation of the bent-over rear delt raise often helps to better isolate this area of the shoulder. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2554	Cuban press	The Cuban press is an exercise that targets the muscles of the shoulders, rotator cuff, and upper back. It combines a shoulder external rotation with a dumbbell press, training multiple muscles and motions in a single sequence. It can be performed standing, or as a more difficult variation face-down on an incline bench. It is usually performed with relatively light weight as part of a dynamic warm-up for upper-body lifting.	14	14	14	2.00	5
2555	Reverse Flyes With External Rotation		14	14	14	1.00	5
2556	Single-arm side lying rear fly	The single-arm side lying rear fly is an upper-body exercise that targets the rear deltoid of the shoulder. By performing the movement lying on a bench, it eliminates momentum from the rest of the body. This movement is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2557	Single-arm dumbbell upright row	The single-arm dumbbell upright row is a popular movement for building stronger and bigger traps and shoulders. Many lifters combine this move with either their back or shoulder workout, since it involves both body parts. It is generally performed for moderate to high reps, such as 8-12 reps per set or more.	14	14	14	2.00	5
2558	Dumbbell Scaption		14	14	14	1.00	5
2559	See-Saw Press (Alternating Side Press)		14	14	14	1.00	5
2560	Dumbbell Incline Shoulder Raise		14	14	14	1.00	5
2561	Single-arm half-kneeling shoulder press	The single-arm half-kneeling shoulder press is a popular exercise to target the deltoid muscles while also developing strength and stability in the core and hips. Balance can be a challenge, which is one reason why this movement is generally trained lighter than standing single-arm shoulder presses. The half-kneeling press can be used as an accessory lift for the shoulder press or bench press, or simply as a technique to make shoulder presses stricter and more athletic.	14	14	14	2.00	5
2563	Dumbbell shoulder press with body rotation	The dumbbell shoulder press with body rotation is a twist on the traditional dumbbell shoulder press. Rather than pressing straight overhead, you twist your torso and hips to the side during each rep. It hits the deltoid muscles just like a shoulder press, but adds a challenge to the core, hips, and back muscles. Due to the potential balance challenge of twisting and pressing at the same time, it is commonly performed with light to moderate weights.	14	14	14	2.00	5
2564	Dumbbell Fix Dumbbell Military Press		14	14	14	2.00	5
2565	Dumbbell Fix Standing Dumbbell Arnold Press		14	14	14	2.00	5
2566	Dumbbell Fix Dumbbell Single-Arm Snatch		14	14	14	2.00	5
2567	Paul Carter Rear-Delt Fly	The seated rear delt fly is an upper-body exercise that targets the real deltoid of the shoulder. By performing the movement seated, it eliminates momentum from the rest of the body. This movement is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2568	FYR Dumbbell Shoulder Press	The standing dumbbell shoulder press is a classic deltoid-builder (especially the front deltoids) thatâ€™s ubiquitous in gyms around the world. Performing the move standing up as opposed to seated allows for more weight to be used.	14	14	14	2.00	5
2569	FYR Single-Arm Dumbbell Press	The single-arm standing shoulder press builds shoulder muscle but with two major differences from the standard seated dumbbell shoulder press. Itâ€™s done one arm at a time, as well as standing, which may allow more weight to be used.	14	14	14	2.00	5
2570	FYR Dumbbell Tempo L-Raise	The dumbbell lateral raise is an upper body isolation exercise for building shoulder strength and muscle. Its a staple strength training move and is a great option for accessory work on upper body training days. This exercise particularly focuses on the lateral or medial head of the deltoid, making them appear wider and more developed.	14	14	14	2.00	5
2571	Dumbbell seesaw shoulder press	The dumbbell seesaw shoulder press is an exercise targeting the deltoids and triceps. The difference between this movement and the alternating shoulder press is that both dumbbells keep moving throughout each rep, rather than having one weight be stationary while the other moves. This piston-style pressing increases time under tension and may allow you to complete more total reps than with alternating reps.	14	14	14	2.00	5
2572	FYR Dumbbell front raise to lateral raise	The dumbbell front raise to lateral raise combines two exercises that build and strengthen the middle deltoids and the anterior deltoids of the shoulders.	14	14	14	2.00	5
2573	FYR Dumbbell Arnold Press	Named after the iconic bodybuilder/movie star, the Arnold press adds rotation to a classic shoulder press, hitting all three heads of the deltoids in one motion.	14	14	14	2.00	5
2574	FYR Dumbbell Military Press to Dumbbell High Pull to V-up		14	14	14	2.00	5
2575	FYR Dumbbell Thruster	The dumbbell thruster, which begins with a squat and ends with an overhead press, works the entire body at once in a single fluid motion. This exercise is often performed with kettlebells, but dumbbells work great, too.	14	14	14	2.00	5
2576	Dumbbell hang snatch	The dumbbell hang snatch is an explosive exercise that builds full-body power and targets the muscles of the hips, back, and shoulders. Performing the movement from the hang position, rather than from the ground, emphasizes explosive hip and upper-body power. It can be performed for low reps with a focus on power and speed, or for higher reps to build muscle or as part of a metabolic conditioning circuit.	14	14	14	2.00	5
2577	Surfer sprawl	The surfer sprawl is an explosive bodyweight exercise that targets multiple muscle groups across the upper and lower body. It is similar to a burpee, but instead of jumping at the top, you end in a "surfer position," alternating sides with each rep. It can be performed for time or reps in any fat-loss or athleticism-focused circuit or workout. The surfer position offers a unique way to challenge the body by staying in a low position rather than standing up after the plank.	14	14	14	2.00	5
2578	Dumbbell clean and press	The dumbbell clean and press is a full-body movement that targets both the lower and upper body. The clean utilizes the muscles of the hips, legs, glutes, back, and biceps, while the press utilizes the shoulders and triceps. It can be trained in low to moderate reps for strength, or for higher reps, such as 8-12 reps per set or more, for muscle building or metabolic conditioning.	14	14	14	2.00	5
2579	Standing One-Arm Shoulder Press - Gethin Variation	The single-arm standing shoulder press builds shoulder muscle but with two major differences from the standard seated dumbbell shoulder press. Itâ€™s done one arm at a time, as well as standing, which may allow more weight to be used.	14	14	14	2.00	5
2580	Incline Front Dumbbell Raise - Gethin Variation	The incline dumbbell front raise is an isolation exercise targeting the shoulders	14	14	14	2.00	5
2581	Dumbbell lateral raise	The dumbbell lateral raise is a shoulder exercise that targets the medial or middle head of the deltoid muscle. Its a staple strength-training move and is a great option for accessory work on upper-body training days. It is usually performed for moderate to high reps, at least 8-12 reps, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2582	Incline Rear-Delt Fly - Gethin Variation	The incline dumbbell reverse fly is an upper-body exercise targeting the posterior or rear deltoids, as well as the postural muscles of the upper back. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2583	Incline Bench Rear Dumbbell Fly - Gethin Variation	The incline dumbbell reverse fly is an upper-body exercise targeting the posterior or rear deltoids, as well as the postural muscles of the upper back. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2584	Dumbbell front raise and press	The dumbbell front raise and press combines two upper-body moves into one challenging sequence targeting the deltoid muscles. Its a simple way to boost your heart rate while getting a good upper-body pump, and is a natural fit in time-efficient upper-body or circuit training.	14	14	14	2.00	5
2585	Rotator cuff warm-up	The rotator cuff warm-up is a simple exercise targeting the rotator cuffs through weighted shoulder external rotation. Its a classic way to warm up the shoulder prior to sports or training, as well as a common rehab movement. The rotator cuffs are a notorious injury-prone structure in the shoulders of Major League pitchers and other athletes. This is a movement most commonly done for moderate to high reps, such as 8-12 reps or more per set.	14	14	14	2.00	5
2693	Alternating Cable Shoulder Press		14	14	14	1.00	5
2587	Single-arm dumbbell arc row	The single-arm dumbbell arc row is an exercise for building the latissimus dorsi, or lat, muscles of the back. This variation has more of an arcing shape than the traditional single-arm dumbbell row, which may increase the mind-muscle connection and hit the back from a different angle. You probably wont be able to go as heavy on this as on a traditional row.	14	14	14	2.00	5
2588	Incline Rear Delt Raises - Gethin Variation	The incline dumbbell reverse fly is an upper-body exercise targeting the posterior or rear deltoids, as well as the postural muscles of the upper back. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2589	Incline Dumbbell Y Raise		14	14	14	2.00	5
2590	HM Bent-Over Rear-Delt Fly		14	14	14	2.00	5
2591	HM Dumbbell Shoulder Press		14	14	14	2.00	5
2592	HM Single-Leg Overhead Dumbbell Press		14	14	14	2.00	5
2593	6 Way Shoulder Raise		14	14	14	2.00	5
2594	Seated dumbbell lateral raise	The seated dumbbell lateral raise is an exercise that targets the shoulder muscles, particularly the medial or middle head of the deltoids. Performing it on a bench helps enforce strict form and eliminate swinging or using momentum to move the weights. Lateral raise variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2595	AM Dumbbell Shoulder Press	The seated dumbbell shoulder pressis an exercise for building muscle and strengthening the shoulders, particularly but not exclusively the front heads. The triceps also assist. Some lifters feel that using dumbbells versus a barbell reduced injury risk.	14	14	14	2.00	5
2596	AM Dumbbell Side Raise	The dumbbell lateral raise is an upper body isolation exercise for building shoulder strength and muscle. Its a staple strength training move and is a great option for accessory work on upper body training days. This exercise particularly focuses on the lateral or medial head of the deltoid, making them appear wider and more developed.	14	14	14	2.00	5
2597	AM Front Raise	The alternating dumbbell front raise is an isolation movement that targets the shoulders. By using one arm at a time, you can use more weight than when you use both arms at once. Bodybuilders use this exercise to zero in on the front shoulders, but the simple movement also makes it great for people new to lifting weights.	14	14	14	2.00	5
2598	UP Dumbbell Lateral Raise	The dumbbell lateral raise is an upper body isolation exercise for building shoulder strength and muscle. Its a staple strength training move and is a great option for accessory work on upper body training days. This exercise particularly focuses on the lateral or medial head of the deltoid, making them appear wider and more developed.	14	14	14	2.00	5
2599	UP Seated Dumbbell Overhead Press	The seated dumbbell shoulder pressis an exercise for building muscle and strengthening the shoulders, particularly but not exclusively the front heads. The triceps also assist. Some lifters feel that using dumbbells versus a barbell reduced injury risk.	14	14	14	2.00	5
2600	AA Incline Bench Dumbbell Reverse Fly		14	14	14	2.00	5
2601	CM Forward Shoulder Press		14	14	14	2.00	5
2602	Dumbbell Halo		14	14	14	2.00	5
2603	Standing Dumbbell Scap Raise		14	14	14	2.00	5
2604	Holman Overhead Press		14	14	14	2.00	5
2605	Holman Slow Weighted Half Jack to Overhead Press		14	14	14	2.00	5
2606	Holman Slow Arnold Press		14	14	14	2.00	5
2607	Holman Boat Arnold Press with Feet Push-Out		14	14	14	2.00	5
2608	Holman Dumbbell Hip Drive to Overhead Press		14	14	14	2.00	5
2609	Holman Squat Thrust to Alternating Renegade Triceps Press		14	14	14	2.00	5
2610	Holman Cheer Press		14	14	14	2.00	5
2611	Holman Left Arm Press with Right Arm Hold		14	14	14	2.00	5
2612	Holman Right Arm Press with Left Arm Hold		14	14	14	2.00	5
2613	Holman Left Front Raise with Right Hold		14	14	14	2.00	5
2614	Holman Right Front Raise with Left Hold		14	14	14	2.00	5
2615	Holman Alternating Front Raise to Side Raise		14	14	14	2.00	5
2616	Holman Heavy Right Arm Overhead Press		14	14	14	2.00	5
2617	Holman Heavy Left Arm Overhead Press		14	14	14	2.00	5
2618	Holman Right Arm Heavy Overhead Press		14	14	14	2.00	5
2619	Holman Right Diagonal Lunge to Overhead Press		14	14	14	2.00	5
2620	Holman Left Arm Heavy Overhead Press		14	14	14	2.00	5
2621	Holman Weighted Palms-In Overhead Press		14	14	14	2.00	5
2622	Dumbbell racked carry	The dumbbell racked carry involves carrying dumbbells for time or distance, while holding them close to the shoulders in a front-racked position. Similar to a dumbbell farmers carry, it can be a challenging finisher to any workout, or work well in fat-loss circuit training or as an accessory movement to heavy lifts like the deadlift.	14	14	14	2.00	5
2623	Dumbbell clean and push-press	The dumbbell clean and push-press is a full-body movement that targets both the lower and upper body. The clean utilizes the muscles of the hips, legs, glutes, back, and biceps, while the push-press utilizes the shoulders and triceps. It differs from the clean and press in that the push-press allows you to use lower-body momentum to power through the most difficult part of the press. It can be trained in low to moderate reps for strength, or for higher reps, such as 8-12 reps per set or more, for muscle building or metabolic conditioning.	14	14	14	2.00	5
2624	Total Fitness Dumbbell Farmers Carry	The dumbbell farmers walk or carry is an exercise with roots in competitive strongman training, but which is also popular in CrossFit and functional training. It can be a challenging finisher to any workout, or work well in fat-loss circuit training or as an accessory movement to heavy lifts like the deadlift.	14	14	14	2.00	5
2625	Single-arm dumbbell racked carry	The single-arm dumbbell racked carry involves carrying a single dumbbell for time or distance, while holding it close to the shoulders in a front-racked position. Similar to a dumbbell farmers carry, it can be a challenging finisher to any workout, or work well in fat-loss circuit training or as an accessory movement to heavy lifts like the deadlift.	14	14	14	2.00	5
2626	Jordan Shallow Dumbbell Pull-Over		14	14	14	2.00	5
2694	Cable Seated Lateral Raise		14	14	14	2.00	5
2627	King Maker Dumbbell Lateral Raise	The dumbbell lateral raise is an upper body isolation exercise for building shoulder strength and muscle. Its a staple strength training move and is a great option for accessory work on upper body training days. This exercise particularly focuses on the lateral or medial head of the deltoid, making them appear wider and more developed.	14	14	14	2.00	5
2628	Dumbbell shadow boxing	Dumbbell shadow boxing is a more advanced version of a popular conditioning exercise. By adding a pair of lightweight dumbbells, you can greatly increase the challenge to both the shoulders and cardiovascular system.	14	14	14	2.00	5
2629	King Maker Dumbbell Farmers Carry	The dumbbell farmers walk or carry is an exercise with roots in competitive strongman training, but which is also popular in CrossFit and functional training. It can be a challenging finisher to any workout, or work well in fat-loss circuit training or as an accessory movement to heavy lifts like the deadlift.	14	14	14	2.00	5
2630	King Maker Dumbbell Shrug	The standing dumbbell shrug is a popular movement to build and strengthen the trapezius muscles. Itâ€™s a often trained on a bodybuilding-style shoulder or back training day, but can also work well in full-body or strength-focused training.	14	14	14	2.00	5
2631	30 Shoulders Alternating Dumbbell Front Raise		14	14	14	2.00	5
2632	30 Shoulders Bent-Over Dumbbell Reverse Fly		14	14	14	2.00	5
2633	30 Shoulders Dumbbell Front Raise		14	14	14	2.00	5
2634	30 Shoulders Dumbbell Lateral Raise		14	14	14	2.00	5
2635	30 Shoulders Dumbbell Shrug		14	14	14	2.00	5
2636	30 Shoulders Incline Face-Down Dumbbell Reverse Fly		14	14	14	2.00	5
2637	30 Shoulders Seated Dumbbell Front Raise		14	14	14	2.00	5
2638	30 Shoulders Seated Dumbbell Side Raise		14	14	14	2.00	5
2639	30 Shoulders Neutral-Grip Arnold Press		14	14	14	2.00	5
2640	30 Shoulders Standing Dumbbell Upright Row		14	14	14	2.00	5
2641	MetaBurn 3-Way Shoulder Raise		14	14	14	2.00	5
2642	MetaBurn Dumbbell Overhead Press		14	14	14	2.00	5
2643	MetaBurn Single-Leg Arnold Press		14	14	14	2.00	5
2644	RG Forward-Leaning Dumbbell Upright Row		14	14	14	2.00	5
2645	RG Alternating Seated Dumbbell Lateral Raise		14	14	14	2.00	5
2646	RG Seated Dumbbell Shoulder Press		14	14	14	2.00	5
2647	FYR2 Dumbbell Clean and Jerk		14	14	14	2.00	5
2648	FYR2 Dumbbell Cross-Body Front Raise		14	14	14	2.00	5
2649	FYR2 Dumbbell Front Raise		14	14	14	2.00	5
2650	FYR2 Dumbbell Lateral Raise		14	14	14	2.00	5
2651	FYR2 Lateral Raise Hold		14	14	14	2.00	5
2652	FYR2 Seesaw Dumbbell Military Press		14	14	14	2.00	5
2653	FYR2 Single-Dumbbell Halo		14	14	14	2.00	5
2654	FYR2 Single-Dumbbell Overhead Press		14	14	14	2.00	5
2655	Car driver	The car driver is a variation of the plate front raise exercise where the lifter holds a weight plate in front of them and twists it from side to side, similar to a steering wheel. It targets the muscles of the shoulders, the front or anterior deltoids in particular, but is also challenging to the core and upper-back muscles. It can provide variety in a shoulder-focused muscle-building workout or as part of an upper-body or full-body circuit.	14	14	14	2.00	5
2656	Arnold press	Named after the iconic bodybuilder and movie star, the Arnold press adds rotation to a classic shoulder press. It allows the hands to rotate naturally, while also hitting all three heads of the deltoids in one motion. It is usually performed for moderate to high reps, such as 8-12 reps or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2657	Front Plate Raise	The plate front raise is a variation of the dumbbell front raise where the lifter holds a weight plate between two hands, rather than using a dumbbell, barbell, or other weight. It can provide variety in a shoulder-focused muscle-building workout, or as part of an upper body or full-body circuit.	14	14	14	2.00	5
2658	Battle ropes	Battle ropes are an explosive training tool that involves moving the rope in waves with the other end of the rope anchored at ground level. There are many different types of waves, but the most common is alternating waves with the left and right hands. The battle ropes can be performed for short bursts as power training, for longer durations as cardiovascular training, or as a component of a conditioning or fat-loss circuit.	14	14	14	2.00	5
2659	Seated rear delt fly	The seated rear delt fly is an upper-body exercise that targets the real deltoid of the shoulder. By performing the movement seated, it eliminates momentum from the rest of the body. This movement is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2660	Circus Bell		14	14	14	1.00	7
2661	Landmine Linear Jammer	The linear jammer is an explosive pressing movement performed using an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. The linear jammer involves pressing the weight into the air, then catching it with the other hand. The movement focuses primarily on the muscles of the shoulders or deltoids. It can be trained in traditional muscle and strength-focused rep ranges, for lower reps with a focus on explosive pressing power, or for higher reps.	14	14	14	2.00	5
2662	Crucifix		14	14	14	1.00	7
2663	Bar shoulder extension stretch	The bar shoulder extension stretch is a technique to increase overhead mobility (known as shoulder flexion) and thoracic extension with the help of a bar or other stable object. It is often used as part of a warm-up before upper-body training.	14	14	14	1.00	6
2664	Chair Upper Body Stretch		14	14	14	1.00	6
2665	Sled Reverse Flye		14	14	14	2.00	5
2666	Plate shoulder circle big to small	The plate shoulder circle big to small is an exercise targeting the shoulder complex. Typically, this is considered a warm-up move rather than a working exercise. It warms up the shoulder joint and works small and hard-to-attack muscles such as the rotator cuff group.	14	14	14	2.00	5
2667	Sled Overhead Backward Walk		14	14	14	1.00	5
2668	Log Lift		14	14	14	1.00	7
2904	Bodyweight Triceps Rope Press		16	16	16	2.00	5
2905	Holman Heavy Triceps Overhead Press		16	16	16	2.00	5
2669	Standing suspended rear delt fly	The standing suspended rear delt fly is a bodyweight movement targeting the shoulders and upper back using a suspension strap system or gymnastic rings. It can be performed for time or reps as part of a dynamic warm-up for an upper-body strength workout, or in the workout itself either in traditional muscle-building rep ranges or for higher reps.	14	14	14	2.00	5
2670	Waiters carry	The waiters carry is a type of loaded carry that targets the core, shoulders, and upper back. A weight is raised overhead with a single arm before the lifter begins walking in that position. It resembles a waiter carrying a tray overheadâ€”hence the name. It can be performed for time or distance.	14	14	14	2.00	5
2671	Towel dumbbell front raise	The towel dumbbell front raise is a variation of the dumbbell front raise that involves hanging a dumbbell from a towel held in the hands. It could also be performed with a kettlebell or weight plate. It can provide variety in a shoulder-focused muscle-building workout or as part of an upper-body or full-body circuit.	14	14	14	2.00	5
2672	Reach-roll-lift combo	The reach-roll-lift combo is a mobility drill for the upper back and shoulders. It can be part of a dynamic warm-up for upper-body workouts, or as postural training anytime.	14	14	14	2.00	6
2673	Upright Row - Gethin Variation	The barbell upright row is a barbell exercise that builds stronger and bigger traps. Many lifters combine this move with either their back or shoulder workout since it involves both body parts.	14	14	14	2.00	5
2674	Squat Press Shoulder Press - Gethin Variation		14	14	14	2.00	5
2675	Plate lateral raise	The plate lateral raise is an exercise targeting the side heads of the shoulder muscles or deltoids. It closely resembles the more popular dumbbell lateral raise, but is performed with light plates, making the movement slightly more difficult. It is usually performed for moderate to high reps as part of a shoulder or upper-body workout.	14	14	14	2.00	5
2676	Standing Military Press - Gethin Variation	The military press is a compound movement used to build size and strength in the shoulders. It was once contested as a fourth powerlift, but is rarely competed anymore. However, being able to press a significant weight overhead remains a popular marker of upper-body strength. The military press can be trained as a strength lift or in traditional muscle-building rep ranges as part of full-body, shoulder-focused, or upper-body training.	14	14	14	2.00	5
2677	Bent-over plate rear delt raise	The bent-over plate rear delt raise is an exercise targeting the rear heads of the shoulders, or deltoids. You can also use dumbbells or other light weights for a similar effect. This movement is usually performed as part of a dynamic warm-up or as a high-rep burnout movement on a shoulder or back day.	14	14	14	2.00	5
2678	Single-arm landmine press	The single-arm landmine press is an upper-body exercise that uses an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. The angle of a landmine press is usually somewhere between an incline press and a military press, and the movement focuses primarily on the muscles of the shoulders or deltoids. It can be trained in traditional muscle and strength-focused rep ranges or for higher reps.	14	14	14	2.00	5
2679	Plate front raise	The plate front raise is a variation of the front raise where the lifter holds a weight plate between two hands, rather than using a dumbbell, barbell, or other weight. It can provide variety in a shoulder-focused muscle-building workout or as part of an upper-body or full-body circuit.	14	14	14	2.00	5
2680	Holman Slow Overhead Press		14	14	14	2.00	5
2681	30 Shoulders Plate Front Raise		14	14	14	2.00	5
2682	Single-arm landmine push-press	The single-arm landmine push-press is an explosive upper-body exercise that uses an angled barbell anchored at floor level in a landmine device. It can also be performed by sticking a barbell in the corner of a room, preferably in a towel to protect the walls. The angle of a landmine press is usually somewhere between an incline press and a military press, and the movement focuses primarily on the muscles of the shoulders or deltoids. It can be trained in traditional muscle and strength-focused rep ranges or for higher reps.	14	14	14	2.00	5
2683	Single-arm cable front raise	The single-arm cable front raise is an isolation exercise targeting the anterior and medial deltoids or shoulder muscles. The single-arm version of this movement allows you to focus on each side independently. Because grip will be a limitation, it is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2684	Cable Internal Rotation		14	14	14	1.00	5
2685	Seated face pull	The seated face pull is a cable exercise targeting the shoulder muscles, particularly the rear delts, and the muscles of the upper back. This can help build healthier shoulders and posture, and increase shoulder stability. It is usually performed for moderate to high reps as part of a dynamic warm-up for an upper-body workout or in the main part of a shoulder-focused workout.	14	14	14	2.00	5
2686	Single-arm bent-over cable rear delt fly	The single-arm bent-over cable rear delt fly is an exercise targeting the rear deltoids. It is a great way to isolate this area of the shoulder and attack each side independently. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2687	Seated cable shoulder press	The seated cable shoulder press is a multijoint machine-based exercise that focuses on the deltoid or shoulder muscles, as well as the triceps. Its most common in muscle-building workouts and rep ranges, usually 8-12 reps or more.	14	14	14	2.00	5
2688	Standing face pull	The standing face pull is an isolation exercise primarily targeting the rear deltoids, traps, and upper back. It is most often performed with a rope attachment.	14	14	14	2.00	5
2689	Standing cable rear delt row	The standing cable rear delt row primarily targets the rear deltoids. This movement also hits the traps, rhomboids, and biceps. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2690	Standing Low-Pulley Deltoid Raise	The single-arm cable lateral raise is an isolation exercise targeting the shoulders, specifically the medial deltoid. This movement also hits the traps and upper back, and allows you to focus on each side independently. Because grip is a limitation, it is usually performed for moderate to high reps, like at least 8-12 reps per set, as part of an upper body or shoulders-focused workout.	14	14	14	2.00	5
2906	Holman Couch Triceps Dip		16	16	16	2.00	5
2907	FYR2 Triceps Push-Up		16	16	16	2.00	5
2908	30 Arms Triceps Dip		16	16	16	2.00	5
2695	Single-arm lying cable front raise	The single-arm lying cable front raise is an isolation exercise for the shoulders, performed lying on the back, either on a bench or the ground, and lifting the cable over the torso one arm at a time. This movement is usually performed for moderate to high reps for a burn and pump as part of a shoulder-focused workout.	14	14	14	2.00	5
2696	Lying cable front raise	The lying cable front raise is an isolation exercise for the shoulders, particularly the front deltoids. It is performed lying on the back, either on a bench or the ground, with the cable lifted over the torso. This movement is usually performed for moderate to high reps for a burn and pump as part of a shoulder-focused workout.	14	14	14	2.00	5
2697	Cable Rear Delt Fly - Gethin Variation	The standing crossed-cable rear delt fly is an isolation exercise for the rear deltoids. It is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2698	One-Arm Cable Side Raise - Gethin Variation	The single-arm cable lateral raise is an isolation exercise targeting the shoulders, specifically the medial deltoid. This movement also hits the traps and upper back, and allows you to focus on each side independently. Because grip is a limitation, it is usually performed for moderate to high reps, like at least 8-12 reps per set, as part of an upper body or shoulders-focused workout.	14	14	14	2.00	5
2699	Rope Face Pull - Gethin Variation	The standing face pull is an isolation exercise primarily targeting the rear deltoids, traps, and upper back. It is most often performed with a rope attachment.	14	14	14	2.00	5
2700	Lying cable lateral raise	The lying cable lateral raise is an isolation exercise that targets the medial or middle deltoid muscle of the shoulders. It is most common in muscle-building shoulder or upper-body workouts, usually in higher rep ranges of at least 8-12 reps per set.	14	14	14	2.00	5
2701	Cable seated row	The cable seated row is a popular exercise to train the muscles of the upper back, including the lats (latissimus dorsi), traps, rhomboids, and rear deltoids, using a cable stack. It also targets the biceps to a lesser degree. The cable row can work well in a variety of rep ranges but is most popular in muscle-building workouts or as an accessory movement for strength workouts.	14	14	14	2.00	5
2702	Single-arm cable lateral raise	The single-arm cable lateral raise is an isolation exercise targeting the shoulders, specifically the medial deltoid. This movement also hits the traps and upper back and allows you to focus on each side independently. Because grip is a limitation, it is usually performed for moderate to high reps, at least 8-12 reps per set, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2703	UP Cable Face Pull	The standing face pull is an isolation exercise primarily targeting the rear deltoids, traps, and upper back. It is most often performed with a rope attachment.	14	14	14	2.00	5
2704	AA Cable Leaning Side Raise		14	14	14	2.00	5
2705	30 Shoulders Bent-Over Low Cable Reverse Fly		14	14	14	2.00	5
2706	30 Shoulders Cable Rope Face Pull		14	14	14	2.00	5
2707	30 Shoulders Cable Straight-Bar Front Raise		14	14	14	2.00	5
2708	30 Shoulders Cable Straight-Bar Upright Row		14	14	14	2.00	5
2709	30 Shoulders High Cable Reverse Fly		14	14	14	2.00	5
2710	30 Shoulders Single-Arm Bent-Over Cable Reverse Fly		14	14	14	2.00	5
2711	30 Shoulders Single-Arm Cable Front Raise		14	14	14	2.00	5
2712	30 Shoulders Single-Arm Leaning Cable Lateral Raise		14	14	14	2.00	5
2713	RG 3-Way Single-Arm Rear Delt Cable Fly		14	14	14	2.00	5
2714	RG Single-Arm Cross-Body Cable Front Raise		14	14	14	2.00	5
2715	Smith machine shoulder press	The Smith machine shoulder press is a machine-based exercise targeting the deltoid muscles. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a shoulder or upper-body focused workout.	14	14	14	2.00	5
2716	Machine shoulder press	The machine shoulder press is a machine-based exercise targeting the deltoid muscles. It approximates the motion of a free-weight shoulder press, but uses a selectorized weight-stack or plate-loaded machine. Many such machines also allow you to choose between different grips and grip widths. Machine shoulder presses are often done for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or shoulder-focused portion of a workout.	14	14	14	2.00	5
2717	Reverse Machine Flyes	The machine rear delt fly is an exercise targeting the rear head of the shoulder muscle or deltoids, as well as the muscles of the upper back. Its sort of the reverse of the machine chest fly, and is sometimes performed on the same machine, but facing the opposite direction. Because it targets such small muscles, this exercise is usually performed with light weight for high reps, such as 10-15 reps per set or more.	14	14	14	2.00	5
2718	Single-arm Smith machine upright row	The single-arm Smith machine upright row is an upper-body exercise targeting the muscles of the traps and shoulders. This movement is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or shoulder-focused workout.	14	14	14	2.00	5
2719	Machine Lateral Raise		14	14	14	2.00	5
2720	Smith machine behind-the-neck press	The Smith machine behind-the-neck press is a machine-based exercise targeting the deltoids. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a shoulder or upper-body focused workout.	14	14	14	2.00	5
2721	Smith Machine Behind-The-Neck Press - Gethin Variation	The Smith machine behind-the-neck press is a machine-based exercise targeting the deltoids. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a shoulder or upper-body focused workout.	14	14	14	2.00	5
2722	30 Shoulders Leg Press Shoulder Press		14	14	14	2.00	5
2723	30 Shoulders Machine Shoulder Press		14	14	14	2.00	5
2724	30 Shoulders Pec-Deck Reverse Fly		14	14	14	2.00	5
2725	30 Shoulders Smith Machine Behind-The-Head Press		14	14	14	2.00	5
2726	30 Shoulders Smith Machine Shoulder Press		14	14	14	2.00	5
2727	Handstand push-up	The handstand push-up is an exercise targeting the shoulders, although other muscles assist in the completion of the reps. It is common in both CrossFit workouts and advanced bodyweight or calisthenics training. Given the degree of difficulty, beginners will need to progress to this move.	14	14	14	2.00	5
2728	Upward Stretch		14	14	14	2.00	6
2729	Shoulder Circles		14	14	14	2.00	6
2730	Cross-body shoulder stretch	The cross-body shoulder stretch targets increased flexibility in the shoulders. It is a common inclusion in upper-body dynamic warm-ups prior to training or sports, but can also be performed anytime to "limber up" the upper body.	14	14	14	2.00	6
2731	Arm circle	The arm circle is a non-weighted exercise targeting the shoulders. It involves extending your arms to the sides and drawing small circles in the air with your hands. It is common in warm-ups for both training and athletics, and is often performed simply until someone feels a burn, rather than for a set amount of reps.	14	14	14	2.00	6
2732	Seated Front Deltoid		14	14	14	1.00	6
2733	Shoulder Raise		14	14	14	2.00	6
2734	Hand Stand Push-Up	The handstand push-up is an exercise targeting the shoulders, although other muscles assist in the completion of the reps. It is common in both CrossFit workouts and advanced bodyweight or calisthenics training. Given the degree of difficulty, beginners will want to progress to this move.	14	14	14	2.00	5
2735	Wall walk	The wall walk is a challenging exercise that works the entire body. From a push-up position, the hands walk back as the feet walk up the wall, then the whole movement is reversed. This is not for beginners, who will need to progress to this exercise.	14	14	14	2.00	5
2736	Return Push from Stance		14	14	14	2.00	3
2737	Wall shoulder tap	The wall shoulder tap is a bodyweight shoulder exercise that is a popular movement for gymnasts, cheerleaders, and other athletes who need to spend a lot of time in dynamic handstand movements. Beginning in a handstand position with toes touching the wall, one hand is raised to touch the opposing shoulder. This continues in alternating fashion for the duration of the set.	14	14	14	2.00	5
2738	Bear crawl shoulder tap	The bear crawl shoulder tap is a variation of the bear crawl that involves touching the opposing shoulder while in a static bear crawl hold. It adds an extra coordination and core challenge to an already intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups. It can be done as a full-body warm-up, or as part of a bodyweight circuit or flow.	14	14	14	2.00	5
2739	Shadow boxing	Shadow boxing is an exercise typically used in combat sports and fighting. However, it can also make a great cardio session for anyone to implement in a fast-paced circuit or as active rest. It is usually performed for time or rounds.	14	14	14	2.00	1
2740	Bear crawl fire feet	Bear crawl fire feet is a variation of the bear crawl that involves running in place while in a static bear crawl hold. It adds an extra coordination and full-body challenge to an already intense full-body movement that targets the cardiovascular system as well as a wide range of muscle groups. It can be done as a full-body warm-up, or as part of a bodyweight circuit or flow.	14	14	14	2.00	1
2741	Wall sprawl	The wall sprawl is a bodyweight exercise targeting the shoulders, although numerous other muscles are recruited to complete the exercise. From an all-fours position, you kick up onto the wall, then back down. Its a serious cardiovascular challenge that is usually performed as part of a fat-loss or athleticism-focused workout.	14	14	14	2.00	3
2742	Bent Over Shoulder Y	The lying rear delt Y works the shoulders, specifically the rear heads. The range of motion differs from the lying rear delt fly. At the midpoint, the arms and torso form a Yâ€”hence the name.	14	14	14	2.00	6
2743	Shoulder L	The bent-over shoulder rotation is an upper-body exercise that helps strengthen the muscles around the rotator cuff for a stable shoulder joint. It is usually performed as part of a dynamic warm-up for the shoulders. It can be performed with body weight, light dumbbells or weight plates, or bands.	14	14	14	2.00	5
2744	Shoulder Dislocation Stretch-Dowel		14	14	14	2.00	6
2745	TBS Inverted Row	The Smith machine inverted row is a bodyweight exercise targeting the muscles of the lats (latissimus dorsi) and upper back, using the bar of the Smith machine to hang and pull from. You can change the bar height to customize the difficulty level and desired angle of the row. This variation is usually performed for moderate to high reps, such as 8-12 reps per set or more.	14	14	14	2.00	5
2746	PVC Shoulder Stretch		14	14	14	2.00	6
2747	Shoulder T	The bent-over plate rear delt raise is an exercise targeting the rear heads of the shoulders, aka deltoids. You can also use dumbbells or other light weights for a similar effect. This movement is usually performed as part of a dynamic warm-up, or as a high-rep burnout movement on a shoulder or back day.	14	14	14	2.00	6
2748	HM Arm Circle		14	14	14	2.00	5
2749	HM Shoulder Stretch		14	14	14	2.00	6
2750	HM Shoulder Stretch on Floor		14	14	14	2.00	6
2751	HM Shoulder Tap		14	14	14	2.00	6
2752	HM Hand-On-Wall Stretch		14	14	14	2.00	5
2753	HM Jumping Arm Circle		14	14	14	2.00	5
2754	Kipping Clapping Pull-Up		14	14	14	2.00	5
2755	Holman Kneeling Overhead Press to Donkey Kick		14	14	14	2.00	5
2756	Floor angel	The floor angel is a stretch targeting shoulder mobility and activation of the shoulder stabilizer muscles. It also targets a range of postural muscles in the upper back.	14	14	14	2.00	5
2757	Shoulder extension stretch	The shoulder extension stretch is focused on bringing more flexibility to the shoulder joint. It increases range of motion in shoulder extension, or moving the arms behind the back. It can be performed as part of a warm-up or mobility and flexibility work post-workout or anytime.	14	14	14	2.00	5
2758	Backward Medicine Ball Throw		14	14	14	1.00	3
2759	Medicine ball scoop throw	The medicine ball scoop throw is an explosive exercise targeting the abdominals and hips. It can be performed for lower reps with a focus on power or for higher reps with a focus on fat loss and conditioning. It begins in a semi-squat position holding a medicine ball, which then gets "scooped" up and thrown overhead in one continuous movement.	14	14	14	2.00	3
2760	Standing Two-Arm Overhead Throw		14	14	14	1.00	3
2909	30 Arms Close-Grip Push-Up		16	16	16	2.00	5
2910	30 Arms BFR Close-Grip Push-Up		16	16	16	2.00	5
2761	Incline face-down bar front raise	The incline face-down bar front raise is an upper-body exercise targeting the shoulders. Because it is performed face down on an angled bench, it has a greater range of motion than standing or upright-seated raises and hits the shoulders from a different angle. Raise variations are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or shoulder-focused training.	14	14	14	2.00	5
2762	Incline anti-gravity shoulder press	The incline anti-gravity shoulder press is an upper-body exercise targeting the shoulders and upper back. It works the rear delts and upper-back muscles isometrically to hold the weight up, while dynamically training the lateral and front delts. Because of the challenge of holding the weight up, this press variation is usually performed with relatively light weights for moderate reps, such as 8-12 reps per set or more, as part of upper-body or shoulder training.	14	14	14	2.00	5
2763	30 Shoulders EZ-Bar Front Raise		14	14	14	2.00	5
2764	Side Wrist Pull		14	14	14	1.00	6
2765	Elbow Circles		14	14	14	1.00	6
2766	Kneeling Arm Drill		14	14	14	1.00	3
2767	Bent-over shoulder rotation	The bent-over shoulder rotation is an upper-body exercise that helps strengthen the muscles around the rotator cuff for a stable shoulder joint. It is usually performed as part of a dynamic warm-up for the shoulders. It can be performed with body weight, light dumbbells or weight plates, or bands.	14	14	14	2.00	5
2768	Band overhead triceps press	The band overhead triceps press is a dynamic arm exercise utilizing a looped exercise band. It could also be performed with an exercise band with handles. It targets the triceps muscles and can be performed for time or reps, either in traditional muscle-building rep ranges such as 12-15 reps per set, or higher rep ranges such as 30, 50, or more.	16	16	16	2.00	5
2769	Band overhead triceps extension	The band overhead triceps extension is a single-joint exercise focused on the triceps that uses the dynamic resistance of the band. The overhead position of the arms targets the long head of the triceps. Many lifters save this move for last in their triceps workout, performing it for moderate to high reps, such as 8-12 reps or more per set.	16	16	16	2.00	5
2770	Band straight-arm pull-down	The band straight-arm pull-down is a non-gym or at home variation of the straight-arm lat pull-down performed using a cable stack machine. It can either be performed in an athletic upright stance, or slightly bent over. It both stretches and contracts the muscles of the lats (latissimus dorsi) as well as providing additional activation to the other upper back muscles and the core. Because the triceps are also isometrically involved in the movement, it is usually performed for higher reps, such as 8-15 reps or more.	16	16	16	2.00	5
2771	Band skullcrusher	The band skullcrusher is a variation of the popular bench exercise targeting the triceps muscles. It is usually performed for moderate to high reps as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2772	Single-arm band kick-back	The single-arm band kick-back is an isolation exercise that targets the triceps. This is a common burnout move performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2773	Incline EZ-bar skullcrusher	The incline EZ-bar skullcrusher is a popular exercise targeting the triceps muscles. The incline angle helps to target the long head of the triceps in particular. This exercise is usually performed for moderate to high reps as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2774	Decline Close-Grip Bench To Skull Crusher		16	16	16	1.00	5
2775	Bench Press - Powerlifting		16	16	16	2.00	4
2776	Behind-the-head skullcrusher	The behind-the-head skullcrusher is a variation on a triceps exercise that has been a staple of bodybuilders for decades. In this version, instead of the bar coming down lightly to the forehead, the bar tracks over the top of the head without touching it. Skullcrushers are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout. If a straight bar is uncomfortable for your wrists or elbows, try using an angled EZ-bar.	16	16	16	2.00	5
2777	Standing barbell overhead triceps extension	The standing barbell overhead triceps extension is an isolation movement targeting the triceps. The overhead position targets the long head of the triceps in particular. This movement is generally performed for moderate to high reps as part of the arms-focused portion of a workout. If holding a straight bar bothers the wrists or elbows, it can alternately be performed with an EZ-bar or neutral-grip bar.	16	16	16	2.00	5
2778	Reverse-grip bench press	The reverse-grip bench press is a popular barbell exercise targeting the chest, triceps, and forearms. The main difference between this exercise and the standard bench press is that the grip is underhand, not overhand. This helps target both the upper chest and the triceps. This lift can feel awkward at first, so go light and dont be afraid to use a spotter.	16	16	16	2.00	5
2779	Bench Press with Chains		16	16	16	1.00	4
2780	Floor Press		16	16	16	1.00	4
2781	One Arm Floor Press		16	16	16	1.00	5
2782	Pin Presses		16	16	16	1.00	4
2783	JM Press With Bands		16	16	16	1.00	5
2784	JM Press		16	16	16	1.00	5
2785	Floor Press with Chains		16	16	16	1.00	4
2786	Reverse Band Bench Press		16	16	16	1.00	4
2787	Decline Barbell Triceps Extension - Gethin Variation	The decline EZ-bar skullcrusher is an upper body isolation exercise targeting the triceps.	16	16	16	2.00	5
2788	AM Skullcrusher	The EZ-bar skullcrusher is a popular exercise targeting the triceps muscles. The EZ-bar is used more often than a straight bar. As for the name, thatâ€™s worst-case scenario. The bar should actually come down behind the head. It is usually performed for moderate to high reps as part of an upper body or arms-focused workout. No need to chase a 1RM on this move!	16	16	16	2.00	5
2789	30 Arms Close-Grip Bench Press		16	16	16	2.00	5
2790	30 Arms Barbell Skullcrusher		16	16	16	2.00	5
2791	FYR2 Sprawl Over Kettlebell		16	16	16	2.00	5
2792	Dumbbell floor press	The dumbbell floor press is a multijoint pressing exercise performed lying on the floor. It can be performed either with the knees bent or flat. The floor press limits the range of motion you would achieve with a regular dumbbell bench press, but still targets the chest, triceps, and anterior delts. This allows you to press more weight than in a dumbbell bench press, and perhaps put less stress on the shoulders.	16	16	16	2.00	4
2911	Supine Chest Throw		16	16	16	1.00	3
2793	Seated triceps press	The seated triceps press is a popular arm-building exercise that targets the triceps with a single dumbbell held by both hands, extending it up behind your head. While you can go surprisingly heavy on this movement, it is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or arm-focused portion of a workout. If youre going heavy, having someone help get the weight into position is a good idea.	16	16	16	2.00	5
2794	Tricep Dumbbell Kickback	The single-arm triceps kick-back is an isolation move from a bent-over position used to increase size and strength of the triceps.	16	16	16	2.00	5
2795	Standing Dumbbell Triceps Extension		16	16	16	2.00	5
2796	Double-arm triceps kick-back	The double-arm triceps kick-back is a popular movement to increase size and strength of the triceps. It is usually performed for moderate to high reps, at least 8-12 reps, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2797	Single-arm dumbbell triceps extension	The single-arm dumbbell triceps extension is a popular exercise targeting the triceps one side at a time. It targets all three heads of the triceps, but when performed with the arm overhead, it can be especially effective at building the long head of the triceps. This exercise is usually performed for moderate to high reps, at least 8-12 reps per set, as part of the upper-body or arm-focused portion of a workout.	16	16	16	2.00	5
2798	Decline Dumbbell Triceps Extension		16	16	16	1.00	5
2799	Dumbbell skullcrusher	The dumbbell skullcrusher is a triceps exercise that has been a staple of bodybuilders for decades. Skullcrushers are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2800	One Arm Pronated Dumbbell Triceps Extension		16	16	16	1.00	5
2801	One Arm Supinated Dumbbell Triceps Extension		16	16	16	1.00	5
2802	Seated Bent-Over Two-Arm Dumbbell Triceps Extension		16	16	16	1.00	5
2803	Tate Press		16	16	16	1.00	5
2804	Standing Bent-Over One-Arm Dumbbell Triceps Extension	The single-arm triceps kick-back is an isolation move from a bent-over position used to increase size and strength of the triceps.	16	16	16	2.00	5
2805	Seated Bent-Over One-Arm Dumbbell Triceps Extension		16	16	16	1.00	5
2806	Dumbbell Tricep Extension -Pronated Grip		16	16	16	1.00	5
2807	V-sit with overhead triceps extension	The V-sit with overhead triceps extension is a hybrid movement that trains the abdominal and triceps muscles simultaneously. It can address multiple muscle groups in a time-efficient muscle-building or circuit-style workout, while also providing a cardiovascular challenge.	16	16	16	2.00	5
2808	PJR Pull-Over		16	16	16	2.00	5
2809	Paul Carter Dumbbell Kick-Back	The single-arm triceps kick-back is an isolation move from a bent-over position used to increase size and strength of the triceps.	16	16	16	2.00	5
2810	Single-arm dumbbell skullcrusher	The single-arm dumbbell skullcrusher is a triceps exercise that has been a staple of bodybuilders for decades. Skullcrushers are usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arms-focused workout.	16	16	16	2.00	5
2811	Dumbbells-together incline bench press	The dumbbells-together incline bench press is an exercise targeting the pectoral muscles, particularly the upper pecs. Squeezing the dumbbells together forces the chest muscles to work hard during the entire press. This press variation is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or chest-focused training.	16	16	16	2.00	5
2812	Incline dumbbell overhead triceps extension	The incline dumbbell overhead triceps extension is a popular exercise targeting the triceps muscles. The incline angle helps to target the long head of the triceps in particular. This exercise is usually performed for moderate to high reps as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2813	Dumbbell Crush Press		16	16	16	2.00	5
2814	Holman Hovering Renegade Triceps Press		16	16	16	2.00	5
2815	Holman Heavy Triceps Press to Overhead Press		16	16	16	2.00	5
2816	Total Fitness Close-Grip Dumbbell Press	The close-grip dumbbell bench press puts a spin on a mainstay of workout enthusiasts worldwide. Itâ€™s a classic move for building a bigger, stronger chest. The difference here is that the dumbbells are held closer together.	16	16	16	2.00	5
2817	Dumbbell row to triceps kick-back	The dumbbell row to triceps kick-back is a dumbbell complex that combines two movements that collectively target the muscles of the lats (latissimus dorsi), upper back, and triceps. It also isometrically targets the core, hamstrings, and glutes. It is usually performed one rep of each movement at a time, although you could perform more reps of each, or increase the reps in successive rounds (e.g., 1 rep in round 1, 2 reps in round 2, etc.). No matter how you structure the sets and reps, it is a time-efficient way to hit two crucial upper-body muscles in any workout.	16	16	16	2.00	5
2818	Rolling triceps press	The rolling triceps press is a dynamic triceps exercise that is popular as a bench press accessory movement among powerlifters. It can be done in traditional muscle-building rep ranges, such as 8-12 reps per set, or for very high reps of 50-100 reps per set to boost triceps size and strength. It can be performed on a bench or on the floor if a bench is unavailable.	16	16	16	2.00	5
2819	MetaBurn Skullcrusher to Ab Crunch		16	16	16	2.00	5
2820	FYR2 Single-Dumbbell Triceps Extension		16	16	16	2.00	5
2821	30 Arms Overhead Dumbbell Triceps Extension		16	16	16	2.00	5
2822	30 Arms Dumbbell Skullcrusher		16	16	16	2.00	5
2823	30 Arms Dumbbell Kick-Back		16	16	16	2.00	5
2824	30 Arms BFR Dumbbell Kick-Back		16	16	16	2.00	5
2825	Dumbbell saw triceps skullcrusher	The dumbbell saw triceps skullcrusher is a variation of the classic skullcrusher triceps exercise that has been a staple of bodybuilders for decades. It combines a dumbbell skullcrusher with a dumbbell shoulder press. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2826	Chain Handle Extension		16	16	16	1.00	4
2827	Sled Overhead Triceps Extension		16	16	16	1.00	5
2828	Body Triceps Press Using Flat Bench	The bodyweight triceps press is an arm movement that involves performing overhead presses in a face-down position on a Smith machine or other raised bar. It is a surprisingly difficult movement that hammers all three heads of the triceps and can easily be scaled upward or downward in difficulty by moving the bar.	16	16	16	2.00	5
2829	Suspended Triceps Press		16	16	16	1.00	5
2830	Seated triceps push-down	The seated triceps push-down is a triceps exercise that is performed with a rope attachment. The seated position helps eliminate the use of momentum. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	16	16	16	2.00	5
2831	Machine triceps extension-	The machine triceps extension is a popular exercise to build size and strength in the triceps muscles. It approximates the motion of a free-weight skullcrusher, but uses a selectorized weight-stack or plate-loaded machine. Machine triceps extensions are often done for moderate to high reps, such as 8-12 reps per set or more, as part of the upper-body or arm-focused portion of a workout.	16	16	16	2.00	5
2832	Holman Overhead Weighted Triceps Press		16	16	16	2.00	5
2833	30 Arms Weighted Triceps Dip		16	16	16	2.00	5
2834	Cable V-bar push-down	The cable V-bar push-down is a popular gym exercise for targeting the triceps. It utilizes an angled bar, which can allow you to move heavier weights more comfortably than a straight bar or rope. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2835	Reverse Grip Triceps Pushdown	The reverse-grip cable straight-bar push-down is a twist on the popular cable straight-bar push-down. The difference has to do with how the hands are positioned holding the bar: the palms facing up rather than down. Because grip will be a limiting factor, this movement is usually performed for moderate to high reps, such as 8-12 reps per set or higher.	16	16	16	2.00	5
2836	Kneeling cable triceps extension	The kneeling cable triceps extension is a single-joint exercise meant to isolate the triceps muscles using a high pully on a cable stack and a bench. It can also be performed in a tall-kneeling stance from a low pully. It is most commonly used in muscle-building triceps or arm workouts.	16	16	16	2.00	5
2837	Single-arm cable triceps extension	The single-arm cable triceps extension is a single-joint isolation exercise for building the triceps. It involves driving a handle attached to a cable stack overhead to full extension. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2838	Dip Machine	The dip machine is a machine exercise that mimics a triceps dip, a bodyweight exercise performed on parallel bars or on a pull-up and dip station. It targets the triceps first, but also stretches and strengthens the chest and shoulders. Dips with a triceps focus are usually performed with an upright torso, the knees bent and crossed, and the arms close to the body. Dips can be performed for low reps for strength or higher reps for muscle growth.	16	16	16	2.00	5
2839	Triceps Pushdown	The cable V-bar push-down is a popular gym exercise for targeting the triceps. It utilizes an angled bar, which can allow you to move heavier weights more comfortably than a straight bar or rope. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2840	Low cable overhead triceps extension	The low cable overhead triceps extension is a single-joint isolation exercise for building the triceps. It involves lying on a bench and then driving the rope handle to full extension. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2841	Lying cable triceps extension	The lying cable triceps extension is an isolation exercise performed lying on either a bench or the floor. This movement is usually performed for moderate to high reps for a burn and pump as part of an arm-focused workout.	16	16	16	2.00	5
2842	Low Cable Triceps Extension		16	16	16	1.00	5
2843	Cable overhead triceps extension	The cable overhead triceps extension is a cable exercise performed in a seated position, targeting the triceps muscles. While it hits all three heads of the triceps, the overhead position helps to target the long head in particular. The seated position helps eliminate the use of momentum. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	16	16	16	2.00	5
2844	Single-arm low cable triceps extension	The single-arm low cable triceps extension is a single-joint isolation exercise for building the triceps. It involves driving a handle attached to a cable stack overhead to full extension. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2845	Incline cable straight-bar triceps extension	The incline cable straight-bar triceps extension is a single-joint arm exercise performed on an incline bench. This incline position offers a great stretch and range of motion, potentially targeting the long head of the triceps more than some other triceps exercises. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	16	16	16	2.00	5
2846	Paul Carter Overhead Rope Triceps Extension	The rope overhead triceps extension is a single-joint exercise focused on the triceps and using a cable stack with a rope handle. The overhead position targets the long head of the triceps in particular. Many lifters save this move for last in their triceps workout, performing it for moderate to high reps, like at least 8-12 reps or higher.	16	16	16	2.00	5
2847	TBS Rope Cable Push-Down	The cable rope push-down is a popular exercise targeting the triceps muscles. Its easy to learn and perform, making it a favorite for everyone from beginners to advanced lifters. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2848	Single-arm cable triceps kick-back	The single-arm cable triceps kick-back is an isolation exercise that targets the triceps. This is a common burnout move performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2849	Incline cable rope triceps extension	The incline cable rope triceps extension is a single-joint arm exercise performed on an incline bench. This incline position offers a great stretch and range of motion, potentially targeting the long head of the triceps more than some other triceps exercises. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	16	16	16	2.00	5
2850	Reverse-grip cable straight-bar push-down	The reverse-grip cable straight-bar push-down is a twist on the popular cable straight-bar push-down. The difference has to do with how the hands are positioned holding the bar: the palms facing up rather than down. Because grip will be a limiting factor, this movement is usually performed for moderate to high reps, such as 8-12 reps per set or higher.	16	16	16	2.00	5
2851	Kneeling Cable Triceps Extension - Gethin Variation	The kneeling cable triceps extension is an single-joint exercise meant to isolate the triceps muscles, using a high pully on a cable stack and a bench. It can also be performed in a tall-kneeling stance from a low pully. It is most commonly used in muscle-building triceps or overall arms workouts.	16	16	16	2.00	5
2852	Cable Overhead Triceps Extension - Gethin Variation	The overhead triceps extension is an isolation exercise that is performed with a cable. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	16	16	16	2.00	5
2853	Reverse-Grip Cable Triceps Pushdown - Gethin Variation	The reverse-grip cable straight-bar push-down is a twist on the popular cable straight-bar push-down. The difference has to do with how the hands are positioned holding the bar: the palms facing up rather than down. Because grip will be a limiting factor, this movement is usually performed for moderate to high reps, such as 8-12 reps per set or higher.	16	16	16	2.00	5
2854	Cable Triceps Extension - Gethin Variation	The cable rope push-down is a popular exercise targeting the triceps muscles. Its easy to learn and perform, making it a favorite for everyone from beginners to advanced lifters. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.The cable rope push-down is a popular exercise targeting the triceps muscles. Its easy to learn and perform, making it a favorite for everyone from beginners to advanced lifters. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2855	Single-arm incline triceps extension	The single-arm incline triceps extension is a dumbbell exercise targeting the triceps. The incline angle helps to target the long head of the triceps in particular. This exercise is usually performed for moderate to high reps as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2856	Triceps Overhead Extension with Rope - Gethin Variation	The overhead triceps extension is an isolation exercise that is performed with a cable. It is usually performed for moderate to high reps as part of the arm-focused portion of a workout.	16	16	16	2.00	5
2857	Cable rope push-down	The cable rope push-down is a popular exercise targeting the triceps muscles. Its easy to learn and perform, making it a favorite for everyone from beginners to advanced lifters. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2858	Cable straight-bar push-down	The cable straight-bar push-down is a popular gym exercise for targeting the triceps. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2859	Straight-arm bar pull-down	The straight-arm bar pull-down is a variation of the straight-arm lat pull-down performed using a cable stack machine. It can either be performed in an athletic upright stance, or slightly bent over. It both stretches and contracts the muscles of the lats (latissimus dorsi) as well as providing additional activation to the other upper back muscles and the core. Because the triceps are also isometrically involved in the movement, it is usually performed for higher reps, such as 8-15 reps or more.	16	16	16	2.00	5
2860	AM Rope Triceps Pushdown	The cable rope push-down is a popular exercise targeting the triceps muscles. Its easy to learn and perform, making it a favorite for everyone from beginners to advanced lifters. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2861	AM Bar Triceps Push-Down	The cable straight-bar push-down is a popular gym exercise for targeting the triceps. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2862	Rope overhead triceps extension	The rope overhead triceps extension is a single-joint exercise focused on the triceps that uses a cable stack with a rope handle. The overhead position targets the long head of the triceps in particular. Many lifters save this move for last in their triceps workout, performing it for moderate to high reps, such as 8-12 reps or more per set.	16	16	16	2.00	5
2863	UP Rope Push-down	The cable rope push-down is a popular exercise targeting the triceps muscles. Its easy to learn and perform, making it a favorite for everyone from beginners to advanced lifters. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2864	UP Triceps Extension Straight-Bar Push-Down	The cable straight-bar push-down is a popular gym exercise for targeting the triceps. It is usually performed for moderate to high reps, such as 8-12 reps or more per set, as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2865	LD Cable One-Arm Upright Row		16	16	16	2.00	5
2866	30 Arms Underhand Cable Straight-Bar Push-Down		16	16	16	2.00	5
2867	30 Arms Single-Arm Reverse-Grip Cable Push-Down		16	16	16	2.00	5
2868	30 Arms Cable V-Bar Push-Down		16	16	16	2.00	5
2869	30 Arms Cable Straight-Bar Push-Down		16	16	16	2.00	5
2870	30 Arms Cable Rope Push-Down		16	16	16	2.00	5
2871	30 Arms Cable Rope Overhead Triceps Extension		16	16	16	2.00	5
2872	BFR underhand straight-bar push-down	The blood flow restriction (BFR) underhand straight-bar push-down is an arm movement that builds triceps size and strength using a cable stack, straight-bar grip, and blood flow restriction bands. It is popular in high-rep "pump"-style arm workouts. The bands should be placed as high as possible on your arms, at a tightness of no greater than 8 on a scale of 10. Most BFR workouts recommend using a far lighter weight than usual, perhaps as low as 25-50 percent of a normal working weight.	16	16	16	2.00	5
2873	BFR overhand straight-bar push-down	The blood flow restriction (BFR) overhand straight-bar push-down is an arm movement that builds triceps size and strength using a cable stack, straight-bar grip, and blood flow restriction bands. It is popular in high-rep "pump"-style arm workouts. The bands should be placed as high as possible on your arms, at a tightness of no greater than 8 on a scale of 10. Most BFR workouts recommend using a far lighter weight than usual, perhaps as low as 25-50 percent of a normal working weight.	16	16	16	2.00	5
2874	BFR cable rope push-down	The blood flow restriction (BFR) cable rope push-down is an arm movement that builds triceps size and strength using a cable stack, rope grip, and blood flow restriction bands. It is popular in high-rep "pump"-style arm workouts. The bands should be placed as high as possible on your arms, at a tightness of no greater than 8 on a scale of 10. Most BFR workouts recommend using a far lighter weight than usual, perhaps as low as 25-50 percent of a normal working weight.	16	16	16	2.00	5
2875	Triceps Pressdown		16	16	16	2.00	5
2876	Machine Triceps Extension	The machine triceps extension is an isolation exercise targeting the tricep muscles.	16	16	16	2.00	5
2877	Smith machine end-grip shoulder press	The Smith machine end-grip shoulder press is a machine-based exercise targeting the shoulder muscles. It is performed holding the end of the bar in the Smith machine on the outside of the rack. It is usually performed for moderate to high reps, such as 8-12 reps per set or more, as part of an upper-body or shoulder-focused workout.	16	16	16	2.00	5
2878	Assist machine triceps push-down	The assist machine triceps push-down is a triceps-focused exercise that is performed on an assisted pull-up or dip station. It is performed by pressing downward on the knee pad of the machine, against the resistance of the weight. It approximates the motion of a triceps cable rope push-down, but with open hands. This variation is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of upper-body or arm-focused training.	16	16	16	2.00	5
2879	Smith machine close-grip bench press-	The Smith machine close-grip bench press is a machine-based movement targeting the chest and triceps. The Smith machine mimics a barbell but provides more stability. This movement can be programmed in low reps for strength or higher reps for muscle and strength endurance. It is often performed for moderate to high reps, such as 8-12 reps per set or more, as part of a chest, arms, or upper-body focused workout.	16	16	16	2.00	5
2880	Machine Triceps Extension - Gethin Variation	The machine triceps extension is an isolation exercise targeting the tricep muscles.	16	16	16	2.00	5
2881	Overhead Machine Triceps Extension - Gethin Variation	The machine triceps extension is an isolation exercise targeting the tricep muscles.	16	16	16	2.00	5
2882	30 Arms Machine Triceps Dip		16	16	16	2.00	5
2883	Triceps dip	The triceps dip is a bodyweight exercise performed on parallel bars or on a pull-up and dip station. It targets the triceps first, but also stretches and strengthens the chest and shoulders. Dips with a triceps focus are usually performed with an upright torso, the knees bent and crossed, and the arms close to the body. Dips can be performed for low reps for strength or higher reps for muscle growth.	16	16	16	2.00	5
2884	Weighted bench dip	The weighted bench dip is a highly effective exercise for building the triceps. The resistance comes from a combination of body weight and added weightâ€”usually a weight plate.	16	16	16	2.00	5
2885	Push-Ups - Close Triceps Position	The close push-up is an upper-body exercise that targets the chest, triceps, and shoulders. The close hand position places more emphasis on the triceps.	16	16	16	2.00	5
2886	Parallel Bar Dip	The triceps dip is a bodyweight exercise performed on parallel bars or on a pull-up and dip station. It targets the triceps first, but also stretches and strengthens the chest and shoulders. Dips with a triceps focus are usually performed with an upright torso, the knees bent and crossed, and the arms close to the body. Dips can be performed for low reps for strength or higher reps for muscle growth.	16	16	16	2.00	5
2887	Ring dip	The ring dip is an upper-body strength exercise performed on gymnastic rings. It targets the muscles of the chest, triceps, and shoulders, but is also quite taxing to the core. It is generally considered to be more difficult than dips performed on parallel bars. It is common in gymnastics training and CrossFit workouts, but is also a simple way to make dips more challenging for any strength athlete.	16	16	16	2.00	5
2888	Feet-elevated bench dip	The feet-elevated bench dip is a popular bodyweight exercise for building the triceps, chest, and shoulders. Elevating the feet brings more chest and shoulder into the movement, but also allows for extra weight on the hips. If these bother your shoulders, try performing them between two benches or chairs rather than on a single bench.	16	16	16	2.00	5
2889	Bodyweight triceps press	The bodyweight triceps press is an arm movement that involves performing overhead presses in a face-down position on a Smith machine or other raised bar. It is a surprisingly difficult movement that hammers all three heads of the triceps and the difficulty can easily be scaled up or down by moving the bar.	16	16	16	2.00	5
2890	Standing Towel Triceps Extension		16	16	16	1.00	5
2891	Tricep Side Stretch		16	16	16	2.00	6
2892	Triceps Stretch		16	16	16	2.00	6
2893	Overhead Triceps		16	16	16	1.00	6
2894	Russian Bar Dip	The Russian dip is a chest-and-triceps building exercise that resembles the chest dip, albeit with a twist that makes it even harder and more taxing.	16	16	16	2.00	5
2895	Straight-arm plank with kick-back	The straight-arm plank with kick-back is a hybrid movement that trains the abdominal and triceps muscles simultaneously. It can address multiple muscle groups in a time-efficient muscle-building or circuit-style workout, while also providing an additional cardiovascular challenge.	16	16	16	2.00	5
2896	TBS Dip	The triceps dip is a machine version of an exercise that many lifters perform using parallel bars or two parallel benches. The machine is found in many gyms.	16	16	16	2.00	5
2897	Bench Dips - Gethin Variation	The bench dip is a highly effective exercise for building the triceps. The resistance comes from the body itself, rather than weight.	16	16	16	2.00	5
2898	Banded dip	The banded dip is a bodyweight exercise targeting the chest, triceps, and shoulders. This variation utilizes an exercise band to help support the lifter in the bottom part of the movement. This makes pushing out of the hole easier, and may combat the shoulder pain that some lifters feel when they perform dips. The top of the movement receives less help from the band, putting more stress on the triceps.	16	16	16	2.00	5
2899	Bench Dip - Gethin Variation	The bench dip is a highly effective exercise for building the triceps. The resistance comes from the body itself, rather than weight.	16	16	16	2.00	5
2900	HM Chair Dip		16	16	16	2.00	5
2901	Bench dip	The bench dip is a highly effective exercise for building the triceps. The resistance comes from the body itself, rather than added weight.	16	16	16	2.00	5
2902	Holman Step Triceps Dip		16	16	16	2.00	5
2903	Holman Chair Triceps Dip		16	16	16	2.00	5
2912	Decline EZ-bar skullcrusher	The decline EZ-bar skullcrusher is a popular exercise targeting the triceps muscles. The angle of the bench creates a greater range of motion than flat bench skullcrushers, as well as targeting the lateral head of the muscle. This exercise is usually performed for moderate to high reps as part of an upper-body or arm-focused workout.	16	16	16	2.00	5
2913	EZ-Bar Skullcrusher	The EZ-bar skullcrusher is a popular exercise targeting the triceps muscles. The EZ-bar is used more often than a straight bar. As for the name, thatâ€™s worst-case scenario. The bar should actually come down behind the head. It is usually performed for moderate to high reps as part of an upper body or arms-focused workout. No need to chase a 1RM on this move!	16	16	16	2.00	5
2914	EZ-bar skullcrusher-	The EZ-bar skullcrusher is a popular exercise targeting the triceps muscles. Contrary to what the name implies, the bar should actually come down behind the head. It is usually performed for moderate to high reps as part of an upper-body or arms-focused workout.	16	16	16	2.00	5
2915	Lying Close-Grip Barbell Triceps Press To Chin		16	16	16	1.00	5
2916	EZ-Bar Skullcrusher - Gethin Variation	The EZ-bar skullcrusher is a popular exercise targeting the triceps muscles. The EZ-bar is used more often than a straight bar. As for the name, thatâ€™s worst-case scenario. The bar should actually come down behind the head. It is usually performed for moderate to high reps as part of an upper body or arms-focused workout. No need to chase a 1RM on this move!	16	16	16	2.00	5
2917	TBS Skullcrusher	The EZ-bar skullcrusher is a popular exercise targeting the triceps muscles. The EZ-bar is used more often than a straight bar. As for the name, thatâ€™s worst-case scenario. The bar should actually come down behind the head. It is usually performed for moderate to high reps as part of an upper body or arms-focused workout. No need to chase a 1RM on this move!	16	16	16	2.00	5
2918	30 Arms EZ-Bar Skullcrusher		16	16	16	2.00	5
\.


--
-- TOC entry 3387 (class 0 OID 16399)
-- Dependencies: 221
-- Data for Name: musculargroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.musculargroup (id, name) FROM stdin;
1	Abdominals
2	Adductors
3	Arm extensors
4	Arm flexors
5	Dorsal muscles
6	Gluteals
7	Lumbar muscles
8	Pectorals
9	Quadriceps
10	Scapulae fixers
11	Shoulders
12	Surae
13	Thigh flexors
14	Trapezii
\.


--
-- TOC entry 3389 (class 0 OID 16403)
-- Dependencies: 223
-- Data for Name: workouttype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workouttype (id, name) FROM stdin;
1	Cardio
2	Olympic Weightlifting
3	Plyometrics
4	Powerlifting
5	Strength
6	Stretching
7	Strongman
\.


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 218
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipment_id_seq', 13, true);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 220
-- Name: exercises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exercises_id_seq', 2918, true);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 222
-- Name: musculargroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.musculargroup_id_seq', 14, true);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 224
-- Name: workouttype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workouttype_id_seq', 7, true);


--
-- TOC entry 3230 (class 2606 OID 16412)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 16414)
-- Name: exercises exercises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercises
    ADD CONSTRAINT exercises_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 16416)
-- Name: musculargroup musculargroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musculargroup
    ADD CONSTRAINT musculargroup_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 16418)
-- Name: workouttype workouttype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workouttype
    ADD CONSTRAINT workouttype_pkey PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 16419)
-- Name: exercises fk_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exercises
    ADD CONSTRAINT fk_type FOREIGN KEY (type) REFERENCES public.workouttype(id) ON DELETE CASCADE;


-- Completed on 2025-02-04 14:42:32 MST

--
-- PostgreSQL database dump complete
--

