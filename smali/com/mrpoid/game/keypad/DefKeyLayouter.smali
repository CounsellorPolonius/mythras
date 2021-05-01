.class public Lcom/mrpoid/game/keypad/DefKeyLayouter;
.super Ljava/lang/Object;
.source "DefKeyLayouter.java"

# interfaces
.implements Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;


# static fields
.field private static final ids:[I

.field private static final titles:[Ljava/lang/String;


# instance fields
.field mode:I

.field root:Lcom/mrpoid/game/engine/ActorGroup;

.field private viewH:I

.field private viewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    .line 206
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "2"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "3"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "4"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "5"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "6"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "7"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "8"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "9"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "*"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "0"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "#"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sput-object v1, Lcom/mrpoid/game/keypad/DefKeyLayouter;->titles:[Ljava/lang/String;

    .line 213
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->ids:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0x0
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createLand(Lcom/mrpoid/game/keypad/Keypad;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 37
    iget v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 39
    :goto_0
    invoke-static {}, Lcom/mrpoid/MrpoidMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mrpoid/R$dimen;->dp1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    mul-float v2, v2, v1

    .line 40
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v12

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v4, v4, v1

    .line 41
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 42
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v2, v2, v1

    .line 43
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v1, v1, v5

    .line 44
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 46
    new-instance v7, Lcom/mrpoid/game/keypad/DPad;

    invoke-direct {v7, v8}, Lcom/mrpoid/game/keypad/DPad;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 47
    invoke-virtual {v7, v2, v3, v1, v4}, Lcom/mrpoid/game/keypad/DPad;->setSize(IIII)V

    .line 48
    invoke-virtual {v7, v8}, Lcom/mrpoid/game/keypad/DPad;->setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 49
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v7}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 52
    new-instance v6, Lcom/mrpoid/game/keypad/TextButton;

    const-string v3, "\u5de6\u8f6f"

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v1, v6

    move-object v2, v8

    move-object v9, v6

    move/from16 v6, v16

    move-object/from16 v17, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    int-to-float v14, v14

    int-to-float v15, v15

    .line 56
    invoke-virtual {v9, v14, v15}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 57
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v9}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 60
    new-instance v7, Lcom/mrpoid/game/keypad/TextButton;

    const-string v3, "\u53f3\u8f6f"

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v18, v9

    move-object v9, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 64
    invoke-virtual {v9, v14, v15}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 65
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v9}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    const/4 v1, 0x0

    const/4 v14, 0x4

    if-nez v10, :cond_2

    .line 69
    new-instance v15, Lcom/mrpoid/game/engine/ActorGroup;

    invoke-direct {v15, v8}, Lcom/mrpoid/game/engine/ActorGroup;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 70
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v15}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ge v5, v1, :cond_1

    .line 77
    new-instance v3, Lcom/mrpoid/game/keypad/TextButton;

    sget-object v1, Lcom/mrpoid/game/keypad/DefKeyLayouter;->titles:[Ljava/lang/String;

    mul-int/lit8 v2, v7, 0x3

    add-int/2addr v2, v5

    aget-object v16, v1, v2

    sget-object v1, Lcom/mrpoid/game/keypad/DefKeyLayouter;->ids:[I

    aget v19, v1, v2

    int-to-float v2, v4

    int-to-float v1, v6

    move/from16 v20, v1

    move-object v1, v3

    move/from16 v21, v2

    move-object v2, v8

    move-object v14, v3

    move-object/from16 v3, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v21

    move/from16 v21, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    int-to-float v1, v11

    int-to-float v2, v12

    .line 81
    invoke-virtual {v14, v1, v2}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 82
    invoke-virtual {v15, v14}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    add-int v1, v11, v13

    add-int v4, v16, v1

    add-int/lit8 v5, v19, 0x1

    move/from16 v7, v20

    move/from16 v6, v21

    const/4 v14, 0x4

    goto :goto_2

    :cond_1
    move/from16 v21, v6

    move/from16 v20, v7

    add-int v1, v12, v13

    add-int v6, v21, v1

    add-int/lit8 v7, v20, 0x1

    const/4 v14, 0x4

    goto :goto_1

    :cond_2
    move-object v15, v1

    .line 91
    :cond_3
    iget v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewH:I

    add-int/2addr v12, v13

    const/4 v2, 0x4

    mul-int/lit8 v12, v12, 0x4

    sub-int/2addr v1, v12

    .line 100
    iget v2, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewW:I

    int-to-float v2, v2

    move-object/from16 v3, v17

    invoke-virtual {v3}, Lcom/mrpoid/game/keypad/DPad;->getW()F

    move-result v4

    sub-float/2addr v2, v4

    int-to-float v4, v13

    sub-float/2addr v2, v4

    iget v5, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewH:I

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/mrpoid/game/keypad/DPad;->getH()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v4

    invoke-virtual {v3, v2, v5}, Lcom/mrpoid/game/keypad/DPad;->setPosition(FF)V

    if-nez v10, :cond_4

    int-to-float v1, v1

    .line 103
    invoke-virtual {v15, v4, v1}, Lcom/mrpoid/game/engine/ActorGroup;->setPosition(FF)V

    .line 106
    :cond_4
    invoke-virtual {v3}, Lcom/mrpoid/game/keypad/DPad;->getX()F

    move-result v1

    invoke-virtual {v3}, Lcom/mrpoid/game/keypad/DPad;->getY()F

    move-result v2

    move-object/from16 v4, v18

    invoke-virtual {v4}, Lcom/mrpoid/game/keypad/TextButton;->getH()F

    move-result v5

    sub-float/2addr v2, v5

    int-to-float v5, v13

    sub-float/2addr v2, v5

    invoke-virtual {v4, v1, v2}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    .line 107
    invoke-virtual {v3}, Lcom/mrpoid/game/keypad/DPad;->getR()F

    move-result v1

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/TextButton;->getW()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v3}, Lcom/mrpoid/game/keypad/DPad;->getY()F

    move-result v2

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/TextButton;->getH()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v5

    invoke-virtual {v9, v1, v2}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    return-void
.end method

.method protected createXhidp(Lcom/mrpoid/game/keypad/Keypad;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 112
    iget v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->mode:I

    const/4 v9, 0x2

    if-ne v1, v9, :cond_0

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 114
    :goto_0
    invoke-static {}, Lcom/mrpoid/MrpoidMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mrpoid/R$dimen;->dp1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    mul-float v2, v2, v1

    .line 115
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v4, v4, v1

    .line 116
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 117
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v2, v2, v1

    .line 118
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v1, v1, v5

    .line 119
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 122
    new-instance v6, Lcom/mrpoid/game/keypad/DPad;

    invoke-direct {v6, v8}, Lcom/mrpoid/game/keypad/DPad;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 123
    invoke-virtual {v6, v2, v3, v1, v4}, Lcom/mrpoid/game/keypad/DPad;->setSize(IIII)V

    .line 124
    invoke-virtual {v6, v8}, Lcom/mrpoid/game/keypad/DPad;->setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 125
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v6}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 128
    new-instance v5, Lcom/mrpoid/game/keypad/TextButton;

    const-string v3, "\u5de6\u8f6f"

    const/16 v4, 0x11

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v5

    move-object v2, v8

    move-object v10, v5

    move/from16 v5, v16

    move-object v9, v6

    move/from16 v6, v17

    move/from16 v18, v13

    move v13, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    int-to-float v15, v15

    int-to-float v13, v13

    .line 132
    invoke-virtual {v10, v15, v13}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 133
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v10}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 136
    new-instance v7, Lcom/mrpoid/game/keypad/TextButton;

    const-string v3, "\u53f3\u8f6f"

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move/from16 v19, v12

    move-object v12, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 140
    invoke-virtual {v12, v15, v13}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 141
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v12}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    if-eqz v11, :cond_1

    .line 144
    iget v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewW:I

    int-to-float v1, v1

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getW()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewH:I

    int-to-float v2, v2

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getH()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v14

    sub-float/2addr v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/mrpoid/game/keypad/DPad;->setPosition(FF)V

    const/4 v1, 0x2

    mul-int/lit8 v14, v14, 0x2

    int-to-float v1, v14

    .line 146
    iget v2, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewH:I

    int-to-float v2, v2

    invoke-virtual {v10}, Lcom/mrpoid/game/keypad/TextButton;->getH()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    invoke-virtual {v10, v1, v2}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    .line 147
    iget v2, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewW:I

    int-to-float v2, v2

    invoke-virtual {v12}, Lcom/mrpoid/game/keypad/TextButton;->getW()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    invoke-virtual {v10}, Lcom/mrpoid/game/keypad/TextButton;->getY()F

    move-result v1

    invoke-virtual {v12, v2, v1}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    return-void

    .line 152
    :cond_1
    new-instance v11, Lcom/mrpoid/game/engine/ActorGroup;

    invoke-direct {v11, v8}, Lcom/mrpoid/game/engine/ActorGroup;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 153
    iget-object v1, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v11}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v13, v1, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ge v7, v1, :cond_2

    .line 159
    new-instance v5, Lcom/mrpoid/game/keypad/TextButton;

    sget-object v1, Lcom/mrpoid/game/keypad/DefKeyLayouter;->titles:[Ljava/lang/String;

    mul-int/lit8 v2, v13, 0x3

    add-int/2addr v2, v7

    aget-object v3, v1, v2

    sget-object v1, Lcom/mrpoid/game/keypad/DefKeyLayouter;->ids:[I

    aget v4, v1, v2

    int-to-float v2, v6

    int-to-float v1, v15

    move/from16 v16, v1

    move-object v1, v5

    move/from16 v17, v2

    move-object v2, v8

    move-object/from16 v20, v12

    move-object v12, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    move/from16 v2, v19

    int-to-float v1, v2

    move/from16 v3, v18

    int-to-float v4, v3

    .line 163
    invoke-virtual {v12, v1, v4}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 164
    invoke-virtual {v11, v12}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    add-int v12, v2, v14

    add-int v6, v17, v12

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v12, v20

    goto :goto_2

    :cond_2
    move-object/from16 v20, v12

    move/from16 v3, v18

    move/from16 v2, v19

    add-int v1, v3, v14

    add-int/2addr v15, v1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v20, v12

    move/from16 v3, v18

    move/from16 v2, v19

    .line 173
    iget v4, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewW:I

    int-to-float v4, v4

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getW()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v14

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewH:I

    int-to-float v5, v5

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getH()F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v14

    sub-float/2addr v5, v6

    invoke-virtual {v9, v4, v5}, Lcom/mrpoid/game/keypad/DPad;->setPosition(FF)V

    .line 178
    iget v4, v0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewH:I

    add-int v13, v14, v3

    mul-int/lit8 v13, v13, 0x4

    sub-int/2addr v4, v13

    int-to-float v1, v14

    int-to-float v3, v4

    .line 179
    invoke-virtual {v11, v1, v3}, Lcom/mrpoid/game/engine/ActorGroup;->setPosition(FF)V

    .line 181
    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getX()F

    move-result v1

    invoke-virtual {v10, v1, v3}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    .line 182
    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getR()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v2, v20

    invoke-virtual {v2, v1, v3}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    return-void
.end method

.method public layout(Lcom/mrpoid/game/keypad/Keypad;Lcom/mrpoid/game/engine/ActorGroup;ZI)V
    .locals 0

    .line 191
    iput p4, p0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->mode:I

    .line 192
    iput-object p2, p0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->root:Lcom/mrpoid/game/engine/ActorGroup;

    if-eqz p3, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/DefKeyLayouter;->createLand(Lcom/mrpoid/game/keypad/Keypad;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/DefKeyLayouter;->createXhidp(Lcom/mrpoid/game/keypad/Keypad;)V

    :goto_0
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewW:I

    .line 203
    iput p2, p0, Lcom/mrpoid/game/keypad/DefKeyLayouter;->viewH:I

    return-void
.end method
