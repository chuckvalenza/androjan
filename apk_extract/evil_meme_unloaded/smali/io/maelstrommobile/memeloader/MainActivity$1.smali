.class Lio/maelstrommobile/memeloader/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/maelstrommobile/memeloader/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/maelstrommobile/memeloader/MainActivity;


# direct methods
.method constructor <init>(Lio/maelstrommobile/memeloader/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/maelstrommobile/memeloader/MainActivity;

    .line 41
    iput-object p1, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 45
    const-string v0, ".png"

    iget-object v1, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    iget v1, v1, Lio/maelstrommobile/memeloader/MainActivity;->img_id:I

    .line 46
    .local v1, "old_id":I
    :goto_0
    iget-object v2, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    iget v2, v2, Lio/maelstrommobile/memeloader/MainActivity;->img_id:I

    if-ne v2, v1, :cond_0

    .line 47
    iget-object v2, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Lio/maelstrommobile/memeloader/MainActivity;->img_id:I

    goto :goto_0

    .line 51
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://10.0.2.2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    iget v4, v4, Lio/maelstrommobile/memeloader/MainActivity;->img_id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 53
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 54
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 55
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 56
    .local v4, "input_stream":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 57
    .local v5, "img":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    iget-object v6, v6, Lio/maelstrommobile/memeloader/MainActivity;->memeView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "input_stream":Ljava/io/InputStream;
    .end local v5    # "img":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO! http://10.0.2.2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    iget v4, v4, Lio/maelstrommobile/memeloader/MainActivity;->img_id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IOException"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 59
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed! http://10.0.2.2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/maelstrommobile/memeloader/MainActivity$1;->this$0:Lio/maelstrommobile/memeloader/MainActivity;

    iget v4, v4, Lio/maelstrommobile/memeloader/MainActivity;->img_id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MalformedURLException"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 64
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_1
    nop

    .line 65
    :goto_2
    return-void
.end method
