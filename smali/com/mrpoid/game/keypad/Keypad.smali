.class public Lcom/mrpoid/game/keypad/Keypad;
.super Lcom/mrpoid/game/engine/Director;
.source "Keypad.java"

# interfaces
.implements Lcom/mrpoid/game/engine/Actor$ClickCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;,
        Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;
    }
.end annotation


# static fields
.field public static BTN_COLOR_NORMAL:I = 0x0

.field public static BTN_COLOR_PRESS:I = 0xff7f00

.field public static BTN_CONNER:I = 0x5

.field public static DP1:I

.field public static DP5:I

.field private static final ids:[I

.field private static final titles:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

.field private layouter:Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;

.field private mEditMode:Z

.field private mListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

.field private mode:I

.field numH:I

.field numM:I

.field numW:I

.field padH:I

.field padM:I

.field padR:I

.field padW:I

.field private paint:Landroid/graphics/Paint;

.field private rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

.field softH:I

.field softW:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    .line 60
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

    sput-object v1, Lcom/mrpoid/game/keypad/Keypad;->titles:[Ljava/lang/String;

    .line 67
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mrpoid/game/keypad/Keypad;->ids:[I

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

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 118
    invoke-direct {p0}, Lcom/mrpoid/game/engine/Director;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    const/16 v0, 0x2d

    .line 84
    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    iput v1, p0, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    const/16 v0, 0x28

    .line 85
    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->padW:I

    iput v1, p0, Lcom/mrpoid/game/keypad/Keypad;->padH:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->padR:I

    iput v2, p0, Lcom/mrpoid/game/keypad/Keypad;->padM:I

    .line 119
    invoke-direct {p0, p1}, Lcom/mrpoid/game/keypad/Keypad;->init(Landroid/content/Context;)V

    .line 120
    iput-boolean p2, p0, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    return-void
.end method

.method private createFromXml(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/io/FileInputStream;

    iget v1, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    invoke-virtual {p0, p1, v1}, Lcom/mrpoid/game/keypad/Keypad;->getXml(ZI)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 436
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    if-gtz p1, :cond_0

    .line 437
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 439
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 440
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 441
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 445
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 446
    iget-object v2, p0, Lcom/mrpoid/game/keypad/Keypad;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 447
    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 449
    invoke-direct {p0}, Lcom/mrpoid/game/keypad/Keypad;->initButtonSize()V

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "group"

    .line 519
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "root"

    .line 455
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 456
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xff

    invoke-direct {p0, v0, v4}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;I)I

    move-result v0

    .line 457
    invoke-virtual {p0, v0}, Lcom/mrpoid/game/keypad/Keypad;->setOpacity(I)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "group"

    .line 461
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_2

    .line 462
    new-instance v0, Lcom/mrpoid/game/engine/ActorGroup;

    invoke-direct {v0, p0}, Lcom/mrpoid/game/engine/ActorGroup;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 463
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 464
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;)I

    move-result v4

    .line 465
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v4, v4

    add-int/2addr v5, v1

    int-to-float v5, v5

    .line 466
    invoke-virtual {v0, v4, v5}, Lcom/mrpoid/game/engine/ActorGroup;->setPosition(FF)V

    .line 467
    invoke-virtual {v0, v3}, Lcom/mrpoid/game/engine/ActorGroup;->setVisible(Z)V

    .line 468
    iget-object v3, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v3, v0}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    move-object v3, v0

    goto/16 :goto_2

    :cond_2
    const-string v0, "key"

    .line 470
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 471
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 475
    :cond_3
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x3

    .line 477
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    .line 478
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x5

    .line 479
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 481
    new-instance v9, Lcom/mrpoid/game/keypad/TextButton;

    invoke-direct {v9, p0, v5, v4}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v9, v0}, Lcom/mrpoid/game/keypad/TextButton;->setVisible(Z)V

    .line 483
    invoke-virtual {v9, p0}, Lcom/mrpoid/game/keypad/TextButton;->setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 484
    iget-boolean v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v9, v0}, Lcom/mrpoid/game/keypad/TextButton;->setDragAble(Z)V

    const-string v0, "soft"

    .line 486
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    int-to-float v0, v0

    iget v4, p0, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    int-to-float v4, v4

    invoke-virtual {v9, v0, v4}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    goto :goto_1

    .line 489
    :cond_4
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    int-to-float v0, v0

    iget v4, p0, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    int-to-float v4, v4

    invoke-virtual {v9, v0, v4}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    :goto_1
    if-eqz v3, :cond_5

    .line 493
    invoke-virtual {v3, v9}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    int-to-float v0, v6

    int-to-float v4, v7

    .line 494
    invoke-virtual {v9, v0, v4}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    goto :goto_2

    :cond_5
    int-to-float v0, v6

    add-int/2addr v7, v1

    int-to-float v4, v7

    .line 496
    invoke-virtual {v9, v0, v4}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    .line 497
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v0, v9}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    goto :goto_2

    :cond_6
    const-string v0, "dpad"

    .line 500
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 501
    new-instance v0, Lcom/mrpoid/game/keypad/DPad;

    invoke-direct {v0, p0}, Lcom/mrpoid/game/keypad/DPad;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 502
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 503
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;)I

    move-result v4

    .line 504
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;)I

    move-result v6

    .line 506
    iget v7, p0, Lcom/mrpoid/game/keypad/Keypad;->padW:I

    iget v8, p0, Lcom/mrpoid/game/keypad/Keypad;->padH:I

    iget v9, p0, Lcom/mrpoid/game/keypad/Keypad;->padR:I

    iget v10, p0, Lcom/mrpoid/game/keypad/Keypad;->padM:I

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/mrpoid/game/keypad/DPad;->setSize(IIII)V

    int-to-float v4, v4

    add-int/2addr v6, v1

    int-to-float v6, v6

    .line 508
    invoke-virtual {v0, v4, v6}, Lcom/mrpoid/game/keypad/DPad;->setPosition(FF)V

    .line 509
    invoke-virtual {v0, v5}, Lcom/mrpoid/game/keypad/DPad;->setVisible(Z)V

    .line 510
    invoke-virtual {v0, p0}, Lcom/mrpoid/game/keypad/DPad;->setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 511
    iget-boolean v4, p0, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v0, v4}, Lcom/mrpoid/game/keypad/DPad;->setDragAble(Z)V

    .line 513
    iget-object v4, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v4, v0}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 527
    :cond_7
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createLand()V
    .locals 18

    move-object/from16 v7, p0

    .line 256
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    const/4 v1, 0x2

    .line 258
    iget-object v8, v7, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    .line 260
    new-instance v9, Lcom/mrpoid/game/keypad/DPad;

    invoke-direct {v9, v7}, Lcom/mrpoid/game/keypad/DPad;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 261
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->padW:I

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->padH:I

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->padR:I

    iget v3, v7, Lcom/mrpoid/game/keypad/Keypad;->padM:I

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/mrpoid/game/keypad/DPad;->setSize(IIII)V

    .line 262
    invoke-virtual {v9, v7}, Lcom/mrpoid/game/keypad/DPad;->setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 263
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v9, v0}, Lcom/mrpoid/game/keypad/DPad;->setDragAble(Z)V

    .line 264
    invoke-virtual {v8, v9}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 267
    new-instance v10, Lcom/mrpoid/game/keypad/TextButton;

    const-string v2, "\u5de6\u8f6f"

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 271
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    int-to-float v0, v0

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 272
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v10, v0}, Lcom/mrpoid/game/keypad/TextButton;->setDragAble(Z)V

    .line 273
    invoke-virtual {v8, v10}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 276
    new-instance v11, Lcom/mrpoid/game/keypad/TextButton;

    const-string v2, "\u53f3\u8f6f"

    const/16 v3, 0x12

    move-object v0, v11

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 280
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    int-to-float v0, v0

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    int-to-float v1, v1

    invoke-virtual {v11, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 281
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v11, v0}, Lcom/mrpoid/game/keypad/TextButton;->setDragAble(Z)V

    .line 282
    invoke-virtual {v8, v11}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 287
    new-instance v12, Lcom/mrpoid/game/engine/ActorGroup;

    invoke-direct {v12, v7}, Lcom/mrpoid/game/engine/ActorGroup;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 288
    invoke-virtual {v8, v12}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v13, v0, :cond_1

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v15, v0, :cond_0

    .line 295
    new-instance v5, Lcom/mrpoid/game/keypad/TextButton;

    sget-object v0, Lcom/mrpoid/game/keypad/Keypad;->titles:[Ljava/lang/String;

    mul-int/lit8 v1, v13, 0x3

    add-int/2addr v1, v15

    aget-object v2, v0, v1

    sget-object v0, Lcom/mrpoid/game/keypad/Keypad;->ids:[I

    aget v3, v0, v1

    int-to-float v4, v6

    int-to-float v1, v14

    move-object v0, v5

    move/from16 v16, v1

    move-object v1, v7

    move-object v8, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 299
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    int-to-float v0, v0

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    int-to-float v1, v1

    invoke-virtual {v8, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 300
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v8, v0}, Lcom/mrpoid/game/keypad/TextButton;->setDragAble(Z)V

    .line 301
    invoke-virtual {v12, v8}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 303
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    add-int/2addr v0, v1

    add-int v6, v16, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 306
    :cond_0
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 310
    :cond_1
    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    iget v3, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    .line 319
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->viewW:I

    int-to-float v0, v0

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getW()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    int-to-float v2, v2

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getH()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9, v0, v2}, Lcom/mrpoid/game/keypad/DPad;->setPosition(FF)V

    .line 322
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v12, v0, v1}, Lcom/mrpoid/game/engine/ActorGroup;->setPosition(FF)V

    .line 325
    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getX()F

    move-result v0

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getY()F

    move-result v1

    invoke-virtual {v10}, Lcom/mrpoid/game/keypad/TextButton;->getH()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    .line 326
    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getR()F

    move-result v0

    invoke-virtual {v11}, Lcom/mrpoid/game/keypad/TextButton;->getW()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v9}, Lcom/mrpoid/game/keypad/DPad;->getY()F

    move-result v1

    invoke-virtual {v11}, Lcom/mrpoid/game/keypad/TextButton;->getH()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v11, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    return-void
.end method

.method private createXhidp()V
    .locals 18

    move-object/from16 v7, p0

    .line 334
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 335
    :goto_0
    iget-object v11, v7, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/mrpoid/game/keypad/Keypad;->initButtonSize()V

    .line 339
    new-instance v12, Lcom/mrpoid/game/keypad/DPad;

    invoke-direct {v12, v7}, Lcom/mrpoid/game/keypad/DPad;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 340
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->padW:I

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->padH:I

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->padR:I

    iget v3, v7, Lcom/mrpoid/game/keypad/Keypad;->padM:I

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/mrpoid/game/keypad/DPad;->setSize(IIII)V

    .line 341
    invoke-virtual {v12, v7}, Lcom/mrpoid/game/keypad/DPad;->setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 342
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v12, v0}, Lcom/mrpoid/game/keypad/DPad;->setDragAble(Z)V

    .line 343
    invoke-virtual {v11, v12}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 346
    new-instance v13, Lcom/mrpoid/game/keypad/TextButton;

    const-string v2, "\u5de6\u8f6f"

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 350
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    int-to-float v0, v0

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    int-to-float v1, v1

    invoke-virtual {v13, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 351
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v13, v0}, Lcom/mrpoid/game/keypad/TextButton;->setDragAble(Z)V

    .line 352
    invoke-virtual {v11, v13}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 355
    new-instance v14, Lcom/mrpoid/game/keypad/TextButton;

    const-string v2, "\u53f3\u8f6f"

    const/16 v3, 0x12

    move-object v0, v14

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 359
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    int-to-float v0, v0

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    int-to-float v1, v1

    invoke-virtual {v14, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 360
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v14, v0}, Lcom/mrpoid/game/keypad/TextButton;->setDragAble(Z)V

    .line 361
    invoke-virtual {v11, v14}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    if-eqz v10, :cond_1

    .line 364
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->viewW:I

    int-to-float v0, v0

    invoke-virtual {v12}, Lcom/mrpoid/game/keypad/DPad;->getW()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/mrpoid/game/keypad/DPad;->getH()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v12, v0, v1}, Lcom/mrpoid/game/keypad/DPad;->setPosition(FF)V

    .line 366
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    int-to-float v1, v1

    invoke-virtual {v13}, Lcom/mrpoid/game/keypad/TextButton;->getH()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v13, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    .line 367
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->viewW:I

    int-to-float v0, v0

    invoke-virtual {v14}, Lcom/mrpoid/game/keypad/TextButton;->getW()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v13}, Lcom/mrpoid/game/keypad/TextButton;->getY()F

    move-result v1

    invoke-virtual {v14, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    return-void

    .line 371
    :cond_1
    new-instance v8, Lcom/mrpoid/game/engine/ActorGroup;

    invoke-direct {v8, v7}, Lcom/mrpoid/game/engine/ActorGroup;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 372
    invoke-virtual {v11, v8}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v10, v0, :cond_3

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_2
    const/4 v0, 0x3

    if-ge v15, v0, :cond_2

    .line 378
    new-instance v5, Lcom/mrpoid/game/keypad/TextButton;

    sget-object v0, Lcom/mrpoid/game/keypad/Keypad;->titles:[Ljava/lang/String;

    mul-int/lit8 v1, v10, 0x3

    add-int/2addr v1, v15

    aget-object v2, v0, v1

    sget-object v0, Lcom/mrpoid/game/keypad/Keypad;->ids:[I

    aget v3, v0, v1

    int-to-float v4, v6

    int-to-float v1, v11

    move-object v0, v5

    move/from16 v16, v1

    move-object v1, v7

    move-object v9, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 382
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    int-to-float v0, v0

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setSize(FF)V

    .line 383
    iget-boolean v0, v7, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    invoke-virtual {v9, v0}, Lcom/mrpoid/game/keypad/TextButton;->setDragAble(Z)V

    .line 384
    invoke-virtual {v8, v9}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 386
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    add-int/2addr v0, v1

    add-int v6, v16, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 389
    :cond_2
    iget v0, v7, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 393
    :cond_3
    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->viewW:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/mrpoid/game/keypad/DPad;->getW()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    int-to-float v2, v2

    invoke-virtual {v12}, Lcom/mrpoid/game/keypad/DPad;->getH()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v12, v1, v2}, Lcom/mrpoid/game/keypad/DPad;->setPosition(FF)V

    .line 397
    iget v1, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    .line 398
    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    iget v3, v7, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    iget v4, v7, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v0, v1

    int-to-float v1, v2

    .line 399
    invoke-virtual {v8, v0, v1}, Lcom/mrpoid/game/engine/ActorGroup;->setPosition(FF)V

    .line 401
    invoke-virtual {v12}, Lcom/mrpoid/game/keypad/DPad;->getX()F

    move-result v0

    invoke-virtual {v13, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    .line 402
    invoke-virtual {v12}, Lcom/mrpoid/game/keypad/DPad;->getR()F

    move-result v0

    iget v2, v7, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {v14, v0, v1}, Lcom/mrpoid/game/keypad/TextButton;->setPosition(FF)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 124
    iput-object p1, p0, Lcom/mrpoid/game/keypad/Keypad;->context:Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    const v1, -0xf0f0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 130
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mrpoid/R$dimen;->font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    invoke-direct {p0}, Lcom/mrpoid/game/keypad/Keypad;->initButtonSize()V

    .line 135
    new-instance v0, Lcom/mrpoid/game/engine/ActorGroup;

    invoke-direct {v0, p0}, Lcom/mrpoid/game/engine/ActorGroup;-><init>(Lcom/mrpoid/game/engine/Director;)V

    iput-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    .line 136
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {p0, v0}, Lcom/mrpoid/game/keypad/Keypad;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mrpoid/R$dimen;->dp1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/mrpoid/game/keypad/Keypad;->DP1:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mrpoid/R$dimen;->dp5:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/mrpoid/game/keypad/Keypad;->DP5:I

    return-void
.end method

.method private initButtonSize()V
    .locals 6

    .line 231
    invoke-static {}, Lcom/mrpoid/MrpoidMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 233
    invoke-static {}, Lcom/mrpoid/MrpoidMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mrpoid/R$dimen;->dp1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 234
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    const v0, 0x3f99999a    # 1.2f

    mul-float v1, v1, v0

    :cond_0
    const/high16 v0, 0x42340000    # 45.0f

    mul-float v0, v0, v1

    .line 237
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/mrpoid/game/keypad/Keypad;->numW:I

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float v2, v2, v1

    .line 238
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/mrpoid/game/keypad/Keypad;->numH:I

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v3, v3, v1

    .line 240
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/mrpoid/game/keypad/Keypad;->numM:I

    .line 241
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    .line 243
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    const/high16 v0, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    .line 244
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->padW:I

    .line 245
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->padH:I

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v1, v1, v0

    .line 246
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->padR:I

    .line 247
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->padM:I

    return-void
.end method

.method private toInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-direct {p0, p1, v0}, Lcom/mrpoid/game/keypad/Keypad;->toInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private toInt(Ljava/lang/String;I)I
    .locals 0

    .line 420
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method


# virtual methods
.method public attachView(Landroid/view/View;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/mrpoid/game/keypad/Keypad;->view:Landroid/view/View;

    .line 595
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->reset()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lcom/mrpoid/game/engine/Director;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 211
    iget-object p2, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    .line 212
    iget-object p2, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Director;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public foceReDraw()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getMode()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->alpha:I

    return v0
.end method

.method public getXml(ZI)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "keypad_land_%d.xml"

    .line 408
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    :goto_0
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "keypad_%d.xml"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    goto :goto_0

    .line 409
    :goto_1
    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mythroad/.mrpoid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    invoke-static {p2}, Lcom/edroid/common/utils/FileUtils;->checkParentPath(Ljava/io/File;)V

    return-object p2
.end method

.method public invalida(Lcom/mrpoid/game/engine/Actor;)V
    .locals 0

    .line 607
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->foceReDraw()V

    return-void
.end method

.method public onClick(IZ)V
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 617
    iget-object p2, p0, Lcom/mrpoid/game/keypad/Keypad;->mListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

    invoke-interface {p2, p1}, Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;->onKeyDown(I)Z

    goto :goto_0

    .line 619
    :cond_1
    iget-object p2, p0, Lcom/mrpoid/game/keypad/Keypad;->mListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

    invoke-interface {p2, p1}, Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;->onKeyUp(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewSizeChanged(II)V
    .locals 0

    .line 600
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Director;->onViewSizeChanged(II)V

    .line 602
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->reset()V

    return-void
.end method

.method public reset()V
    .locals 5

    .line 537
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->viewW:I

    iget v1, p0, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    iget v1, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    if-nez v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v2}, Lcom/mrpoid/game/engine/ActorGroup;->setVisible(Z)V

    goto :goto_1

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1, v3}, Lcom/mrpoid/game/engine/ActorGroup;->setVisible(Z)V

    .line 543
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v1}, Lcom/mrpoid/game/engine/ActorGroup;->removeAllChild()V

    .line 546
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mrpoid/game/keypad/Keypad;->createFromXml(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 548
    :catch_0
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->layouter:Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->layouter:Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;

    iget v2, p0, Lcom/mrpoid/game/keypad/Keypad;->viewW:I

    iget v4, p0, Lcom/mrpoid/game/keypad/Keypad;->viewH:I

    invoke-interface {v1, v2, v4}, Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;->setSize(II)V

    .line 550
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->layouter:Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;

    iget-object v2, p0, Lcom/mrpoid/game/keypad/Keypad;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    iget v4, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    invoke-interface {v1, p0, v2, v0, v4}, Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;->layout(Lcom/mrpoid/game/keypad/Keypad;Lcom/mrpoid/game/engine/ActorGroup;ZI)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 553
    invoke-direct {p0}, Lcom/mrpoid/game/keypad/Keypad;->createLand()V

    goto :goto_1

    .line 555
    :cond_3
    invoke-direct {p0}, Lcom/mrpoid/game/keypad/Keypad;->createXhidp()V

    .line 565
    :goto_1
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

    if-nez v1, :cond_4

    .line 566
    new-instance v1, Lcom/mrpoid/game/keypad/FloatMenuButton;

    const/16 v2, 0x401

    invoke-direct {v1, p0, v2}, Lcom/mrpoid/game/keypad/FloatMenuButton;-><init>(Lcom/mrpoid/game/engine/Director;I)V

    iput-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

    .line 567
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

    invoke-virtual {v1, p0}, Lcom/mrpoid/game/keypad/FloatMenuButton;->setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 568
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

    iget v2, p0, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    int-to-float v2, v2

    iget v4, p0, Lcom/mrpoid/game/keypad/Keypad;->softH:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Lcom/mrpoid/game/keypad/FloatMenuButton;->setSize(FF)V

    .line 569
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

    invoke-virtual {v1, v3}, Lcom/mrpoid/game/keypad/FloatMenuButton;->setVisible(Z)V

    .line 570
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

    invoke-virtual {p0, v1}, Lcom/mrpoid/game/keypad/Keypad;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    .line 572
    :cond_4
    iget-object v1, p0, Lcom/mrpoid/game/keypad/Keypad;->floatMenuBtn:Lcom/mrpoid/game/keypad/FloatMenuButton;

    if-eqz v0, :cond_5

    sget v0, Lcom/mrpoid/game/keypad/Keypad;->DP5:I

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->viewW:I

    iget v2, p0, Lcom/mrpoid/game/keypad/Keypad;->softW:I

    sub-int/2addr v0, v2

    sget v2, Lcom/mrpoid/game/keypad/Keypad;->DP5:I

    sub-int/2addr v0, v2

    goto :goto_2

    :goto_3
    sget v2, Lcom/mrpoid/game/keypad/Keypad;->DP5:I

    mul-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/mrpoid/game/keypad/FloatMenuButton;->setPosition(FF)V

    .line 574
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->foceReDraw()V

    return-void
.end method

.method public saveLayout()V
    .locals 0

    return-void
.end method

.method public setLayouter(Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/mrpoid/game/keypad/Keypad;->layouter:Lcom/mrpoid/game/keypad/Keypad$KeyLayouter;

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 190
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    if-eq v0, p1, :cond_0

    .line 191
    iput p1, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->reset()V

    return-void
.end method

.method public setOnKeyEventListener(Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/mrpoid/game/keypad/Keypad;->mListener:Lcom/mrpoid/game/keypad/Keypad$OnKeyEventListener;

    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    .line 578
    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/Keypad;->setAlpha(I)V

    .line 579
    iget-object v0, p0, Lcom/mrpoid/game/keypad/Keypad;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 580
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->foceReDraw()V

    return-void
.end method

.method public showOpactSeek(Landroid/app/Activity;)V
    .locals 2

    .line 143
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xff

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 145
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->getOpacity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 146
    new-instance v1, Lcom/mrpoid/game/keypad/Keypad$1;

    invoke-direct {v1, p0}, Lcom/mrpoid/game/keypad/Keypad$1;-><init>(Lcom/mrpoid/game/keypad/Keypad;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 169
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/mrpoid/R$string;->pad_opacity:I

    .line 170
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/mrpoid/R$string;->ok:I

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public startEdit()V
    .locals 1

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    return-void
.end method

.method public stopEdit()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mEditMode:Z

    return-void
.end method

.method public switchMode()V
    .locals 1

    .line 197
    iget v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/mrpoid/game/keypad/Keypad;->mode:I

    .line 198
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/Keypad;->reset()V

    return-void
.end method
