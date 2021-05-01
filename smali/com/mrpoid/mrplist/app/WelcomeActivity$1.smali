.class Lcom/mrpoid/mrplist/app/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/app/WelcomeActivity;->go()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/app/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/app/WelcomeActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mrpoid/mrplist/app/WelcomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/WelcomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/WelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mrpoid/mrplist/app/WelcomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/WelcomeActivity;

    const-class v3, Lcom/mrpoid/mrplist/app/HomeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/WelcomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/WelcomeActivity;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/app/WelcomeActivity;->finish()V

    return-void
.end method
