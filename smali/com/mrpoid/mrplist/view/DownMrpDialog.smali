.class public Lcom/mrpoid/mrplist/view/DownMrpDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DownMrpDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/mrpoid/mrplist/moduls/Store$MrpItem;",
            ">;"
        }
    .end annotation
.end field

.field app:Lcom/mrpoid/mrplist/moduls/Store$AppItem;

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$MrpItem;",
            ">;"
        }
    .end annotation
.end field

.field desc:Landroid/widget/TextView;

.field hd:Landroid/os/Handler;

.field isDowning:Z

.field listView:Landroid/widget/ListView;

.field progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static down(Landroid/support/v4/app/FragmentManager;Lcom/mrpoid/mrplist/moduls/Store$AppItem;)V
    .locals 1

    const-string v0, "dlg-down"

    .line 256
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;

    invoke-direct {v0}, Lcom/mrpoid/mrplist/view/DownMrpDialog;-><init>()V

    .line 259
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->setApp(Lcom/mrpoid/mrplist/moduls/Store$AppItem;)V

    const-string p1, "dlg-down"

    .line 260
    invoke-virtual {v0, p0, p1}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->desc:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->progressBar:Landroid/widget/ProgressBar;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method loadVer()V
    .locals 2

    .line 193
    invoke-static {}, Lcom/edroid/common/utils/WorkThread;->getDefault()Lcom/edroid/common/utils/WorkThread;

    move-result-object v0

    new-instance v1, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;

    invoke-direct {v1, p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;-><init>(Lcom/mrpoid/mrplist/view/DownMrpDialog;)V

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/WorkThread;->postTask(Lcom/edroid/common/utils/WorkThread$ITask;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 210
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->hd:Landroid/os/Handler;

    .line 212
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0b0041

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 214
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->app:Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    iget-object v2, v2, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 216
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0d003f

    .line 217
    invoke-virtual {v1, v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->data:Ljava/util/List;

    const v1, 0x7f0900f4

    .line 222
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->desc:Landroid/widget/TextView;

    const v1, 0x7f0900f6

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900fb

    .line 224
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900bb

    .line 225
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 227
    iget-object v3, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->desc:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->app:Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    iget-object v4, v4, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->app:Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    iget v4, v4, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->appid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->app:Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    iget-object v1, v1, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->vendor:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->desc:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    const v1, 0x102000a

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->listView:Landroid/widget/ListView;

    .line 234
    new-instance p1, Lcom/mrpoid/mrplist/view/DownMrpDialog$2;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v6, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->data:Ljava/util/List;

    const v4, 0x7f0b0046

    const v5, 0x7f090120

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mrpoid/mrplist/view/DownMrpDialog$2;-><init>(Lcom/mrpoid/mrplist/view/DownMrpDialog;Landroid/content/Context;IILjava/util/List;)V

    iput-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->adapter:Landroid/widget/ArrayAdapter;

    .line 247
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->loadVer()V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 180
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    .line 181
    iget-boolean p2, p1, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->isDown:Z

    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object p1, p1, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->path:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-boolean p2, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->isDowning:Z

    if-nez p2, :cond_1

    .line 185
    new-instance p2, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;

    invoke-direct {p2, p0, p1}, Lcom/mrpoid/mrplist/view/DownMrpDialog$Downloader;-><init>(Lcom/mrpoid/mrplist/view/DownMrpDialog;Lcom/mrpoid/mrplist/moduls/Store$MrpItem;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/view/DownMrpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u6b63\u5728\u4e0b\u8f7d\u8bf7\u7a0d\u540e\u3002\u3002\u3002"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public setApp(Lcom/mrpoid/mrplist/moduls/Store$AppItem;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->app:Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    return-void
.end method
