.class public Lcom/mrpoid/game/engine/Position;
.super Ljava/lang/Object;
.source "Position.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/mrpoid/game/engine/Position;->set(FF)V

    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 1

    .line 22
    iget v0, p0, Lcom/mrpoid/game/engine/Position;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/mrpoid/game/engine/Position;->x:F

    .line 23
    iget p1, p0, Lcom/mrpoid/game/engine/Position;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/mrpoid/game/engine/Position;->y:F

    return-void
.end method

.method public set(FF)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/mrpoid/game/engine/Position;->x:F

    .line 18
    iput p2, p0, Lcom/mrpoid/game/engine/Position;->y:F

    return-void
.end method

.method public sub(FF)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/mrpoid/game/engine/Position;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/mrpoid/game/engine/Position;->x:F

    .line 28
    iget p1, p0, Lcom/mrpoid/game/engine/Position;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/mrpoid/game/engine/Position;->y:F

    return-void
.end method
