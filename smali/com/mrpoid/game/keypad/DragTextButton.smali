.class public Lcom/mrpoid/game/keypad/DragTextButton;
.super Lcom/mrpoid/game/keypad/TextButton;
.source "DragTextButton.java"


# instance fields
.field private lastX:F

.field private lastY:F

.field private moving:Z

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFF)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;IFFLcom/mrpoid/game/engine/Actor$ClickCallback;)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->paint:Landroid/graphics/Paint;

    .line 20
    iget-object p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->paint:Landroid/graphics/Paint;

    const p2, -0xff0001

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->paint:Landroid/graphics/Paint;

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12

    .line 28
    invoke-super {p0, p1, p2}, Lcom/mrpoid/game/keypad/TextButton;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 30
    iget-boolean p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->moving:Z

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 31
    iget v2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    iget-object p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->am:Lcom/mrpoid/game/engine/Director;

    iget p2, p2, Lcom/mrpoid/game/engine/Director;->viewW:I

    int-to-float v3, p2

    iget v4, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    iget-object v5, p0, Lcom/mrpoid/game/keypad/DragTextButton;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    .line 32
    iget p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->h:F

    add-float v8, p2, v0

    iget-object p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->am:Lcom/mrpoid/game/engine/Director;

    iget p2, p2, Lcom/mrpoid/game/engine/Director;->viewW:I

    int-to-float v9, p2

    iget p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->h:F

    add-float v10, p2, v0

    iget-object v11, p0, Lcom/mrpoid/game/keypad/DragTextButton;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    iget v1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    iget-object p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->am:Lcom/mrpoid/game/engine/Director;

    iget p2, p2, Lcom/mrpoid/game/engine/Director;->viewH:I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/mrpoid/game/keypad/DragTextButton;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 34
    iget p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->w:F

    add-float v2, p2, v0

    const/4 v3, 0x0

    iget p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->w:F

    add-float v4, p2, v0

    iget-object p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->am:Lcom/mrpoid/game/engine/Director;

    iget p2, p2, Lcom/mrpoid/game/engine/Director;->viewH:I

    int-to-float v5, p2

    iget-object v6, p0, Lcom/mrpoid/game/keypad/DragTextButton;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public touchDown(FF)Z
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->moving:Z

    .line 43
    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->lastX:F

    .line 44
    iget p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->lastY:F

    .line 46
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/DragTextButton;->invalida()V

    const/4 p1, 0x1

    return p1
.end method

.method public touchMove(FF)V
    .locals 2

    .line 53
    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    add-float/2addr p1, v0

    .line 54
    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    add-float/2addr p2, v0

    .line 56
    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    iget v1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->lastX:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->x:F

    .line 57
    iget v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    iget v1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->lastY:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/game/keypad/DragTextButton;->y:F

    .line 58
    iput p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->lastX:F

    .line 59
    iput p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->lastY:F

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->moving:Z

    .line 62
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/DragTextButton;->invalida()V

    return-void
.end method

.method public touchUp(FF)V
    .locals 0

    .line 67
    iget-boolean p1, p0, Lcom/mrpoid/game/keypad/DragTextButton;->moving:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0, p2, p2}, Lcom/mrpoid/game/keypad/DragTextButton;->clicked(IZ)V

    .line 70
    :cond_0
    iput-boolean p2, p0, Lcom/mrpoid/game/keypad/DragTextButton;->moving:Z

    .line 72
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/DragTextButton;->invalida()V

    return-void
.end method
