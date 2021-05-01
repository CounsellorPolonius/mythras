.class Lcom/mrpoid/core/EmuAudio$1;
.super Ljava/lang/Object;
.source "EmuAudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/core/EmuAudio;->N2J_playSound(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/core/EmuAudio;

.field final synthetic val$loop:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mrpoid/core/EmuAudio;Ljava/lang/String;I)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/mrpoid/core/EmuAudio$1;->this$0:Lcom/mrpoid/core/EmuAudio;

    iput-object p2, p0, Lcom/mrpoid/core/EmuAudio$1;->val$path:Ljava/lang/String;

    iput p3, p0, Lcom/mrpoid/core/EmuAudio$1;->val$loop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/mrpoid/core/EmuAudio$1;->this$0:Lcom/mrpoid/core/EmuAudio;

    iget-object v1, p0, Lcom/mrpoid/core/EmuAudio$1;->val$path:Ljava/lang/String;

    iget v2, p0, Lcom/mrpoid/core/EmuAudio$1;->val$loop:I

    invoke-virtual {v0, v1, v2}, Lcom/mrpoid/core/EmuAudio;->_playSound(Ljava/lang/String;I)V

    return-void
.end method
