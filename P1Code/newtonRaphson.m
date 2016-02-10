function [data] = newtonRaphson(data)
    N = 100;
    error = 10;
    while( error > 1.e-9 && N>0 )
        % Récuperation de h et Jv dépendant de chaque itération
        [ h, Jac] = QuickRManuel_cons_hJ(data);
        % Calcule v(k+1) = v(k) - (inv(Jv)*h )
        qv = data.qv;
        Jv = Jac(:,qv);
        data.q(data.qv) = data.q(data.qv) - inv(Jv)*h;
        
        
        error = abs(norm(h))
        N = N-1;
    end
end

