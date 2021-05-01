.class public Lcom/mrpoid/game/keysprite/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# instance fields
.field public time:I

.field public title:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mrpoid/game/keysprite/Sprite;->title:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/mrpoid/game/keysprite/Sprite;->value:I

    .line 12
    iput p3, p0, Lcom/mrpoid/game/keysprite/Sprite;->time:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6309\u952e "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/mrpoid/game/keysprite/Sprite;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u6301\u7eed "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/mrpoid/game/keysprite/Sprite;->time:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
