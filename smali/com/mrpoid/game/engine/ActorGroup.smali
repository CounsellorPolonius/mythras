.class public Lcom/mrpoid/game/engine/ActorGroup;
.super Lcom/mrpoid/game/engine/Actor;
.source "ActorGroup.java"


# instance fields
.field private actors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mrpoid/game/engine/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private touchedActor:Lcom/mrpoid/game/engine/Actor;


# direct methods
.method public constructor <init>(Lcom/mrpoid/game/engine/Director;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/mrpoid/game/engine/Actor;-><init>(Lcom/mrpoid/game/engine/Director;)V

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/mrpoid/game/engine/Actor;)V
    .locals 1

    .line 31
    invoke-virtual {p1, p0}, Lcom/mrpoid/game/engine/Actor;->setParent(Lcom/mrpoid/game/engine/ActorGroup;)V

    .line 32
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChild(Lcom/mrpoid/game/engine/Actor;I)V
    .locals 1

    .line 42
    invoke-virtual {p1, p0}, Lcom/mrpoid/game/engine/Actor;->setParent(Lcom/mrpoid/game/engine/ActorGroup;)V

    .line 43
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrpoid/game/engine/Actor;

    .line 101
    iget-boolean v2, v1, Lcom/mrpoid/game/engine/Actor;->isShow:Z

    if-eqz v2, :cond_0

    .line 102
    iget v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->x:F

    iget v3, p0, Lcom/mrpoid/game/engine/ActorGroup;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/mrpoid/game/engine/Actor;->move(FF)V

    .line 103
    iget v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->alpha:I

    invoke-virtual {v1, v2}, Lcom/mrpoid/game/engine/Actor;->setAlpha(I)V

    .line 104
    invoke-virtual {v1, p1, p2}, Lcom/mrpoid/game/engine/Actor;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 105
    iget v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->x:F

    neg-float v2, v2

    iget v3, p0, Lcom/mrpoid/game/engine/ActorGroup;->y:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/mrpoid/game/engine/Actor;->move(FF)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getChild(I)Lcom/mrpoid/game/engine/Actor;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/game/engine/Actor;

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isHit(FF)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :goto_0
    iget-object v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mrpoid/game/engine/Actor;

    .line 160
    iget-boolean v3, v2, Lcom/mrpoid/game/engine/Actor;->isShow:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v2}, Lcom/mrpoid/game/engine/Actor;->getX()F

    move-result v3

    sub-float v3, p1, v3

    .line 163
    invoke-virtual {v2}, Lcom/mrpoid/game/engine/Actor;->getY()F

    move-result v4

    sub-float v4, p2, v4

    .line 165
    invoke-virtual {v2, v3, v4}, Lcom/mrpoid/game/engine/Actor;->isHit(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public removeAllChild()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeChild(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeChild(Lcom/mrpoid/game/engine/Actor;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setZOrder(Lcom/mrpoid/game/engine/Actor;I)V
    .locals 2

    if-ltz p2, :cond_2

    .line 86
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq v0, p2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public touchDown(FF)Z
    .locals 6

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->actors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mrpoid/game/engine/Actor;

    .line 120
    iget-boolean v3, v2, Lcom/mrpoid/game/engine/Actor;->isShow:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {v2}, Lcom/mrpoid/game/engine/Actor;->getX()F

    move-result v3

    sub-float v3, p1, v3

    .line 123
    invoke-virtual {v2}, Lcom/mrpoid/game/engine/Actor;->getY()F

    move-result v4

    sub-float v4, p2, v4

    .line 124
    invoke-virtual {v2, v3, v4}, Lcom/mrpoid/game/engine/Actor;->isHit(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3, v4}, Lcom/mrpoid/game/engine/Actor;->touchDown(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iput-object v2, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, v2, Lcom/mrpoid/game/engine/Actor;->pressed:Z

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public touchMove(FF)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    invoke-virtual {v0}, Lcom/mrpoid/game/engine/Actor;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    .line 138
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    invoke-virtual {v0}, Lcom/mrpoid/game/engine/Actor;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    .line 139
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    invoke-virtual {v0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchMove(FF)V

    :cond_0
    return-void
.end method

.method public touchUp(FF)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    invoke-virtual {v0}, Lcom/mrpoid/game/engine/Actor;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    .line 147
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    invoke-virtual {v0}, Lcom/mrpoid/game/engine/Actor;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    .line 148
    iget-object v0, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    invoke-virtual {v0, p1, p2}, Lcom/mrpoid/game/engine/Actor;->touchUp(FF)V

    .line 149
    iget-object p1, p0, Lcom/mrpoid/game/engine/ActorGroup;->touchedActor:Lcom/mrpoid/game/engine/Actor;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/mrpoid/game/engine/Actor;->pressed:Z

    :cond_0
    return-void
.end method
