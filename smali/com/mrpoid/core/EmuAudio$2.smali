.class Lcom/mrpoid/core/EmuAudio$2;
.super Ljava/lang/Object;
.source "EmuAudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/core/EmuAudio;->N2J_stopSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/core/EmuAudio;


# direct methods
.method constructor <init>(Lcom/mrpoid/core/EmuAudio;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/mrpoid/core/EmuAudio$2;->this$0:Lcom/mrpoid/core/EmuAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio$2;->this$0:Lcom/mrpoid/core/EmuAudio;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuAudio;->_stopSound()V

    return-void
.end method
