.class Lcom/mrpoid/app/EmulatorActivity$4;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->showToolListDialog()V
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

    .line 553
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$4;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 557
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$4;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {p1, p2}, Lcom/mrpoid/app/EmulatorActivity;->access$200(Lcom/mrpoid/app/EmulatorActivity;I)V

    return-void
.end method
