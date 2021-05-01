.class final Lcom/mrpoid/app/EmulatorActivity$14;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/app/EmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 824
    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2, v0}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    return-void
.end method
