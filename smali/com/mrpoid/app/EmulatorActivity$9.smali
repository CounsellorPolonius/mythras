.class Lcom/mrpoid/app/EmulatorActivity$9;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/mrpoid/game/keysprite/OnChooseLitener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->showKeySpriteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/app/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/mrpoid/app/EmulatorActivity;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$9;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onChoose(Ljava/lang/Object;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$9;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    check-cast p1, Lcom/mrpoid/game/keysprite/KeySprite;

    invoke-static {v0, p1}, Lcom/mrpoid/app/EmulatorActivity;->access$500(Lcom/mrpoid/app/EmulatorActivity;Lcom/mrpoid/game/keysprite/KeySprite;)V

    return-void
.end method
