.class Lcom/mrpoid/app/EmulatorActivity$2;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->initWindow()V
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

    .line 313
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$2;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3

    .line 317
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiVisibilityChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$2;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$2;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {v0}, Lcom/mrpoid/app/EmulatorActivity;->access$000(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/EmuConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->fullScreen:Z

    invoke-virtual {p1, v0}, Lcom/mrpoid/app/EmulatorActivity;->setFullScreen(Z)V

    :cond_0
    return-void
.end method
