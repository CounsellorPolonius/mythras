.class public abstract Lcom/mrpoid/game/engine/Actor;
.super Ljava/lang/Object;
.source "Actor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/game/engine/Actor$ClickCallback;
    }
.end annotation


# instance fields
.field protected alpha:I

.field protected am:Lcom/mrpoid/game/engine/Director;

.field protected clickCallback:Lcom/mrpoid/game/engine/Actor$ClickCallback;

.field private dragAble:Z

.field protected h:F

.field public id:I

.field protected isAttached:Z

.field protected isShow:Z

.field private lastX:F

.field private lastY:F

.field protected mParent:Lcom/mrpoid/game/engine/ActorGroup;

.field private moving:Z

.field protected pressed:Z

.field public scale:F

.field public tag:Ljava/lang/Object;

.field protected w:F

.field protected x:F

.field protected y:F


# direct methods
.method public constructor <init>(Lcom/mrpoid/game/engine/Director;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/mrpoid/game/engine/Actor;->dragAble:Z

    .line 39
    iput-object p1, p0, Lcom/mrpoid/game/engine/Actor;->am:Lcom/mrpoid/game/engine/Director;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->isShow:Z

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->h:F

    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->w:F

    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    return-void
.end method


# virtual methods
.method protected clicked(IZ)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->clickCallback:Lcom/mrpoid/game/engine/Actor$ClickCallback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->clickCallback:Lcom/mrpoid/game/engine/Actor$ClickCallback;

    invoke-interface {v0, p1, p2}, Lcom/mrpoid/game/engine/Actor$ClickCallback;->onClick(IZ)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 210
    iget-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->moving:Z

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->alpha:I

    return v0
.end method

.method public getB()F
    .locals 2

    .line 78
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    iget v1, p0, Lcom/mrpoid/game/engine/Actor;->h:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getH()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->h:F

    return v0
.end method

.method public getId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->id:I

    return v0
.end method

.method public getParent()Lcom/mrpoid/game/engine/ActorGroup;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->mParent:Lcom/mrpoid/game/engine/ActorGroup;

    return-object v0
.end method

.method public getPositionInWorld(Lcom/mrpoid/game/engine/Position;)Lcom/mrpoid/game/engine/Position;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->am:Lcom/mrpoid/game/engine/Director;

    invoke-virtual {v0, p0, p1}, Lcom/mrpoid/game/engine/Director;->getPositionInWorld(Lcom/mrpoid/game/engine/Actor;Lcom/mrpoid/game/engine/Position;)Lcom/mrpoid/game/engine/Position;

    move-result-object p1

    return-object p1
.end method

.method public getR()F
    .locals 2

    .line 74
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    iget v1, p0, Lcom/mrpoid/game/engine/Actor;->w:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method protected getViewPortH()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->am:Lcom/mrpoid/game/engine/Director;

    invoke-virtual {v0}, Lcom/mrpoid/game/engine/Director;->getViewH()I

    move-result v0

    return v0
.end method

.method protected getViewPortW()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->am:Lcom/mrpoid/game/engine/Director;

    invoke-virtual {v0}, Lcom/mrpoid/game/engine/Director;->getViewW()I

    move-result v0

    return v0
.end method

.method public getW()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->w:F

    return v0
.end method

.method protected getWroldH()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getWroldW()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getX()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    return v0
.end method

.method public invalida()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/mrpoid/game/engine/Actor;->am:Lcom/mrpoid/game/engine/Director;

    invoke-virtual {v0, p0}, Lcom/mrpoid/game/engine/Director;->invalida(Lcom/mrpoid/game/engine/Actor;)V

    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/mrpoid/game/engine/Actor;->isAttached:Z

    return v0
.end method

.method public isDragAble()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/mrpoid/game/engine/Actor;->dragAble:Z

    return v0
.end method

.method public isHit(FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 135
    iget v1, p0, Lcom/mrpoid/game/engine/Actor;->w:F

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    cmpg-float p1, p2, v0

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/mrpoid/game/engine/Actor;->h:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isShow()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/mrpoid/game/engine/Actor;->isShow:Z

    return v0
.end method

.method public move(FF)V
    .locals 1

    .line 126
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    .line 127
    iget p1, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->alpha:I

    return-void
.end method

.method public setClickCallback(Lcom/mrpoid/game/engine/Actor$ClickCallback;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mrpoid/game/engine/Actor;->clickCallback:Lcom/mrpoid/game/engine/Actor$ClickCallback;

    return-void
.end method

.method public setDragAble(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->dragAble:Z

    return-void
.end method

.method public setH(F)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->h:F

    return-void
.end method

.method protected setParent(Lcom/mrpoid/game/engine/ActorGroup;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/mrpoid/game/engine/Actor;->mParent:Lcom/mrpoid/game/engine/ActorGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    iput-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->isAttached:Z

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    .line 122
    iput p2, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->w:F

    .line 117
    iput p2, p0, Lcom/mrpoid/game/engine/Actor;->h:F

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/mrpoid/game/engine/Actor;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->isShow:Z

    return-void
.end method

.method public setW(F)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->w:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    return-void
.end method

.method public touchDown(FF)Z
    .locals 2

    .line 219
    iget-boolean v0, p0, Lcom/mrpoid/game/engine/Actor;->dragAble:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    iput-boolean v1, p0, Lcom/mrpoid/game/engine/Actor;->moving:Z

    .line 221
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->lastX:F

    .line 222
    iget p1, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/mrpoid/game/engine/Actor;->lastY:F

    .line 224
    invoke-virtual {p0}, Lcom/mrpoid/game/engine/Actor;->invalida()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public touchMove(FF)V
    .locals 2

    .line 232
    iget-boolean v0, p0, Lcom/mrpoid/game/engine/Actor;->dragAble:Z

    if-eqz v0, :cond_0

    .line 233
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    add-float/2addr p1, v0

    .line 234
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    add-float/2addr p2, v0

    .line 236
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    iget v1, p0, Lcom/mrpoid/game/engine/Actor;->lastX:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/game/engine/Actor;->x:F

    .line 237
    iget v0, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    iget v1, p0, Lcom/mrpoid/game/engine/Actor;->lastY:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mrpoid/game/engine/Actor;->y:F

    .line 238
    iput p1, p0, Lcom/mrpoid/game/engine/Actor;->lastX:F

    .line 239
    iput p2, p0, Lcom/mrpoid/game/engine/Actor;->lastY:F

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->moving:Z

    .line 242
    invoke-virtual {p0}, Lcom/mrpoid/game/engine/Actor;->invalida()V

    :cond_0
    return-void
.end method

.method public touchUp(FF)V
    .locals 0

    .line 247
    iget-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->dragAble:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/mrpoid/game/engine/Actor;->moving:Z

    .line 252
    invoke-virtual {p0}, Lcom/mrpoid/game/engine/Actor;->invalida()V

    :cond_0
    return-void
.end method
