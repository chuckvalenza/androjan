.class public Lio/maelstrommobile/memeloader/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field final domain:Ljava/lang/String;

.field grabButton:Landroid/widget/Button;

.field img_id:I

.field memeView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 23
    const-string v0, "http://10.0.2.2/"

    iput-object v0, p0, Lio/maelstrommobile/memeloader/MainActivity;->domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lio/maelstrommobile/memeloader/MainActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lio/maelstrommobile/memeloader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/maelstrommobile/memeloader/MainActivity;->grabButton:Landroid/widget/Button;

    .line 35
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lio/maelstrommobile/memeloader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/maelstrommobile/memeloader/MainActivity;->memeView:Landroid/widget/ImageView;

    .line 38
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 39
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    iget-object v1, p0, Lio/maelstrommobile/memeloader/MainActivity;->grabButton:Landroid/widget/Button;

    new-instance v2, Lio/maelstrommobile/memeloader/MainActivity$1;

    invoke-direct {v2, p0}, Lio/maelstrommobile/memeloader/MainActivity$1;-><init>(Lio/maelstrommobile/memeloader/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
