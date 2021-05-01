.class public Lcom/mrpoid/game/keypad/FloatMenuButton;
.super Lcom/mrpoid/game/keypad/TextButton;
.source "FloatMenuButton.java"


# instance fields
.field private lastX:F

.field private lastY:F

.field private moved:Z


# direct methods
.method public constructor <init>(Lcom/mrpoid/game/engine/Director;I)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0, p2}, Lcom/mrpoid/game/keypad/TextButton;-><init>(Lcom/mrpoid/game/engine/Director;Ljava/lang/String;I)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 17
    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    .line 18
    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 19
    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->w:F

    const/high16 p1, 0x42a00000    # 80.0f

    .line 20
    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->h:F

    const/16 p1, 0x80

    .line 21
    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->alpha:I

    const-string p1, "\u83dc\u5355"

    .line 22
    iput-object p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public touchDown(FF)Z
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->moved:Z

    .line 31
    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastX:F

    .line 32
    iget p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastY:F

    .line 34
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/FloatMenuButton;->invalida()V

    const/4 p1, 0x1

    return p1
.end method

.method public touchMove(FF)V
    .locals 2

    .line 47
    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    add-float/2addr p1, v0

    .line 48
    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    add-float/2addr p2, v0

    .line 50
    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastY:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->moved:Z

    .line 53
    :cond_0
    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    iget v1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastX:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    .line 54
    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    iget v1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastY:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    .line 55
    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastX:F

    .line 56
    iput p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->lastY:F

    .line 58
    iget p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 59
    iput p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    goto :goto_0

    .line 60
    :cond_1
    iget p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->w:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->am:Lcom/mrpoid/game/engine/Director;

    iget v0, v0, Lcom/mrpoid/game/engine/Director;->viewW:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->am:Lcom/mrpoid/game/engine/Director;

    iget p1, p1, Lcom/mrpoid/game/engine/Director;->viewW:I

    int-to-float p1, p1

    iget v0, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->w:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->x:F

    .line 63
    :cond_2
    :goto_0
    iget p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 64
    iput p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    goto :goto_1

    .line 65
    :cond_3
    iget p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    iget p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->h:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->am:Lcom/mrpoid/game/engine/Director;

    iget p2, p2, Lcom/mrpoid/game/engine/Director;->viewH:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->am:Lcom/mrpoid/game/engine/Director;

    iget p1, p1, Lcom/mrpoid/game/engine/Director;->viewH:I

    int-to-float p1, p1

    iget p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->h:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->y:F

    .line 68
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/FloatMenuButton;->invalida()V

    return-void
.end method

.method public touchUp(FF)V
    .locals 0

    .line 73
    iget-boolean p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->moved:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 74
    iget p1, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/mrpoid/game/keypad/FloatMenuButton;->clicked(IZ)V

    .line 76
    :cond_0
    iput-boolean p2, p0, Lcom/mrpoid/game/keypad/FloatMenuButton;->moved:Z

    .line 78
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/FloatMenuButton;->invalida()V

    return-void
.end method
