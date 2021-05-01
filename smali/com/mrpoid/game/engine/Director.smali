.class public abstract Lcom/mrpoid/game/engine/Director;
.super Ljava/lang/Object;
.source "Director.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Director"


# instance fields
.field protected alpha:I

.field private rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

.field private touchDowned:Z

.field public viewH:I

.field public viewW:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/mrpoid/game/engine/Director;->touchDowned:Z

    .line 27
    new-instance v0, Lcom/mrpoid/game/engine/ActorGroup;

    invoke-direct {v0, p0}, Lcom/mrpoid/game/engine/ActorGroup;-><init>(Lcom/mrpoid/game/engine/Director;)V

    iput-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/mrpoid/game/engine/Actor;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v0, p1}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;)V

    return-void
.end method

.method public addChild(Lcom/mrpoid/game/engine/Actor;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v0, p1, p2}, Lcom/mrpoid/game/engine/ActorGroup;->addChild(Lcom/mrpoid/game/engine/Actor;I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget-boolean p1, p0, Lcom/mrpoid/game/engine/Director;->touchDowned:Z

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {p1, v0, v1}, Lcom/mrpoid/game/engine/ActorGroup;->touchMove(FF)V

    return v3

    .line 122
    :pswitch_1
    iget-boolean p1, p0, Lcom/mrpoid/game/engine/Director;->touchDowned:Z

    if-eqz p1, :cond_0

    .line 123
    iput-boolean v2, p0, Lcom/mrpoid/game/engine/Director;->touchDowned:Z

    .line 124
    iget-object p1, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {p1, v0, v1}, Lcom/mrpoid/game/engine/ActorGroup;->touchUp(FF)V

    return v3

    .line 106
    :pswitch_2
    iget-object p1, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {p1, v0, v1}, Lcom/mrpoid/game/engine/ActorGroup;->touchDown(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iput-boolean v3, p0, Lcom/mrpoid/game/engine/Director;->touchDowned:Z

    return v3

    :cond_0
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    iget v1, p0, Lcom/mrpoid/game/engine/Director;->alpha:I

    invoke-virtual {v0, v1}, Lcom/mrpoid/game/engine/ActorGroup;->setAlpha(I)V

    .line 136
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v0, p1, p2}, Lcom/mrpoid/game/engine/ActorGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mrpoid/game/engine/Director;->alpha:I

    return v0
.end method

.method public getPositionInWorld(Lcom/mrpoid/game/engine/Actor;Lcom/mrpoid/game/engine/Position;)Lcom/mrpoid/game/engine/Position;
    .locals 2

    .line 89
    iget v0, p1, Lcom/mrpoid/game/engine/Actor;->x:F

    iget v1, p1, Lcom/mrpoid/game/engine/Actor;->y:F

    invoke-virtual {p2, v0, v1}, Lcom/mrpoid/game/engine/Position;->set(FF)V

    .line 90
    invoke-virtual {p1}, Lcom/mrpoid/game/engine/Actor;->getParent()Lcom/mrpoid/game/engine/ActorGroup;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 92
    iget v0, p1, Lcom/mrpoid/game/engine/ActorGroup;->x:F

    iget v1, p1, Lcom/mrpoid/game/engine/ActorGroup;->y:F

    invoke-virtual {p2, v0, v1}, Lcom/mrpoid/game/engine/Position;->add(FF)V

    .line 93
    invoke-virtual {p1}, Lcom/mrpoid/game/engine/ActorGroup;->getParent()Lcom/mrpoid/game/engine/ActorGroup;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getRoot()Lcom/mrpoid/game/engine/ActorGroup;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    return-object v0
.end method

.method public getViewH()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/mrpoid/game/engine/Director;->viewH:I

    return v0
.end method

.method public getViewW()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/mrpoid/game/engine/Director;->viewW:I

    return v0
.end method

.method public abstract invalida(Lcom/mrpoid/game/engine/Actor;)V
.end method

.method public onViewSizeChanged(II)V
    .locals 3

    const-string v0, "Director"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput p1, p0, Lcom/mrpoid/game/engine/Director;->viewW:I

    .line 33
    iput p2, p0, Lcom/mrpoid/game/engine/Director;->viewH:I

    return-void
.end method

.method public removeAllChild()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v0}, Lcom/mrpoid/game/engine/ActorGroup;->removeAllChild()V

    return-void
.end method

.method public removeChild(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v0, p1}, Lcom/mrpoid/game/engine/ActorGroup;->removeChild(I)V

    return-void
.end method

.method public removeChild(Lcom/mrpoid/game/engine/Actor;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mrpoid/game/engine/Director;->rootGroup:Lcom/mrpoid/game/engine/ActorGroup;

    invoke-virtual {v0, p1}, Lcom/mrpoid/game/engine/ActorGroup;->removeChild(Lcom/mrpoid/game/engine/Actor;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mrpoid/game/engine/Director;->alpha:I

    return-void
.end method
