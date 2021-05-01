.class public Lcom/mrpoid/game/keypad/DPad;
.super Lcom/mrpoid/game/engine/Actor;
.source "DPad.java"


# static fields
.field private static final keyMap:[[B


# instance fields
.field private btnH:I

.field private btnPad:I

.field private btnR:I

.field private btnW:I

.field private curPressKey:I

.field private keyHeight:I

.field private keyWidth:I

.field private px:I

.field private py:I

.field final rBounds:Landroid/graphics/Rect;

.field final rectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 123
    new-array v1, v0, [[B

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/mrpoid/game/keypad/DPad;->keyMap:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0xct
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0xet
        0x14t
        0xft
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0xdt
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/mrpoid/game/engine/Director;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/mrpoid/game/engine/Actor;-><init>(Lcom/mrpoid/game/engine/Director;)V

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    const/16 p1, 0xa

    .line 27
    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/game/keypad/DPad;->rBounds:Landroid/graphics/Rect;

    const/16 p1, 0x14

    .line 32
    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->id:I

    return-void
.end method

.method private getPressKey(FF)I
    .locals 1

    .line 130
    iget v0, p0, Lcom/mrpoid/game/keypad/DPad;->keyWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->px:I

    .line 131
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->keyHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->py:I

    .line 133
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->px:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 134
    iput v0, p0, Lcom/mrpoid/game/keypad/DPad;->px:I

    goto :goto_0

    .line 135
    :cond_0
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->px:I

    if-gez p1, :cond_1

    .line 136
    iput p2, p0, Lcom/mrpoid/game/keypad/DPad;->px:I

    .line 137
    :cond_1
    :goto_0
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->py:I

    if-le p1, v0, :cond_2

    .line 138
    iput v0, p0, Lcom/mrpoid/game/keypad/DPad;->py:I

    goto :goto_1

    .line 139
    :cond_2
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->py:I

    if-gez p1, :cond_3

    .line 140
    iput p2, p0, Lcom/mrpoid/game/keypad/DPad;->py:I

    .line 142
    :cond_3
    :goto_1
    sget-object p1, Lcom/mrpoid/game/keypad/DPad;->keyMap:[[B

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->py:I

    aget-object p1, p1, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->px:I

    aget-byte p1, p1, p2

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 75
    sget v0, Lcom/mrpoid/game/keypad/Keypad;->BTN_CONNER:I

    int-to-float v0, v0

    invoke-static {}, Lcom/mrpoid/MrpoidMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mrpoid/R$dimen;->dp1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v0, v0, v1

    .line 78
    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    sget-object v2, Lcom/mrpoid/game/keypad/DPad;->keyMap:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/mrpoid/game/keypad/DPad;->getColor(Z)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->x:F

    iget v5, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget v5, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget v5, p0, Lcom/mrpoid/game/keypad/DPad;->y:F

    iget v6, p0, Lcom/mrpoid/game/keypad/DPad;->x:F

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->y:F

    iget v8, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    iget-object v1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 84
    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    sget-object v2, Lcom/mrpoid/game/keypad/DPad;->keyMap:[[B

    const/4 v5, 0x2

    aget-object v2, v2, v5

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/mrpoid/game/keypad/DPad;->getColor(Z)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    iget v6, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    iget v6, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    int-to-float v2, v2

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 86
    iget-object v1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 89
    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->y:F

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    mul-int/lit8 v2, v2, 0x2

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    div-int/2addr v2, v5

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    div-int/2addr v2, v5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 92
    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    sget-object v7, Lcom/mrpoid/game/keypad/DPad;->keyMap:[[B

    aget-object v7, v7, v4

    aget-byte v7, v7, v3

    if-ne v2, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mrpoid/game/keypad/DPad;->getColor(Z)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v2, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->x:F

    invoke-virtual {v2, v7, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 94
    iget-object v1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    sget-object v2, Lcom/mrpoid/game/keypad/DPad;->keyMap:[[B

    aget-object v2, v2, v4

    aget-byte v2, v2, v5

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/mrpoid/game/keypad/DPad;->getColor(Z)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    mul-int/lit8 v2, v2, 0x2

    iget v7, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 101
    iget-object v1, p0, Lcom/mrpoid/game/keypad/DPad;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 105
    iget v0, p0, Lcom/mrpoid/game/keypad/DPad;->x:F

    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 106
    iget v1, p0, Lcom/mrpoid/game/keypad/DPad;->y:F

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 107
    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    sget-object v6, Lcom/mrpoid/game/keypad/DPad;->keyMap:[[B

    aget-object v6, v6, v4

    aget-byte v6, v6, v4

    if-ne v2, v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p0, v4}, Lcom/mrpoid/game/keypad/DPad;->getColor(Z)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget v2, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-string v2, "ok"

    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, p0, Lcom/mrpoid/game/keypad/DPad;->rBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, v3, v4, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const v3, -0xf0f10

    .line 113
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v3, p0, Lcom/mrpoid/game/keypad/DPad;->rBounds:Landroid/graphics/Rect;

    .line 115
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/mrpoid/game/keypad/DPad;->rBounds:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 114
    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected getColor(Z)I
    .locals 1

    .line 67
    iget v0, p0, Lcom/mrpoid/game/keypad/DPad;->alpha:I

    shl-int/lit8 v0, v0, 0x18

    if-eqz p1, :cond_0

    sget p1, Lcom/mrpoid/game/keypad/Keypad;->BTN_COLOR_PRESS:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/mrpoid/game/keypad/Keypad;->BTN_COLOR_NORMAL:I

    :goto_0
    or-int/2addr p1, v0

    return p1
.end method

.method public isHit(FF)Z
    .locals 1

    .line 57
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->isHit(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/game/keypad/DPad;->getPressKey(FF)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSize(IIII)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    .line 45
    iput p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    .line 46
    iput p4, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    .line 47
    iput p3, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    .line 49
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnW:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/DPad;->setW(F)V

    .line 50
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnR:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnPad:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->btnH:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/DPad;->setH(F)V

    .line 51
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->w:F

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->keyWidth:I

    .line 52
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->h:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->keyHeight:I

    return-void
.end method

.method public touchDown(FF)Z
    .locals 1

    .line 147
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchDown(FF)Z

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/game/keypad/DPad;->getPressKey(FF)I

    move-result p1

    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    .line 150
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/DPad;->invalida()V

    .line 152
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    invoke-virtual {p0, p1, p2}, Lcom/mrpoid/game/keypad/DPad;->clicked(IZ)V

    :cond_0
    return p2
.end method

.method public touchMove(FF)V
    .locals 1

    .line 160
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchMove(FF)V

    .line 162
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/DPad;->isDragAble()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/game/keypad/DPad;->getPressKey(FF)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 164
    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    if-eq p1, p2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/DPad;->invalida()V

    .line 166
    iget p2, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/mrpoid/game/keypad/DPad;->clicked(IZ)V

    .line 167
    iput p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    .line 168
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/mrpoid/game/keypad/DPad;->clicked(IZ)V

    :cond_0
    return-void
.end method

.method public touchUp(FF)V
    .locals 1

    .line 175
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchUp(FF)V

    .line 177
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 178
    iget p1, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mrpoid/game/keypad/DPad;->clicked(IZ)V

    .line 179
    iput p2, p0, Lcom/mrpoid/game/keypad/DPad;->curPressKey:I

    .line 180
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/DPad;->invalida()V

    :cond_0
    return-void
.end method
