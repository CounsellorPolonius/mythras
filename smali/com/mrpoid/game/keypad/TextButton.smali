.class public Lcom/mrpoid/game/keypad/TextButton;
.super Lcom/mrpoid/game/engine/Actor;
.source "TextButton.java"


# instance fields
.field private final rBounds:Landroid/graphics/Rect;

.field final rectF:Landroid/graphics/RectF;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/mrpoid/game/engine/Actor;-><init>(Lcom/mrpoid/game/engine/Director;)V

    .line 21
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/game/keypad/TextButton;->rBounds:Landroid/graphics/Rect;

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/game/keypad/TextButton;->rectF:Landroid/graphics/RectF;

    .line 29
    iput-object p2, p0, Lcom/mrpoid/game/keypad/TextButton;->title:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/mrpoid/game/keypad/TextButton;->id:I

    .line 31
    iput p4, p0, Lcom/mrpoid/game/keypad/TextButton;->x:F

    .line 32
    iput p5, p0, Lcom/mrpoid/game/keypad/TextButton;->y:F

    .line 33
    iput-object p6, p0, Lcom/mrpoid/game/keypad/TextButton;->clickCallback:Lcom/mrpoid/game/engine/Actor$ClickCallback;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 45
    sget v0, Lcom/mrpoid/game/keypad/Keypad;->BTN_CONNER:I

    int-to-float v0, v0

    invoke-static {}, Lcom/mrpoid/MrpoidMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mrpoid/R$dimen;->dp1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float v0, v0, v1

    .line 47
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/TextButton;->getColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v1, p0, Lcom/mrpoid/game/keypad/TextButton;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/mrpoid/game/keypad/TextButton;->x:F

    iget v3, p0, Lcom/mrpoid/game/keypad/TextButton;->y:F

    iget v4, p0, Lcom/mrpoid/game/keypad/TextButton;->x:F

    iget v5, p0, Lcom/mrpoid/game/keypad/TextButton;->w:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/mrpoid/game/keypad/TextButton;->y:F

    iget v6, p0, Lcom/mrpoid/game/keypad/TextButton;->h:F

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    iget-object v1, p0, Lcom/mrpoid/game/keypad/TextButton;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lcom/mrpoid/game/keypad/TextButton;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mrpoid/game/keypad/TextButton;->title:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mrpoid/game/keypad/TextButton;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/mrpoid/game/keypad/TextButton;->rBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const v0, -0xf0f10

    .line 61
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/mrpoid/game/keypad/TextButton;->title:Ljava/lang/String;

    iget v1, p0, Lcom/mrpoid/game/keypad/TextButton;->x:F

    iget v2, p0, Lcom/mrpoid/game/keypad/TextButton;->w:F

    iget-object v3, p0, Lcom/mrpoid/game/keypad/TextButton;->rBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mrpoid/game/keypad/TextButton;->y:F

    iget v4, p0, Lcom/mrpoid/game/keypad/TextButton;->h:F

    add-float/2addr v2, v4

    iget v4, p0, Lcom/mrpoid/game/keypad/TextButton;->h:F

    iget-object v5, p0, Lcom/mrpoid/game/keypad/TextButton;->rBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected getColor()I
    .locals 2

    .line 41
    iget v0, p0, Lcom/mrpoid/game/keypad/TextButton;->alpha:I

    shl-int/lit8 v0, v0, 0x18

    iget-boolean v1, p0, Lcom/mrpoid/game/keypad/TextButton;->pressed:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/mrpoid/game/keypad/Keypad;->BTN_COLOR_PRESS:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mrpoid/game/keypad/Keypad;->BTN_COLOR_NORMAL:I

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mrpoid/game/keypad/TextButton;->title:Ljava/lang/String;

    return-object v0
.end method

.method public touchDown(FF)Z
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchDown(FF)Z

    .line 69
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/TextButton;->invalida()V

    .line 70
    iget p1, p0, Lcom/mrpoid/game/keypad/TextButton;->id:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/mrpoid/game/keypad/TextButton;->clicked(IZ)V

    return p2
.end method

.method public touchMove(FF)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchMove(FF)V

    return-void
.end method

.method public touchUp(FF)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchUp(FF)V

    .line 77
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/TextButton;->invalida()V

    .line 78
    iget p1, p0, Lcom/mrpoid/game/keypad/TextButton;->id:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/mrpoid/game/keypad/TextButton;->clicked(IZ)V

    return-void
.end method
