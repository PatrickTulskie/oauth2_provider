module OAuth2
  module Provider
    class OAuthClientsController < ApplicationController
      # GET /oauth_clients
      # GET /oauth_clients.xml
      def index
        @oauth_clients = OAuthClient.all

        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @oauth_clients }
        end
      end

      # GET /oauth_clients/1
      # GET /oauth_clients/1.xml
      def show
        @oauth_client = OAuthClient.find(params[:id])

        respond_to do |format|
          format.html # show.html.erb
          format.xml  { render :xml => @oauth_client }
        end
      end

      # GET /oauth_clients/new
      # GET /oauth_clients/new.xml
      def new
        @oauth_client = OAuthClient.new

        respond_to do |format|
          format.html # new.html.erb
          format.xml  { render :xml => @oauth_client }
        end
      end

      # GET /oauth_clients/1/edit
      def edit
        @oauth_client = OAuthClient.find(params[:id])
      end

      # POST /oauth_clients
      # POST /oauth_clients.xml
      def create
        @oauth_client = OAuthClient.new(params[:o_auth_client])

        respond_to do |format|
          if @oauth_client.save
            flash[:notice] = 'OAuthClient was successfully created.'
            format.html { redirect_to(@oauth_client) }
            format.xml  { render :xml => @oauth_client, :status => :created, :location => @oauth_client }
          else
            format.html { render :action => "new" }
            format.xml  { render :xml => @oauth_client.errors, :status => :unprocessable_entity }
          end
        end
      end

      # PUT /oauth_clients/1
      # PUT /oauth_clients/1.xml
      def update
        @oauth_client = OAuthClient.find(params[:id])

        respond_to do |format|
          if @oauth_client.update_attributes(params[:o_auth_client])
            flash[:notice] = 'OAuthClient was successfully updated.'
            format.html { redirect_to(@oauth_client) }
            format.xml  { head :ok }
          else
            format.html { render :action => "edit" }
            format.xml  { render :xml => @oauth_client.errors, :status => :unprocessable_entity }
          end
        end
      end

      # DELETE /oauth_clients/1
      # DELETE /oauth_clients/1.xml
      def destroy
        @oauth_client = OAuthClient.find(params[:id])
        @oauth_client.destroy

        respond_to do |format|
          format.html { redirect_to(o_auth_clients_url) }
          format.xml  { head :ok }
        end
      end
    end
  end
end